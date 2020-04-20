/**   
 * 
 * 项目名称:	[test_on_line]
 * 包:		[com.fjnu.sjx.service]
 * 类名称:	[DicService]
 * 类描述:	[字典菜单Service]
 * 创建人:	[sjx]
 * 创建时间:	[2017年1月30日 下午12:27:14]
 * 修改人:	[sjx]
 * 修改时间:	[2017年1月30日 下午12:27:14]
 * 修改备注:	[说明本次修改内容]
 * 版本:		[v1.0]
 *    
 */

package com.fjnu.sjx.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.sql2o.Sql2o;

import com.fjnu.sjx.util.JdbcUtil;
import com.fjnu.sjx.util.LoggerUtil;

@Service
@Transactional
public class DicService {

	private Logger logger = Logger.getLogger(DicService.class);
	@Autowired
	private JdbcTemplate jdbcTemplate = null;
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate = null;
	@Autowired
	private Sql2o sql2o = null;

	/**
	 * 获取数据字典树列表JSON
	 * 
	 * @return
	 * @throws Exception
	 */
	public Map<String, Object> getDicList() throws Exception {
		// 最终的树
		List<Map<String, Object>> treeList = new ArrayList<Map<String, Object>>();
		// 存放每个树节点
		Map<String, Object> treeNode = null;
		// 存放非树节点对象
		Map<String, Map<String, Object>> objNode = new LinkedHashMap<String, Map<String, Object>>();

		StringBuffer query = new StringBuffer();
		query.append(" SELECT ");
		query.append(" 	a.id, ");
		query.append(" 	a.dic_name, ");
		query.append(" 	a.dic_value, ");
		query.append(" 	a.grade, ");
		query.append(" 	a.isleaf, ");
		query.append("  CASE WHEN a.isleaf = '1' THEN ");
		query.append("   'TRUE' ");
		query.append("  ELSE ");
		query.append("   'FALSE' ");
		query.append("  END leaf, ");
		query.append(" 	a.parent_id, ");
		query.append("  CASE WHEN b.dic_name IS NULL THEN ");
		query.append("   '无' ");
		query.append("  ELSE ");
		query.append("   b.dic_name ");
		query.append("  END parent_name, ");
		query.append(" 	a.sort ");
		query.append(" FROM ");
		query.append(" 	t_sys_dic a ");
		query.append(" LEFT JOIN t_sys_dic b ON a.parent_id = b.id ");
		query.append(" ORDER BY ");
		query.append(" 	id ASC ");
		
		logger.info("[DicService]获取数据字典树" + query.toString());

		Connection conn = jdbcTemplate.getDataSource().getConnection();
		PreparedStatement pstm = conn.prepareStatement(query.toString());
		ResultSet rs = pstm.executeQuery();
		while (rs.next()) {
			String id = rs.getString("id");
			String dic_name = rs.getString("dic_name");
			String dic_value = rs.getString("dic_value");
			String grade = rs.getString("grade");
			String isleaf = rs.getString("isleaf");
			boolean leaf = "true".equalsIgnoreCase(rs.getString("leaf")) ? true
					: false;
			String parent_id = rs.getString("parent_id");
			String parent_name = rs.getString("parent_name");
			String sort = rs.getString("sort");

			treeNode = new LinkedHashMap<String, Object>();
			treeNode.put("id", id);
			treeNode.put("dic_name", dic_name);
			treeNode.put("grade", grade);
			treeNode.put("isleaf", isleaf);
			treeNode.put("leaf", leaf);
			treeNode.put("parent_id", parent_id);
			treeNode.put("parent_name", parent_name);
			treeNode.put("sort", sort);

			// 若是叶子节点则添加value，下拉框需要
			if ("1".equals(isleaf)) {
				treeNode.put("dic_value", dic_value);
			}

			objNode.put(id, treeNode);

			// 若是非叶子节点判断
			if ("0".equals(parent_id)) {
				// 直接追加到list
				treeList.add(treeNode);
			} else {
				// 从节点对象中获取父节点
				Map<String, Object> parentNode = objNode.get(parent_id);
				List<Map<String, Object>> childrenNode = null;
				// 判断子节点是否存在,不存在则创建,存在则从父节点中取
				if (parentNode.get("children") == null) {
					childrenNode = new ArrayList<Map<String, Object>>();
				} else {
					childrenNode = (List<Map<String, Object>>) parentNode
							.get("children");
				}
				// 将预先保存好的节点添加到子节点
				childrenNode.add(treeNode);
				// 将子节点追加到父节点
				parentNode.put("children", childrenNode);
			}
		}

		// 关闭jdbc流
		rs.close();
		pstm.close();
		conn.close();

		Map<String, Object> treeMap = new LinkedHashMap<String, Object>();
		treeMap.put("postid", "root");
		treeMap.put("leaf", false);
		treeMap.put("children", treeList);
		return treeMap;
	}

	/**
	 * 更新数据字典的节点信息
	 * 
	 * @param params
	 * @return
	 * @throws Exception
	 */
	public int updateDict(Map<String, String> params) throws Exception {
		StringBuffer query = new StringBuffer();
		query.append(" UPDATE t_sys_dic ");
		query.append(" SET dic_name = :dic_name, ");
		query.append("  dic_value = :dic_value ");
		query.append(" WHERE ");
		query.append(" 	id = :id ");

		LoggerUtil.info("[DicService]更新数据字典的节点信息", query.toString(), params);

		return namedParameterJdbcTemplate.update(query.toString(), params);
	}

	/**
	 * 
	 * 获取数据字典中的父节点(即非叶子节点)
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> getDicParentNodeList() throws Exception {

		StringBuffer query = new StringBuffer();
		query.append(" SELECT ");
		query.append(" 	id, ");
		query.append(" 	dic_name, ");
		query.append(" 	dic_value, ");
		query.append(" 	grade, ");
		query.append(" 	parent_id, ");
		query.append(" 	sort, ");
		query.append(" 	isleaf ");
		query.append(" FROM ");
		query.append(" 	t_sys_dic ");
		query.append(" WHERE ");
		query.append(" 	isleaf = '0' ");

		logger.info("[DicService]获取数据字典中的父节点：" + query.toString());

		return jdbcTemplate.queryForList(query.toString());
	}

	/**
	 * 获取每个父节点中子节点的最大ID
	 * 
	 * @param id
	 * @return
	 */
	public String getMaxTreeNodeForID(String id) throws Exception {

		StringBuffer query = new StringBuffer();
		if (StringUtils.isNotEmpty(id)) {
			query.append(" SELECT ");
			query.append(" 	MAX(id) AS maxid ");
			query.append(" FROM ");
			query.append(" 	t_sys_dic ");
			query.append(" WHERE ");
			query.append(" 	parent_id = '");
			query.append(id);
			query.append("' ");
		} else {
			query.append(" SELECT ");
			query.append(" 	max(id) AS maxid ");
			query.append(" FROM ");
			query.append(" 	t_sys_dic ");
			query.append(" WHERE ");
			query.append(" 	grade = '0' ");
		}

		logger.info("[DicService]获取父节点下子节点的最大值：" + query.toString());

		return JdbcUtil.getQueryByValue(query.toString());
	}

	/**
	 * 增加新节点
	 * 
	 * @return
	 * @throws Exception
	 */
	public boolean addParentNode(Map<String, String> params) throws Exception {

		StringBuffer query = new StringBuffer();
		query.append(" INSERT INTO t_sys_dic ( ");
		query.append(" 	id, ");
		query.append(" 	dic_name, ");
		query.append(" 	dic_value, ");
		query.append(" 	grade, ");
		query.append(" 	parent_id, ");
		query.append(" 	sort, ");
		query.append(" 	isleaf ");
		query.append(" ) ");
		query.append(" VALUES ");
		query.append(" 	( ");
		query.append(" 		:id, ");
		query.append(" 		:dic_name, ");
		query.append(" 		:dic_value, ");
		query.append(" 		:grade, ");
		query.append(" 		:parent_id, ");
		query.append(" 		:sort, ");
		query.append(" 		:isleaf ");
		query.append(" 	); ");

		LoggerUtil.info("[DicService]添加新节点", query.toString(), params);

		int count = namedParameterJdbcTemplate.update(query.toString(), params);

		return count > 0 ? true : false;
	}

	/**
	 * 删除某一个节点
	 * 
	 * @return
	 * @throws Exception
	 */
	public boolean delTreeNode(Map<String, String> params) throws Exception {

		StringBuffer query = new StringBuffer();

		String isleaf = params.get("isleaf");

		if ("1".equals(isleaf)) {
			query.append(" DELETE ");
			query.append(" FROM ");
			query.append(" 	t_sys_dic ");
			query.append(" WHERE ");
			query.append(" 	id = :id ");
		} else {
			query.append(" DELETE ");
			query.append(" FROM ");
			query.append(" 	t_sys_dic ");
			query.append(" WHERE ");
			query.append(" 	id like :idLike ");
		}

		LoggerUtil.info("[DicService]删除某一个节点", query.toString(), params);

		int count = namedParameterJdbcTemplate.update(query.toString(), params);

		return count > 0 ? true : false;
	}

	/**
	 * 获取某个key下的子节点
	 * 
	 * @param key
	 * @return
	 */
	public List<Map<String, Object>> getSubDictOfOneKey(
			Map<String, String> paramMap) throws Exception {

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	dic_name, ");
		query.append(" 	dic_value ");
		query.append(" FROM ");
		query.append(" 	t_sys_dic ");
		query.append(" WHERE ");
		query.append(" 	parent_id IN ( ");
		query.append(" 		SELECT ");
		query.append(" 			id ");
		query.append(" 		FROM ");
		query.append(" 			t_sys_dic ");
		query.append(" 		WHERE ");
		query.append(" 			dic_value = :key ");
		query.append(" 	) ");

		LoggerUtil.info("[DicService]获取某个父节点下的子节点", query.toString(), paramMap);

		return namedParameterJdbcTemplate.queryForList(query.toString(),
				paramMap);
	}
}