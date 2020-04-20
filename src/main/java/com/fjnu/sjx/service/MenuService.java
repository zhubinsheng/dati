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

import com.fjnu.sjx.util.GlobalUtil;
import com.fjnu.sjx.util.JdbcUtil;
import com.fjnu.sjx.util.LoggerUtil;

@Service
@Transactional
public class MenuService {

	private Logger logger = Logger.getLogger(MenuService.class);
	@Autowired
	private JdbcTemplate jdbcTemplate = null;
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate = null;
	@Autowired
	private Sql2o sql2o = null;

	/**
	 * 
	 * 获取所有的菜单
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> getAllMenu() throws Exception {

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	id, ");
		query.append(" 	menu_name, ");
		query.append(" 	menu_href, ");
		query.append(" 	grade, ");
		query.append(" 	isleaf, ");
		query.append(" 	parent_id, ");
		query.append(" 	iconCls ");
		query.append(" FROM ");
		query.append(" 	t_sys_menu ");
		query.append(" ORDER BY id ASC ");

		logger.info("[MenuService]获取所有的菜单：" + query.toString());

		Connection conn = jdbcTemplate.getDataSource().getConnection();
		PreparedStatement pstm = conn.prepareStatement(query.toString());
		ResultSet rs = pstm.executeQuery();

		List<Map<String, Object>> treeList = new ArrayList<Map<String, Object>>(); // 最终的树
		Map<String, Object> treeNode = null; // 每个节点
		// 节点对象
		Map<String, Map<String, Object>> objectNode = new LinkedHashMap<String, Map<String, Object>>();
		while (rs.next()) {
			String id = rs.getString("id");
			String menu_name = rs.getString("menu_name");
			String menu_href = rs.getString("menu_href");
			String grade = rs.getString("grade");
			String isleaf = rs.getString("isleaf");
			String parent_id = rs.getString("parent_id");
			String iconCls = rs.getString("iconCls");

			treeNode = new LinkedHashMap<String, Object>();
			treeNode.put("id", id);
			treeNode.put("menu_name", menu_name);
			treeNode.put("text", menu_name);
			treeNode.put("menu_href", menu_href);
			treeNode.put("grade", grade);
			treeNode.put("isleaf", isleaf);
			treeNode.put("leaf", "0".equals(isleaf) ? false : true);
			treeNode.put("checked", false);
			treeNode.put("parent_id", parent_id);
			treeNode.put("iconCls", iconCls);

			objectNode.put(id, treeNode);

			if ("0".equals(parent_id)) {
				treeList.add(treeNode);
			} else {
				Map<String, Object> parentNode = objectNode.get(parent_id);
				List<Map<String, Object>> childrenList = null;
				if (parentNode.get("children") == null) {
					childrenList = new ArrayList<Map<String, Object>>();
				} else {
					childrenList = (List<Map<String, Object>>) parentNode
							.get("children");
				}

				childrenList.add(treeNode);
				parentNode.put("children", childrenList);
			}
		}
		JdbcUtil.getCloseAll(conn, pstm, rs);

		return treeList;
	}

	/**
	 * 
	 * 获取所有父节点菜单
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> getAllParentMenuList() throws Exception {

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	id, ");
		query.append(" 	menu_name, ");
		query.append(" 	menu_href, ");
		query.append(" 	grade, ");
		query.append(" 	isleaf, ");
		query.append(" 	parent_id ");
		query.append(" FROM ");
		query.append(" 	t_sys_menu ");
		query.append(" WHERE ");
		query.append(" 	isleaf = 0 ");

		logger.info("[MenuService]获取所有的父菜单：" + query.toString());

		return jdbcTemplate.queryForList(query.toString());
	}

	/**
	 * 
	 * 获取某个节点下最大的id
	 * 
	 * @return
	 * @throws Exception
	 */
	public int getMaxIDForTreeNode(String parent_id) throws Exception {

		StringBuffer query = new StringBuffer();
		if (StringUtils.isNotEmpty(parent_id)) {
			query.append(" SELECT ");
			query.append(" 	MAX(id) AS 'maxid' ");
			query.append(" FROM ");
			query.append(" 	t_sys_menu ");
			query.append(" WHERE ");
			query.append(" 	parent_id = ");
			query.append(parent_id);
			query.append(" ");

		} else {
			query.append(" SELECT ");
			query.append(" 	MAX(id) AS 'maxid' ");
			query.append(" FROM ");
			query.append(" 	t_sys_menu ");
			query.append(" WHERE ");
			query.append(" 	grade = 0 ");
		}

		logger.info("[MeuService]获取某个父菜单下的最大ID：" + query.toString());

		return GlobalUtil.NullToObjectZero(JdbcUtil.getQueryByValue(query
				.toString()));
	}

	/**
	 * 
	 * 添加菜单
	 * 
	 * @return
	 * @throws Exception
	 */
	public boolean addMenu(Map<String, Object> params) throws Exception {

		StringBuffer query = new StringBuffer();

		query.append(" INSERT INTO t_sys_menu( ");
		query.append(" 	id, ");
		query.append(" 	menu_name, ");
		query.append(" 	menu_href, ");
		query.append(" 	grade, ");
		query.append(" 	isleaf, ");
		query.append(" 	parent_id, ");
		query.append(" 	iconCls ");
		query.append(" ) ");
		query.append(" VALUES ");
		query.append(" 	( ");
		query.append(" 		:id, ");
		query.append(" 		:menu_name, ");
		query.append(" 		:menu_href, ");
		query.append(" 		:grade, ");
		query.append(" 		:isleaf, ");
		query.append(" 		:parent_id, ");
		query.append(" 		:iconCls ");
		query.append(" 	) ");

		LoggerUtil.info("[MenuService]添加菜单", query, params);

		int count = namedParameterJdbcTemplate.update(query.toString(), params);

		return count > 0 ? true : false;
	}

	/**
	 * 
	 * 更新菜单信息
	 * 
	 * @param params
	 * @return
	 * @throws Exception
	 */
	public boolean updateMenu(Map<String, Object> params) throws Exception {

		StringBuffer query = new StringBuffer();

		query.append(" UPDATE t_sys_menu ");
		query.append(" SET menu_name = :menu_name, ");
		query.append("  menu_href = :menu_href, ");
		query.append("  iconCls = :iconCls ");
		query.append(" WHERE ");
		query.append(" 	id = :id ");

		LoggerUtil.info("[MenuService]更新菜单信息", query, params);

		int count = namedParameterJdbcTemplate.update(query.toString(), params);

		return count > 0 ? true : false;
	}

	/**
	 * 
	 * 删除菜单
	 * 
	 * @param params
	 * @return
	 * @throws Exception
	 */
	public boolean delMenu(Map<String, String> params) throws Exception {

		StringBuffer query = new StringBuffer();

		String isleaf = params.get("isleaf");

		if ("1".equals(isleaf)) {
			query.append(" DELETE ");
			query.append(" FROM ");
			query.append(" 	t_sys_menu ");
			query.append(" WHERE ");
			query.append(" 	id = :id ");
		} else {
			query.append(" DELETE ");
			query.append(" FROM ");
			query.append(" 	t_sys_menu ");
			query.append(" WHERE ");
			query.append(" 	id like :idLike ");
		}

		LoggerUtil.info("[MenuService]删除菜单", query.toString(), params);

		int count = namedParameterJdbcTemplate.update(query.toString(), params);

		return count > 0 ? true : false;
	}
}