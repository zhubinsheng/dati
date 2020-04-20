package com.fjnu.sjx.service;

import java.util.ArrayList;
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
public class RoleService {
	
	private Logger logger = Logger.getLogger(RoleService.class);
	
	@Autowired
	private JdbcTemplate jdbcTemplate = null;
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate = null;
	@Autowired
	private Sql2o sql2o = null;

	/**
	 * 获取用户可见菜单(一级)
	 * 
	 * @param params
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> getRoleMenuParent(
			Map<String, String> params) throws Exception {

		StringBuffer query = new StringBuffer();
		query.append(" SELECT ");
		query.append("     id, ");
		query.append("     menu_name, ");
		query.append("     menu_href, ");
		query.append("     grade, ");
		query.append("     isleaf, ");
		query.append("     parent_id, ");
		query.append("     iconCls ");
		query.append(" FROM ");
		query.append("     t_sys_menu ");
		query.append(" WHERE ");
		query.append("     id IN ( ");
		query.append("         SELECT ");
		query.append("             menu_id ");
		query.append("         FROM ");
		query.append("             t_sys_role_menu_id ");
		query.append("         WHERE ");
		query.append("             role_id = :roleID ");
		query.append("     ) ");
		query.append("     AND grade = '0' ");
		query.append("     AND isleaf = '0' ");

		LoggerUtil.info(query.toString(), params);
		return namedParameterJdbcTemplate
				.queryForList(query.toString(), params);
	}

	/**
	 * 获取子菜单
	 * 
	 * @param params
	 * @return
	 */
	public List<Map<String, Object>> getRoleMenuIsLeaf(
			Map<String, String> params) throws Exception {

		StringBuffer query = new StringBuffer();
		query.append(" SELECT ");
		query.append(" 	id, ");
		query.append(" 	menu_name AS text, ");
		// query.append(" 	CASE WHEN isleaf = '0' THEN ");
		// query.append("		'true' ");
		// query.append(" 	ELSE ");
		// query.append(" 		'false' ");
		// query.append(" 	END leaf, ");
		query.append(" 	isleaf AS leaf, ");
		query.append(" 	menu_name, ");
		query.append(" 	menu_href, ");
		query.append(" 	grade, ");
		query.append(" 	isleaf, ");
		query.append(" 	parent_id, ");
		query.append(" 	iconCls ");
		query.append(" FROM ");
		query.append(" 	t_sys_menu ");
		query.append(" WHERE ");
		query.append(" 	id LIKE :menu_parent_id ");
		query.append(" AND grade != '0' ");
		query.append(" AND isleaf != '0' ");
		query.append(" AND id IN ( ");
		query.append("     SELECT ");
		query.append("         menu_id ");
		query.append("     FROM ");
		query.append("         t_sys_role_menu_id ");
		query.append("     WHERE ");
		query.append("         role_id = :roleID ");
		query.append(" ) ");

		LoggerUtil.info(query.toString(), params);

		return namedParameterJdbcTemplate
				.queryForList(query.toString(), params);
	}

	/**
	 * 
	 * 获取所有角色
	 * 
	 * @param paramsMap
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> getRoleList(Map<String, Object> paramsMap)
			throws Exception {

		String queryParam = GlobalUtil.NullToStr(paramsMap.get("query"));
		String sort = GlobalUtil.NullToStr(paramsMap.get("sort"));
		String dir = GlobalUtil.NullToStr(paramsMap.get("dir"));

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	id, ");
		query.append(" 	role_name ");
		query.append(" FROM ");
		query.append(" 	t_sys_role ");
		query.append(" WHERE ");
		query.append("   1=1 ");

		if (StringUtils.isNotEmpty(queryParam)) {
			query.append("	AND role_name LIKE :query ");
		}

		query.append(" ORDER BY ");
		query.append(" 	").append(sort).append(" ").append(dir).append(" ");
		query.append(" LIMIT ");
		query.append(" 	:start,:limit ");

		LoggerUtil.info("获取卷子列表", query, paramsMap);

		return namedParameterJdbcTemplate.queryForList(query.toString(),
				paramsMap);
	}

	/**
	 * 
	 * 获取角色记录数
	 * 
	 * @param paramsMap
	 * @return
	 * @throws Exception
	 */
	public int getRoleListCount(Map<String, Object> paramsMap) throws Exception {

		String queryParam = GlobalUtil.NullToStr(paramsMap.get("query"));

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	count(*) ");
		query.append(" FROM ");
		query.append(" 	t_sys_role ");
		query.append(" WHERE ");
		query.append("   1=1 ");

		if (StringUtils.isNotEmpty(queryParam)) {
			query.append("	AND role_name LIKE :query ");
		}

		return JdbcUtil.getQueryByValue(query, paramsMap);
	}

	/**
	 * 
	 * 添加角色
	 * 
	 * @param params
	 * @return
	 */
	public boolean addRole(Map<String, String> params) throws Exception {

		StringBuffer query = new StringBuffer();

		String roel_name = params.get("role_name");
		String menu_ids = params.get("menu_ids");

		List<String> queryArray = new ArrayList<String>();

		int role_id = GlobalUtil.NullToObjectZero(JdbcUtil
				.getQueryByValue("SELECT max(id) FROM t_sys_role")) + 1;

		// 插入角色
		query.append("INSERT INTO t_sys_role (id,role_name)values(")
				.append(role_id).append(",'").append(roel_name).append("')");
		queryArray.add(query.toString());

		// 插入角色拥有的菜单
		query.setLength(0);
		query.append(" INSERT INTO t_sys_role_menu_id (role_id, menu_id) SELECT ");
		query.append(" 	").append(role_id).append(" , ");
		query.append(" 	id ");
		query.append(" FROM ");
		query.append(" 	t_sys_menu ");
		query.append(" WHERE ");
		query.append(" 	id IN ( ").append(menu_ids).append(" ) ");
		queryArray.add(query.toString());

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
	 * 
	 * 删除角色
	 * 
	 * @param idStr
	 * @return
	 */
	public boolean delRole(String idStr) throws Exception {

		List<String> queryArray = new ArrayList<String>();

		StringBuffer query = new StringBuffer();

		// 删除角色
		query.append(" DELETE ");
		query.append(" FROM ");
		query.append(" 	t_sys_role ");
		query.append(" WHERE ");
		query.append(" 	id IN (").append(idStr).append(") ");
		queryArray.add(query.toString());

		// 删除角色拥有的菜单
		query.setLength(0);
		query.append(" DELETE FROM ");
		query.append(" t_sys_role_menu_id ");
		query.append(" WHERE role_id IN (").append(idStr).append(") ");
		queryArray.add(query.toString());

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
	 * 
	 * 编辑角色
	 * 
	 * @param role_name
	 * @return
	 */
	public boolean editRole(Map<String, String> params) throws Exception {

		String role_name = params.get("role_name");
		String role_id = params.get("role_id");
		String menu_ids = params.get("menu_ids");

		List<String> queryArray = new ArrayList<String>();
		StringBuffer query = new StringBuffer();

		// 修改角色名字
		query.append(" UPDATE ");
		query.append(" t_sys_role ");
		query.append("    SET role_name = '").append(role_name).append("' ");
		query.append(" WHERE id = ").append(role_id).append(" ");
		queryArray.add(query.toString());

		// 删除角色拥有的菜单
		query.setLength(0);
		query.append(" DELETE FROM ");
		query.append(" t_sys_role_menu_id ");
		query.append(" WHERE role_id = ").append(role_id).append(" ");
		queryArray.add(query.toString());

		// 插入修改后的菜单
		query.setLength(0);
		query.append(" INSERT INTO t_sys_role_menu_id (role_id, menu_id) SELECT ");
		query.append(" 	").append(role_id).append(" , ");
		query.append(" 	id ");
		query.append(" FROM ");
		query.append(" 	t_sys_menu ");
		query.append(" WHERE ");
		query.append(" 	id IN ( ").append(menu_ids).append(" ) ");
		queryArray.add(query.toString());

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
	 * 
	 * 获取所有角色
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> getAllRoleList() throws Exception {

		StringBuffer query = new StringBuffer();

		query.append(" SELECT id,role_name FROM t_sys_role ");

		return jdbcTemplate.queryForList(query.toString());
	}

	/**
	 * 
	 * 获取角色的菜单
	 * 
	 * @param role_id
	 * @return
	 */
	public List<Map<String, Object>> getRoleMenu(String role_id)
			throws Exception {

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	id, ");
		query.append(" 	role_id, ");
		query.append(" 	menu_id ");
		query.append(" FROM ");
		query.append(" 	t_sys_role_menu_id ");
		query.append(" WHERE role_id = ").append(role_id);

		return jdbcTemplate.queryForList(query.toString());
	}
}
