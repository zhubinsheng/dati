/**   
 * 
 * 项目名称:	[test_on_line]
 * 包:		[com.fjnu.sjx.service]
 * 类名称:	[QuestionService]
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

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.sql2o.Sql2o;

import com.fjnu.sjx.bean.QuestionBean;
import com.fjnu.sjx.util.GlobalUtil;
import com.fjnu.sjx.util.JdbcUtil;
import com.fjnu.sjx.util.LoggerUtil;

@Service
@Transactional
public class QuestionService {

	private Logger logger = Logger.getLogger(QuestionService.class);

	@Autowired
	private JdbcTemplate jdbcTemplate = null;
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate = null;
	@Autowired
	private Sql2o sql2o = null;

	/**
	 * 获取试题列表JSON
	 * 
	 * @param params
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> getQuestionsList(Map<String, Object> params)
			throws Exception {
		String sort = params.get("sort").toString();
		String dir = params.get("dir").toString();
		
		String queryLike = params.get("query").toString();
		String knowledgeID =params.get("knowledge").toString();
		String subjectID =params.get("subject_name").toString();
		
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
		if (!"%%".equalsIgnoreCase(queryLike)){
			query.append(" AND ( ");
			query.append(" 	a.source_name LIKE :query ");
			query.append(" 	OR a.question LIKE :query ");
			query.append(" 	OR a.resolve LIKE :query ");
			query.append(" ) ");
		}
		if (StringUtils.isNotEmpty(knowledgeID) && !"-1".equals(knowledgeID)){
			query.append(" AND c.dic_value = :knowledge ");
		}
		
		if (StringUtils.isNotEmpty(subjectID) && !"-1".equals(subjectID)){
			query.append(" AND b.dic_value = :subject_name ");
		}
		
		query.append(" ORDER BY ");
		query.append(" 	a.").append(sort).append(" ").append(dir).append(" ");
		query.append(" LIMIT ");
		query.append(" 	:start,:limit ");

		LoggerUtil.info("获取试题列表", query, params);

		return namedParameterJdbcTemplate
				.queryForList(query.toString(), params);
	}
	
	/**
	 * 获取总数
	 * 
	 * @param params
	 * @return
	 * @throws Exception
	 */
	public int getQuestionsListTotal(Map<String, Object> params)
			throws Exception {
		
		String queryLike = params.get("query").toString();
		String knowledgeID =params.get("knowledge").toString();
		String subjectID =params.get("subject_name").toString();
		
		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	count(1) AS total ");
		query.append(" FROM ");
		query.append(" 	t_sys_questions a ");
		query.append(" 	LEFT JOIN t_sys_dic b ON a.subject_name = b.dic_name ");
		query.append(" 	LEFT JOIN t_sys_dic c ON a.knowledge = c.dic_name ");
		query.append(" WHERE ");
		query.append(" 	1 = 1 ");
		if (!"%%".equalsIgnoreCase(queryLike)){
			query.append(" AND ( ");
			query.append(" 	a.source_name LIKE :query ");
			query.append(" 	OR a.question LIKE :query ");
			query.append(" 	OR a.resolve LIKE :query ");
			query.append(" ) ");
		}
		if (StringUtils.isNotEmpty(knowledgeID) && !"-1".equals(knowledgeID)){
			query.append(" AND c.dic_value = :knowledge ");
		}
		
		if (StringUtils.isNotEmpty(subjectID) && !"-1".equals(subjectID)){
			query.append(" AND b.dic_value = :subject_name ");
		}
		
		return namedParameterJdbcTemplate.queryForInt(query.toString(), params);
	}

	/**
	 * 获取试题详情
	 * 
	 * @param id
	 * @return
	 */
	public QuestionBean getQuestionAddOrEditPage(String id) throws Exception{

		StringBuffer query = new StringBuffer();
		query.append(" SELECT ");
		query.append(" 	a.id, ");
		query.append(" 	b.dic_value AS subject_name, ");
		query.append(" 	c.dic_value AS knowledge, ");
		query.append(" 	a.source_name, ");
		query.append(" 	a.question, ");
		query.append(" 	a.answer, ");
		query.append(" 	a.resolve ");
		query.append(" FROM ");
		query.append(" 	t_sys_questions a ");
		query.append(" LEFT JOIN t_sys_dic b ON a.subject_name = b.dic_name ");
		query.append(" LEFT JOIN t_sys_dic c ON a.knowledge = c.dic_name ");
		query.append(" AND c.parent_id = b.id ");
		query.append(" WHERE ");
		query.append(" 	a.id = :id ");

		Map<String, Object> paramMap = new LinkedHashMap<String, Object>();
		paramMap.put("id", id);
		
		LoggerUtil.info("[QuestionService]获取试题", query,paramMap);

		QuestionBean questionBean =  namedParameterJdbcTemplate.queryForObject(query.toString(), paramMap,
				new BeanPropertyRowMapper<QuestionBean>(QuestionBean.class));

		return questionBean;
	}
	
	/**
	 * 获取所有学科
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> getQuestionSubjectNameList() throws Exception{
		
		StringBuffer query = new StringBuffer();
		
		query.append(" SELECT                ");
		query.append(" 	id,                  ");
		query.append(" 	dic_name,            ");
		query.append(" 	dic_value,           ");
		query.append(" 	sort                 ");
		query.append(" FROM                  ");
		query.append(" 	t_sys_dic            ");
		query.append(" WHERE                 ");
		query.append(" 	grade = '1'          ");
		query.append(" AND sort = '试题目录' ");
		
		return jdbcTemplate.queryForList(query.toString());
	}
	
	/**
	 * 获取所有知识
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> getQuestionKnowledgeList() throws Exception{
		
		StringBuffer query = new StringBuffer();
		
		query.append(" SELECT                ");
		query.append(" 	id,                  ");
		query.append(" 	dic_name,            ");
		query.append(" 	dic_value,           ");
		query.append(" 	sort                 ");
		query.append(" FROM                  ");
		query.append(" 	t_sys_dic            ");
		query.append(" WHERE                 ");
		query.append(" 	grade = '2'          ");
		query.append(" AND sort = '试题目录' 	 ");
		
		return jdbcTemplate.queryForList(query.toString());
	}
	
	/**
	 * 保存试题
	 * 
	 * @param params
	 * @return
	 * @throws Exception
	 */
	public boolean saveQuestion(Map<String, String> params) throws Exception{
		//获取学科
		String subject_nameQuery = "SELECT dic_name FROM t_sys_dic WHERE dic_value = :subjectID";
		String subject_name = GlobalUtil.NullToStr(JdbcUtil.getQueryByValue(subject_nameQuery,params));
		//获取知识点
		String knowledgeQuery = "SELECT dic_name FROM t_sys_dic WHERE dic_value = :knowledgeID";
		String knowledge = GlobalUtil.NullToStr(JdbcUtil.getQueryByValue(knowledgeQuery,params));
		
		params.put("subject_name", subject_name);
		params.put("knowledge", knowledge);
		
		StringBuffer query  = new StringBuffer();
		
		//判断是添加还是编辑试题
		String id = params.get("id");
		
		if (StringUtils.isEmpty(id)){
			query.append(" INSERT INTO t_sys_questions ( ");
			query.append(" 	subject_name,                ");
			query.append(" 	knowledge,                   ");
			query.append(" 	source_name,                 ");
			query.append(" 	question,                    ");
			query.append(" 	answer,                      ");
			query.append(" 	resolve                      ");
			query.append(" )                             ");
			query.append(" VALUE                         ");
			query.append(" 	(                            ");
			query.append(" 		:subject_name ,          ");
			query.append(" 		:knowledge ,             ");
			query.append(" 		:source_name ,           ");
			query.append(" 		:question ,              ");
			query.append(" 		:answer ,                ");
			query.append(" 		:resolve                 ");
			query.append(" 	)                            ");
		}else{
			query.append(" UPDATE t_sys_questions               ");
			query.append(" 	SET subject_name = :subject_name,   ");
			query.append(" 			knowledge = :knowledge,     ");
			query.append(" 			source_name = :source_name, ");
			query.append(" 			question = :question,       ");
			query.append(" 			answer = :answer,           ");
			query.append(" 			resolve = :resolve          ");
			query.append(" WHERE id = :id                       ");
		}
		
		int count = namedParameterJdbcTemplate.update(query.toString(), params);
		
		return count > 0 ? true : false;
	}
	
	/**
	 * 删除试题
	 * 
	 * @param ids
	 * @return
	 */
	public boolean delQuestion(String ids) {
		
		StringBuffer query = new StringBuffer();
		query.append(" DELETE ");
		query.append(" FROM ");
		query.append(" 	t_sys_questions ");
		query.append(" WHERE ");
		query.append(" 	id IN (")
			 .append(ids)
			 .append(") ");
		
		int count = jdbcTemplate.update(query.toString());
		return count > 0 ? true : false;
	}

}
