/**   
 * 
 * 项目名称:	[test_on_line]
 * 包:		[com.fjnu.sjx.service]
 * 类名称:	[PapersService]
 * 类描述:	[一句话描述该类的功能]
 * 创建人:	[sjx]
 * 创建时间:	[2017年2月6日 下午3:39:06]
 * 修改人:	[sjx]
 * 修改时间:	[2017年2月6日 下午3:39:06]
 * 修改备注:	[说明本次修改内容]
 * 版本:		[v1.0]
 *    
 */

package com.fjnu.sjx.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.util.HtmlUtils;
import org.sql2o.Sql2o;

import com.fjnu.sjx.util.GlobalUtil;
import com.fjnu.sjx.util.JdbcUtil;
import com.fjnu.sjx.util.LoggerUtil;

@Service
@Transactional
public class PapersService {

	private Logger logger = Logger.getLogger(PapersService.class);

	@Autowired
	private JdbcTemplate jdbcTemplate = null;
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate = null;
	@Autowired
	private Sql2o sql2o = null;

	/**
	 * 获取试卷列表
	 * 
	 * @param paramsMap
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> getPapersList(Map<String, Object> paramsMap)
			throws Exception {

		String role = GlobalUtil.NullToStr(paramsMap.get("role"));
		String queryParam = GlobalUtil.NullToStr(paramsMap.get("query"));
		String subject_name = GlobalUtil.NullToStr(paramsMap
				.get("subject_name"));

		String sort = GlobalUtil.NullToStr(paramsMap.get("sort"));
		String dir = GlobalUtil.NullToStr(paramsMap.get("dir"));

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	a.id, ");
		query.append(" 	a.papers_name, ");
		query.append(" 	b.dic_name, ");
		query.append(" 	b.dic_value, ");
		query.append(" 	a.college, ");
		query.append(" 	a.user_id, ");
		query.append(" 	c.truename ");
		query.append(" FROM ");
		query.append(" 	t_sys_papers a ");
		query.append(" LEFT JOIN t_sys_dic b ON a.dic_value = b.dic_value ");
		query.append(" LEFT JOIN t_sys_user c ON a.user_id = c.id ");
		query.append(" WHERE 1 = 1 ");

		if (StringUtils.isNotEmpty(role) && !"admin".equalsIgnoreCase(role)) {
			query.append(" AND a.user_id = :user_id ");
		}

		if (StringUtils.isNotEmpty(queryParam)) {
			query.append(" AND (");
			query.append(" a.papers_name like :query ");
			query.append(" OR c.truename like :query ");
			query.append(" OR a.college like :query ");
			query.append(" ) ");
		}

		if (StringUtils.isNotEmpty(subject_name) && !"-1".equals(subject_name)) {
			query.append(" AND b.dic_value = :subject_name ");
		}

		query.append(" ORDER BY ");
		query.append(" 	a.").append(sort).append(" ").append(dir).append(" ");
		query.append(" LIMIT ");
		query.append(" 	:start,:limit ");

		LoggerUtil.info("[PapersService]获取卷子列表", query, paramsMap);

		return namedParameterJdbcTemplate.queryForList(query.toString(),
				paramsMap);
	}

	/**
	 * 
	 * 获取记录条数
	 * 
	 * @param paramsMap
	 * @return
	 * @throws Exception
	 */
	public int getPapersListCount(Map<String, Object> paramsMap)
			throws Exception {

		String role = GlobalUtil.NullToStr(paramsMap.get("role"));
		String queryParam = GlobalUtil.NullToStr(paramsMap.get("query"));
		String subject_name = GlobalUtil.NullToStr(paramsMap
				.get("subject_name"));

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	a.id, ");
		query.append(" 	a.papers_name, ");
		query.append(" 	b.dic_name, ");
		query.append(" 	b.dic_value, ");
		query.append(" 	a.college, ");
		query.append(" 	a.user_id, ");
		query.append(" 	c.truename ");
		query.append(" FROM ");
		query.append(" 	t_sys_papers a ");
		query.append(" LEFT JOIN t_sys_dic b ON a.dic_value = b.dic_value ");
		query.append(" LEFT JOIN t_sys_user c ON a.user_id = c.id ");
		query.append(" WHERE 1 = 1 ");

		if (StringUtils.isNotEmpty(role) && !"admin".equalsIgnoreCase(role)) {
			query.append(" AND a.user_id = :user_id ");
		}

		if (StringUtils.isNotEmpty(queryParam)) {
			query.append(" AND (");
			query.append(" a.papers_name like :query ");
			query.append(" OR c.truename like :query ");
			query.append(" OR a.college like :query ");
			query.append(" ) ");
		}

		if (StringUtils.isNotEmpty(subject_name) && !"-1".equals(subject_name)) {
			query.append(" AND b.dic_value = :subject_name ");
		}

		LoggerUtil.info("[PapersService]获取卷子列表-条数", query, paramsMap);

		return JdbcUtil.getQueryByValue(query, paramsMap);
	}

	/**
	 * 获取试卷的题目的JSON
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> getPaperQuestionsList(
			Map<String, Object> params) throws Exception {

		String papers_id = GlobalUtil.NullToStr(params.get("papers_id"));

		String sort = GlobalUtil.NullToStr(params.get("sort"));
		String dir = GlobalUtil.NullToStr(params.get("dir"));

		String queryLike = GlobalUtil.NullToStr(params.get("query"));
		String knowledgeID = GlobalUtil.NullToStr(params.get("knowledge"));
		String subjectID = GlobalUtil.NullToStr(params.get("subject_name"));

		String isShowThisPapersQuestions = GlobalUtil.NullToStr(params
				.get("isShowThisPapersQuestions"));

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	a.id, ");
		query.append(" 	a.subject_name, ");
		query.append(" 	a.knowledge, ");
		query.append(" 	a.source_name, ");
		query.append(" 	a.question, ");
		query.append(" 	a.answer, ");
		query.append(" 	a.resolve ");
		query.append(" FROM ");
		query.append(" 	t_sys_questions a ");
		query.append(" 	LEFT JOIN t_sys_dic b ON a.subject_name = b.dic_name ");
		query.append(" 	LEFT JOIN t_sys_dic c ON a.knowledge = c.dic_name ");
		query.append(" WHERE ");
		query.append(" 	1 = 1 ");

		if (StringUtils.isNotEmpty(papers_id)) {
			if ("true".equalsIgnoreCase(isShowThisPapersQuestions)) {
				query.append(" AND a.id IN ( ");
			} else {
				query.append(" AND a.id NOT IN ( ");
			}
			query.append(" 	SELECT ");
			query.append(" 		questions_id ");
			query.append(" 	FROM ");
			query.append(" 		t_sys_papers_questions ");
			query.append(" 	WHERE ");
			query.append(" 		papers_id = :papers_id ");
			query.append(" ) ");
		}

		if (!"%%".equalsIgnoreCase(queryLike)) {
			query.append(" AND ( ");
			query.append(" 	a.source_name LIKE :query ");
			query.append(" 	OR a.question LIKE :query ");
			query.append(" 	OR a.resolve LIKE :query ");
			query.append(" ) ");
		}
		if (StringUtils.isNotEmpty(knowledgeID) && !"-1".equals(knowledgeID)) {
			query.append(" AND c.dic_value = :knowledge ");
		}

		if (StringUtils.isNotEmpty(subjectID) && !"-1".equals(subjectID)) {
			query.append(" AND b.dic_value = :subject_name ");
		}

		query.append(" ORDER BY ");
		query.append(" 	a.").append(sort).append(" ").append(dir).append(" ");
		query.append(" LIMIT ");
		query.append(" 	:start,:limit ");

		LoggerUtil.info("[PapersService]获取试题列表", query, params);

		return namedParameterJdbcTemplate
				.queryForList(query.toString(), params);
	}

	/**
	 * 获取试卷的题目的记录数
	 * 
	 * @param params
	 * @return
	 * @throws Exception
	 */
	public int getPaperQuestionsListCount(Map<String, Object> params)
			throws Exception {

		String papers_id = GlobalUtil.NullToStr(params.get("papers_id"));

		String sort = GlobalUtil.NullToStr(params.get("sort"));
		String dir = GlobalUtil.NullToStr(params.get("dir"));

		String queryLike = GlobalUtil.NullToStr(params.get("query"));
		String knowledgeID = GlobalUtil.NullToStr(params.get("knowledge"));
		String subjectID = GlobalUtil.NullToStr(params.get("subject_name"));

		String isShowThisPapersQuestions = GlobalUtil.NullToStr(params
				.get("isShowThisPapersQuestions"));

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	count(*) as totalCount ");
		query.append(" FROM ");
		query.append(" 	t_sys_questions a ");
		query.append(" 	LEFT JOIN t_sys_dic b ON a.subject_name = b.dic_name ");
		query.append(" 	LEFT JOIN t_sys_dic c ON a.knowledge = c.dic_name ");
		query.append(" WHERE ");
		query.append(" 	1 = 1 ");

		if (StringUtils.isNotEmpty(papers_id)) {
			if ("true".equalsIgnoreCase(isShowThisPapersQuestions)) {
				query.append(" AND a.id IN ( ");
			} else {
				query.append(" AND a.id NOT IN ( ");
			}
			query.append(" 	SELECT ");
			query.append(" 		questions_id ");
			query.append(" 	FROM ");
			query.append(" 		t_sys_papers_questions ");
			query.append(" 	WHERE ");
			query.append(" 		papers_id = :papers_id ");
			query.append(" ) ");
		}

		if (!"%%".equalsIgnoreCase(queryLike)) {
			query.append(" AND ( ");
			query.append(" 	a.source_name LIKE :query ");
			query.append(" 	OR a.question LIKE :query ");
			query.append(" 	OR a.resolve LIKE :query ");
			query.append(" ) ");
		}
		if (StringUtils.isNotEmpty(knowledgeID) && !"-1".equals(knowledgeID)) {
			query.append(" AND c.dic_value = :knowledge ");
		}

		if (StringUtils.isNotEmpty(subjectID) && !"-1".equals(subjectID)) {
			query.append(" AND b.dic_value = :subject_name ");
		}

		LoggerUtil.info("[PapersService]获取试题列表-记录数", query, params);

		return JdbcUtil.getQueryByValue(query, params);
	}

	/**
	 * 删除试卷下的试题
	 * 
	 * @param params
	 * @return
	 * @throws Exception
	 */
	public boolean delPapersQuestions(Map<String, String> params)
			throws Exception {

		String ids = params.get("ids");
		String papers_id = params.get("papers_id");

		StringBuffer query = new StringBuffer();

		query.append(" DELETE ");
		query.append(" FROM ");
		query.append(" 	t_sys_papers_questions ");
		query.append(" WHERE ");
		query.append(" 	papers_id = '").append(papers_id).append("' ");
		query.append(" AND questions_id IN (").append(ids).append(") ");

		logger.info("[PapersService]删除卷子下的试题：" + query.toString());

		int count = jdbcTemplate.update(query.toString());
		return count > 0 ? true : false;
	}

	/**
	 * 添加试题至卷子
	 * 
	 * @param params
	 * @return
	 * @throws Exception
	 */
	public boolean addQuestionsToPapers(Map<String, String> params)
			throws Exception {

		String ids = params.get("ids");
		String papers_id = params.get("papers_id");

		StringBuffer query = new StringBuffer();

		query.append(" INSERT INTO t_sys_papers_questions (papers_id, questions_id) SELECT ");
		query.append(" 	'").append(papers_id).append("', ");
		query.append(" 	a.id ");
		query.append(" FROM ");
		query.append(" 	t_sys_questions a ");
		query.append(" WHERE ");
		query.append(" 	id IN (").append(ids).append(" ) ");

		logger.info("[PapersService]添加试题至卷子：" + query.toString());

		int count = jdbcTemplate.update(query.toString());
		return count > 0 ? true : false;
	}

	/**
	 * 添加试卷
	 * 
	 * @param paramsMap
	 * @return
	 * @throws Exception
	 */
	public boolean addPapers(HashMap<String, String> paramsMap)
			throws Exception {

		String papers_name = paramsMap.get("papers_name");
		String papers_ppl = paramsMap.get("papers_ppl");
		String college = paramsMap.get("college");
		String papers_dic_value = paramsMap.get("papers_dic_value");

		StringBuffer query = new StringBuffer();

		query.append(" INSERT INTO t_sys_papers ( ");
		query.append(" papers_name, ");
		query.append(" user_id, ");
		query.append(" dic_value, ");
		query.append(" college ");
		query.append(" ) ");
		query.append(" VALUES ");
		query.append(" ( ");
		query.append(" '").append(papers_name).append("', ");
		query.append(" '").append(papers_ppl).append("', ");
		query.append(" '").append(papers_dic_value).append("', ");
		query.append(" '").append(college).append("' ");
		query.append(" ) ");

		logger.info("[PapersService]添加试卷：" + query.toString());

		int count = jdbcTemplate.update(query.toString());
		return count > 0 ? true : false;
	}

	/**
	 * 
	 * 删除试卷
	 * 
	 * @param ids
	 * @return
	 * @throws Exception
	 */
	public boolean delPapersQuestions(String ids) throws Exception {

		StringBuffer query = new StringBuffer();
		List<String> queryArray = new ArrayList<String>();

		// 删除卷子下的试题
		query.append(" DELETE ");
		query.append(" FROM ");
		query.append(" 	t_sys_papers_questions ");
		query.append(" WHERE ");
		query.append(" 	papers_id IN ( ").append(ids).append(") ");
		queryArray.add(query.toString());

		logger.info("[PapersService]删除卷子下的试题：" + query.toString());

		// 删除卷子
		query.setLength(0);
		query.append(" DELETE ");
		query.append(" FROM ");
		query.append(" 	t_sys_papers ");
		query.append(" WHERE ");
		query.append(" 	id IN ( ").append(ids).append(" ) ");
		queryArray.add(query.toString());

		logger.info("[PapersService]删除卷子：" + query.toString());

		int count[] = jdbcTemplate.batchUpdate(queryArray
				.toArray(new String[queryArray.size()]));

		boolean flag = true;
		for (int e : count) {
			if (e < 0) {
				flag = false;
				break;
			}
		}

		return flag;
	}

	/**
	 * 获取卷子内容
	 * 
	 * @param papers_id
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> getPapersList(String papers_id)
			throws Exception {

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	a.id, ");
		query.append(" 	a.subject_name, ");
		query.append(" 	a.knowledge, ");
		query.append(" 	a.source_name, ");
		query.append(" 	a.question, ");
		query.append(" 	a.answer, ");
		query.append(" 	a.resolve ");
		query.append(" FROM ");
		query.append(" 	t_sys_questions a ");
		query.append(" 	LEFT JOIN t_sys_dic b ON a.subject_name = b.dic_name ");
		query.append(" 	LEFT JOIN t_sys_dic c ON a.knowledge = c.dic_name ");
		query.append(" WHERE ");
		query.append(" 	1 = 1 ");

		if (StringUtils.isNotEmpty(papers_id)) {
			query.append(" AND a.id IN ( ");
			query.append(" 	SELECT ");
			query.append(" 		questions_id ");
			query.append(" 	FROM ");
			query.append(" 		t_sys_papers_questions ");
			query.append(" 	WHERE ");
			query.append(" 		papers_id = ? ");
			query.append(" ) ");
		}

		Connection conn = JdbcUtil.getConnection();
		PreparedStatement pstm = conn.prepareStatement(query.toString());
		pstm.setString(1, papers_id);
		ResultSet rs = pstm.executeQuery();

		List<Map<String, Object>> papersList = new ArrayList<Map<String, Object>>();

		while (rs.next()) {
			Map<String, Object> tempMap = new LinkedHashMap<String, Object>();

			tempMap.put("id", rs.getString("id"));
			tempMap.put("subject_name", rs.getString("subject_name"));
			tempMap.put("knowledge", rs.getString("knowledge"));
			tempMap.put("source_name", rs.getString("source_name"));
			tempMap.put("question",
					HtmlUtils.htmlUnescape(rs.getString("question")));
			tempMap.put("answer", rs.getString("answer"));
			tempMap.put("resolve",
					HtmlUtils.htmlUnescape(rs.getString("resolve")));

			papersList.add(tempMap);
		}

		JdbcUtil.getCloseAll(conn, pstm, rs);

		return papersList;
	}

	/**
	 * 获取卷子信息详情
	 * 
	 * @param papers_id
	 * @return
	 * @throws Exception
	 */
	public Map<String, Object> getPapersDetail(String papers_id)
			throws Exception {

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	a.id, ");
		query.append(" 	a.papers_name, ");
		query.append(" 	a.user_id, ");
		query.append(" 	b.truename, ");
		query.append(" 	a.dic_value, ");
		query.append(" 	c.dic_name, ");
		query.append(" 	a.college ");
		query.append(" FROM ");
		query.append(" 	t_sys_papers a ");
		query.append(" LEFT JOIN t_sys_user b ON a.user_id = b.id ");
		query.append(" LEFT JOIN t_sys_dic c ON a.dic_value = c.dic_value ");
		query.append(" WHERE a.id = ? ");

		Connection conn = JdbcUtil.getConnection();
		PreparedStatement pstm = conn.prepareStatement(query.toString());
		pstm.setString(1, papers_id);
		ResultSet rs = pstm.executeQuery();

		Map<String, Object> tempMap = new LinkedHashMap<String, Object>();
		if (rs.next()) {
			tempMap.put("id", rs.getString("id"));
			tempMap.put("papers_name", rs.getString("papers_name"));
			tempMap.put("user_id", rs.getString("user_id"));
			tempMap.put("truename", rs.getString("truename"));
			tempMap.put("dic_value", rs.getString("dic_value"));
			tempMap.put("dic_name", rs.getString("dic_name"));
			tempMap.put("college", rs.getString("college"));
		}

		return tempMap;
	}

	/**
	 * 
	 * 派发试卷给用户
	 * 
	 * @param params
	 * @return
	 */
	public boolean handOutPapers(Map<String, String> params) throws Exception {

		String papers_id = params.get("papers_id");
		String user_ids = params.get("user_ids");

		StringBuffer query = new StringBuffer();

		query.append(" INSERT INTO t_sys_user_papers (user_id, papers_id, `status`)  ");
		query.append(" SELECT  ");
		query.append("   id,  ");
		query.append("   ").append(papers_id).append(",  ");
		query.append("   0  ");
		query.append(" FROM  ");
		query.append("   t_sys_user  ");
		query.append(" WHERE  ");
		query.append("   id IN ( ").append(user_ids).append(" ) ");

		int count = jdbcTemplate.update(query.toString());
		return count > 0 ? true : false;
	}

	/**
	 * 获取学生待考+试卷列表
	 * 
	 * @param paramsMap
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> getStuPapersWaitList(
			Map<String, Object> paramsMap) throws Exception {

		String queryParam = GlobalUtil.NullToStr(paramsMap.get("query"));
		String subject_name = GlobalUtil.NullToStr(paramsMap
				.get("subject_name"));

		String sort = GlobalUtil.NullToStr(paramsMap.get("sort"));
		String dir = GlobalUtil.NullToStr(paramsMap.get("dir"));

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	a.id, ");
		query.append(" 	a.user_id, ");
		query.append(" 	c.truename, ");
		query.append(" 	a.papers_id, ");
		query.append(" 	a.`status`, ");
		query.append(" 	b.papers_name, ");
		query.append(" 	b.college, ");
		query.append(" 	b.user_id AS 'create_papers_id', ");
		query.append(" 	b.truename AS 'create_papers_truename', ");
		query.append(" 	b.dic_value, ");
		query.append(" 	d.dic_name ");
		query.append(" FROM ");
		query.append(" 	t_sys_user_papers a ");
		query.append(" LEFT JOIN ( ");
		query.append(" 	SELECT ");
		query.append(" 		a.id, ");
		query.append(" 		a.papers_name, ");
		query.append(" 		a.dic_value, ");
		query.append(" 		a.college, ");
		query.append(" 		a.user_id, ");
		query.append(" 		b.truename ");
		query.append(" 	FROM ");
		query.append(" 		t_sys_papers a ");
		query.append(" 	LEFT JOIN t_sys_user b ON a.user_id = b.id ");
		query.append(" ) b ON a.papers_id = b.id ");
		query.append(" LEFT JOIN t_sys_user c ON a.user_id = c.id ");
		query.append(" LEFT JOIN t_sys_dic d ON b.dic_value = d.dic_value ");
		query.append(" WHERE ");
		query.append(" 	1 = 1 ");
		query.append(" 	AND a.`status` = 0 ");
		query.append(" AND a.user_id = :user_id ");

		if (StringUtils.isNotEmpty(queryParam)) {
			query.append(" AND (");
			query.append(" b.papers_name like :query ");
			query.append(" OR b.truename like :query ");
			query.append(" OR b.college like :query ");
			query.append(" ) ");
		}

		if (StringUtils.isNotEmpty(subject_name) && !"-1".equals(subject_name)) {
			query.append(" AND b.dic_value = :subject_name ");
		}

		query.append(" ORDER BY ");
		query.append(" 	b.").append(sort).append(" ").append(dir).append(" ");
		query.append(" LIMIT ");
		query.append(" 	:start,:limit ");

		LoggerUtil.info("获取待考卷子列表", query, paramsMap);

		return namedParameterJdbcTemplate.queryForList(query.toString(),
				paramsMap);
	}

	/**
	 * 
	 * 待考试卷记录数
	 * 
	 * @param paramsMap
	 * @return
	 * @throws Exception
	 */
	public int getStuPapersWaitListCount(Map<String, Object> paramsMap)
			throws Exception {

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	count(*) AS totalCount ");
		query.append(" FROM ");
		query.append(" 	t_sys_user_papers a ");
		query.append(" LEFT JOIN ( ");
		query.append(" 	SELECT ");
		query.append(" 		a.id, ");
		query.append(" 		a.papers_name, ");
		query.append(" 		a.dic_value, ");
		query.append(" 		a.college, ");
		query.append(" 		a.user_id, ");
		query.append(" 		b.truename ");
		query.append(" 	FROM ");
		query.append(" 		t_sys_papers a ");
		query.append(" 	LEFT JOIN t_sys_user b ON a.user_id = b.id ");
		query.append(" ) b ON a.papers_id = b.id ");
		query.append(" LEFT JOIN t_sys_user c ON a.user_id = c.id ");
		query.append(" LEFT JOIN t_sys_dic d ON b.dic_value = d.dic_value ");
		query.append(" WHERE ");
		query.append(" 	1 = 1 ");
		query.append(" 	AND a.`status` = 0 ");
		query.append(" AND a.user_id = :user_id ");
		query.append(" AND b.id is NOT NULL ");

		LoggerUtil.info("获取待考卷子记录条数", query, paramsMap);

		return JdbcUtil.getQueryByValue(query, paramsMap);
	}

	/**
	 * 
	 * 
	 * 
	 * @param params
	 * @return
	 */
	public Map<String, Object> getExamPapersDetail(Map<String, String> params)
			throws Exception {

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	a.id, ");
		query.append(" 	a.papers_name, ");
		query.append(" 	a.user_id, ");
		query.append(" 	b.truename, ");
		query.append(" 	a.dic_value, ");
		query.append(" 	c.dic_name, ");
		query.append(" 	a.college ");
		query.append(" FROM ");
		query.append(" 	t_sys_papers a ");
		query.append(" LEFT JOIN t_sys_user b ON a.user_id = b.id ");
		query.append(" LEFT JOIN t_sys_dic c ON a.dic_value = c.dic_value ");
		query.append(" LEFT JOIN t_sys_user_papers d ON d.papers_id = a.id ");
		query.append(" WHERE a.id = ? ");
		query.append(" AND d.user_id = ? ");

		Connection conn = JdbcUtil.getConnection();
		PreparedStatement pstm = conn.prepareStatement(query.toString());
		pstm.setString(1, params.get("papers_id"));
		pstm.setString(2, params.get("user_id"));
		ResultSet rs = pstm.executeQuery();

		Map<String, Object> tempMap = new LinkedHashMap<String, Object>();
		if (rs.next()) {
			tempMap.put("id", rs.getString("id"));
			tempMap.put("papers_name", rs.getString("papers_name"));
			tempMap.put("user_id", rs.getString("user_id"));
			tempMap.put("truename", rs.getString("truename"));
			tempMap.put("dic_value", rs.getString("dic_value"));
			tempMap.put("dic_name", rs.getString("dic_name"));
			tempMap.put("college", rs.getString("college"));
		}

		return tempMap;
	}

	/**
	 * 
	 * 获取考题
	 * 
	 * @param params
	 * @return
	 */
	public List<Map<String, Object>> getExamPapersList(
			Map<String, String> params) throws Exception {

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	a.id, ");
		query.append(" 	a.subject_name, ");
		query.append(" 	a.knowledge, ");
		query.append(" 	a.source_name, ");
		query.append(" 	a.question, ");
		query.append(" 	a.answer, ");
		query.append(" 	a.resolve ");
		query.append(" FROM ");
		query.append(" 	t_sys_questions a ");
		query.append(" LEFT JOIN t_sys_dic b ON a.subject_name = b.dic_name ");
		query.append(" LEFT JOIN t_sys_dic c ON a.knowledge = c.dic_name ");
		query.append(" WHERE ");
		query.append(" 	1 = 1 ");
		query.append(" AND a.id IN ( ");
		query.append(" 	SELECT ");
		query.append(" 		a.questions_id ");
		query.append(" 	FROM ");
		query.append(" 		t_sys_papers_questions a ");
		query.append(" 	LEFT JOIN t_sys_user_papers b ON a.papers_id = b.papers_id ");
		query.append(" 	WHERE ");
		query.append(" 		a.papers_id = ? ");
		query.append(" 		AND b.user_id = ? ");
		query.append(" ) ");

		Connection conn = JdbcUtil.getConnection();
		PreparedStatement pstm = conn.prepareStatement(query.toString());
		pstm.setString(1, params.get("papers_id"));
		pstm.setString(2, params.get("user_id"));
		ResultSet rs = pstm.executeQuery();

		List<Map<String, Object>> papersList = new ArrayList<Map<String, Object>>();

		while (rs.next()) {
			Map<String, Object> tempMap = new LinkedHashMap<String, Object>();

			tempMap.put("id", rs.getString("id"));
			tempMap.put("subject_name", rs.getString("subject_name"));
			tempMap.put("knowledge", rs.getString("knowledge"));
			tempMap.put("source_name", rs.getString("source_name"));
			tempMap.put("question",
					HtmlUtils.htmlUnescape(rs.getString("question")));
			tempMap.put("answer", rs.getString("answer"));
			tempMap.put("resolve",
					HtmlUtils.htmlUnescape(rs.getString("resolve")));

			papersList.add(tempMap);
		}

		JdbcUtil.getCloseAll(conn, pstm, rs);

		return papersList;
	}

	/**
	 * 
	 * 提交试卷
	 * 
	 * @param json
	 * @return
	 */
	public boolean submitPaper(Map<String, String> params) throws Exception {

		final String answer_json = params.get("answer_json");
		final String user_id = params.get("user_id");
		final String papers_id = params.get("papers_id");

		StringBuffer query = new StringBuffer();

		query.append(" UPDATE t_sys_user_papers ");
		query.append(" SET answer_json = ? , ");
		query.append(" status = 1 ");
		query.append(" WHERE ");
		query.append(" 	user_id = ? ");
		query.append(" AND papers_id = ? ");

		int count = jdbcTemplate.update(query.toString(),
				new PreparedStatementSetter() {
					@Override
					public void setValues(PreparedStatement ps)
							throws SQLException {
						ps.setString(1, answer_json);
						ps.setString(2, user_id);
						ps.setString(3, papers_id);
					}
				});

		return count > 0 ? true : false;
	}

	/**
	 * 
	 * 获取已考试卷
	 * 
	 * @param paramsMap
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> getStuPapersAnsweredList(
			Map<String, Object> paramsMap) throws Exception {

		String queryParam = GlobalUtil.NullToStr(paramsMap.get("query"));
		String subject_name = GlobalUtil.NullToStr(paramsMap
				.get("subject_name"));

		String sort = GlobalUtil.NullToStr(paramsMap.get("sort"));
		String dir = GlobalUtil.NullToStr(paramsMap.get("dir"));

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	a.id, ");
		query.append(" 	a.user_id, ");
		query.append(" 	c.truename, ");
		query.append(" 	a.papers_id, ");
		query.append(" 	a.`status`, ");
		query.append(" 	b.papers_name, ");
		query.append(" 	b.college, ");
		query.append(" 	b.user_id AS 'create_papers_id', ");
		query.append(" 	b.truename AS 'create_papers_truename', ");
		query.append(" 	b.dic_value, ");
		query.append(" 	d.dic_name ");
		query.append(" FROM ");
		query.append(" 	t_sys_user_papers a ");
		query.append(" LEFT JOIN ( ");
		query.append(" 	SELECT ");
		query.append(" 		a.id, ");
		query.append(" 		a.papers_name, ");
		query.append(" 		a.dic_value, ");
		query.append(" 		a.college, ");
		query.append(" 		a.user_id, ");
		query.append(" 		b.truename ");
		query.append(" 	FROM ");
		query.append(" 		t_sys_papers a ");
		query.append(" 	LEFT JOIN t_sys_user b ON a.user_id = b.id ");
		query.append(" ) b ON a.papers_id = b.id ");
		query.append(" LEFT JOIN t_sys_user c ON a.user_id = c.id ");
		query.append(" LEFT JOIN t_sys_dic d ON b.dic_value = d.dic_value ");
		query.append(" WHERE ");
		query.append(" 	1 = 1 ");
		query.append(" 	AND a.`status` = 1 ");
		query.append(" AND a.user_id = :user_id ");

		if (StringUtils.isNotEmpty(queryParam)) {
			query.append(" AND (");
			query.append(" b.papers_name like :query ");
			query.append(" OR b.truename like :query ");
			query.append(" OR b.college like :query ");
			query.append(" ) ");
		}

		if (StringUtils.isNotEmpty(subject_name) && !"-1".equals(subject_name)) {
			query.append(" AND b.dic_value = :subject_name ");
		}

		query.append(" ORDER BY ");
		query.append(" 	b.").append(sort).append(" ").append(dir).append(" ");
		query.append(" LIMIT ");
		query.append(" 	:start,:limit ");

		LoggerUtil.info("获取已考卷子列表", query, paramsMap);

		return namedParameterJdbcTemplate.queryForList(query.toString(),
				paramsMap);
	}

	/**
	 * 
	 * 获取已考记录条数
	 * 
	 * @param paramsMap
	 * @return
	 */
	public int getStuPapersAnsweredListCount(Map<String, Object> paramsMap)
			throws Exception {

		String queryParam = GlobalUtil.NullToStr(paramsMap.get("query"));
		String subject_name = GlobalUtil.NullToStr(paramsMap
				.get("subject_name"));

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	count(*) AS totalCount ");
		query.append(" FROM ");
		query.append(" 	t_sys_user_papers a ");
		query.append(" LEFT JOIN ( ");
		query.append(" 	SELECT ");
		query.append(" 		a.id, ");
		query.append(" 		a.papers_name, ");
		query.append(" 		a.dic_value, ");
		query.append(" 		a.college, ");
		query.append(" 		a.user_id, ");
		query.append(" 		b.truename ");
		query.append(" 	FROM ");
		query.append(" 		t_sys_papers a ");
		query.append(" 	LEFT JOIN t_sys_user b ON a.user_id = b.id ");
		query.append(" ) b ON a.papers_id = b.id ");
		query.append(" LEFT JOIN t_sys_user c ON a.user_id = c.id ");
		query.append(" LEFT JOIN t_sys_dic d ON b.dic_value = d.dic_value ");
		query.append(" WHERE ");
		query.append(" 	1 = 1 ");
		query.append(" 	AND a.`status` = 1 ");
		query.append(" AND a.user_id = :user_id ");

		if (StringUtils.isNotEmpty(queryParam)) {
			query.append(" AND (");
			query.append(" b.papers_name like :query ");
			query.append(" OR b.truename like :query ");
			query.append(" OR b.college like :query ");
			query.append(" ) ");
		}

		if (StringUtils.isNotEmpty(subject_name) && !"-1".equals(subject_name)) {
			query.append(" AND b.dic_value = :subject_name ");
		}

		LoggerUtil.info("获取已考卷子记录条数", query, paramsMap);

		return JdbcUtil.getQueryByValue(query, paramsMap);
	}

	/**
	 * 
	 * 获取考试结果
	 * 
	 * @param params
	 * @return
	 */
	public String getExamResult(Map<String, String> params) {

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	answer_json ");
		query.append(" FROM ");
		query.append(" 	t_sys_user_papers ");
		query.append(" WHERE ");
		query.append(" 	user_id = :user_id ");
		query.append(" AND papers_id = :papers_id ");

		return JdbcUtil.getQueryByValue(query.toString(), params);
	}

	/**
	 * 
	 * 获取学生考试结果记录条数
	 * 
	 * @param params
	 * @return
	 * @throws Exception
	 */
	public int getAllUserPapersResultListCount(Map<String, Object> params)
			throws Exception {
		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	count(*) AS 'totalCount' ");
		query.append(" FROM ");
		query.append(" 	t_sys_user_papers a ");
		query.append(" LEFT JOIN t_sys_user b ON a.user_id = b.id ");
		query.append(" LEFT JOIN t_sys_papers c ON a.papers_id = c.id ");
		query.append(" WHERE b.truename LIKE :query ");

		LoggerUtil.info("[PaperService]获取所有考试结果记录条数", query, params);

		return JdbcUtil.getQueryByValue(query, params);
	}

	/**
	 * 
	 * 获取学生考试结果记录
	 * 
	 * @param params
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> getAllUserPapersResultList(
			Map<String, Object> params) throws Exception {

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	a.id, ");
		query.append(" 	a.user_id, ");
		query.append(" 	b.truename, ");
		query.append(" 	a.papers_id, ");
		query.append(" 	c.papers_name, ");
		query.append(" 	a.answer_json, ");
		query.append(" 	a.`status` ");
		query.append(" FROM ");
		query.append(" 	t_sys_user_papers a ");
		query.append(" LEFT JOIN t_sys_user b ON a.user_id = b.id ");
		query.append(" LEFT JOIN t_sys_papers c ON a.papers_id = c.id ");
		query.append(" WHERE b.truename LIKE :query ");

		LoggerUtil.info("[PapersService]获取所有学生考试结果", query, params);

		return namedParameterJdbcTemplate
				.queryForList(query.toString(), params);
	}

}
