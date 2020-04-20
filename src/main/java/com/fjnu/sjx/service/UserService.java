package com.fjnu.sjx.service;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.sql2o.Sql2o;

import com.fjnu.sjx.bean.UserBean;
import com.fjnu.sjx.util.JdbcUtil;

@Service
@Transactional
public class UserService {

	private Logger logger = Logger.getLogger(UserService.class);

	@Autowired
	private JdbcTemplate jdbcTemplate = null;
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate = null;
	@Autowired
	private Sql2o sql2o = null;

	public List<Map<String, Object>> getAllRoleOfStuUserInfo() throws Exception {

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	id, ");
		query.append(" 	truename AS 'text', ");
		query.append(" 	true AS 'leaf' ");
		query.append(" FROM ");
		query.append(" 	t_sys_user ");
		query.append(" WHERE ");
		query.append(" 	role = 'stu' ");

		return jdbcTemplate.queryForList(query.toString());
	}

	/**
	 * 
	 * 更新用户信息
	 * 
	 * @param params
	 * @return
	 */
	public boolean updateUserInfo(Map<String, String> params) throws Exception {

		final String truename = params.get("truename");
		final String address = params.get("address");
		final String email = params.get("email");
		final String tel = params.get("tel");
		final String user_id = params.get("user_id");

		StringBuffer query = new StringBuffer();

		query.append(" UPDATE t_sys_user SET truename = ?, ");
		query.append(" address = ?, ");
		query.append(" email = ?, ");
		query.append(" tel = ? ");
		query.append(" WHERE id = ? ");

		int count = jdbcTemplate.update(query.toString(),
				new PreparedStatementSetter() {

					@Override
					public void setValues(PreparedStatement ps)
							throws SQLException {
						ps.setString(1, truename);
						ps.setString(2, address);
						ps.setString(3, email);
						ps.setString(4, tel);
						ps.setString(5, user_id);
					}
				});

		return count > 0 ? true : false;
	}

	/**
	 * 
	 * 获取用户
	 * 
	 * @param paramsMap
	 * @return
	 */
	public List<Map<String, Object>> getUserList(Map<String, Object> paramsMap) {

		String queryStr = paramsMap.get("query").toString();
		String sort = paramsMap.get("sort").toString();
		String dir = paramsMap.get("dir").toString();

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	id, ");
		query.append(" 	username, ");
		query.append(" 	`password`, ");
		query.append(" 	role, ");
		query.append(" 	sex, ");
		query.append(" 	birthday, ");
		query.append(" 	classname, ");
		query.append(" 	truename, ");
		query.append(" 	address, ");
		query.append(" 	email, ");
		query.append(" 	tel, ");
		query.append(" 	roleid ");
		query.append(" FROM ");
		query.append(" 	t_sys_user ");
		query.append(" WHERE ");
		query.append(" 	1 = 1 ");

		if (StringUtils.isNotEmpty(queryStr)) {
			query.append(" AND ( ");
			query.append(" 	username LIKE :query ");
			query.append(" 	OR truename LIKE :query ");
			query.append(" 	OR address LIKE :query ");
			query.append(" 	OR email LIKE :query ");
			query.append(" 	OR tel LIKE :query ");
			query.append(" ) ");
		}
		query.append(" ORDER BY ");
		query.append(" 	").append(sort).append(" ").append(dir).append(" ");
		query.append(" LIMIT :start,:limit ");

		return namedParameterJdbcTemplate.queryForList(query.toString(),
				paramsMap);
	}

	/**
	 * 
	 * 获取用户记录数
	 * 
	 * @param paramsMap
	 * @return
	 */
	public int getUserListCount(Map<String, Object> paramsMap) {

		String queryStr = paramsMap.get("query").toString();
		String sort = paramsMap.get("sort").toString();
		String dir = paramsMap.get("dir").toString();

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	count(*) AS 'toalCount' ");
		query.append(" FROM ");
		query.append(" 	t_sys_user ");
		query.append(" WHERE ");
		query.append(" 	1 = 1 ");

		if (StringUtils.isNotEmpty(queryStr)) {
			query.append(" AND ( ");
			query.append(" 	username LIKE :query ");
			query.append(" 	OR truename LIKE :query ");
			query.append(" 	OR address LIKE :query ");
			query.append(" 	OR email LIKE :query ");
			query.append(" 	OR tel LIKE :query ");
			query.append(" ) ");
		}

		return JdbcUtil.getQueryByValue(query, paramsMap);
	}

	/**
	 * 
	 * 添加新用户
	 * 
	 * @param userBean
	 * @return
	 */
	public boolean addUser(UserBean userBean) {

		StringBuffer query = new StringBuffer();

		query.append(" INSERT INTO t_sys_user ( ");
		query.append(" 	`username`, ");
		query.append(" 	`password`, ");
		query.append(" 	`role`, ");
		query.append(" 	`sex`, ");
		query.append(" 	`birthday`, ");
		query.append(" 	`classname`, ");
		query.append(" 	`truename`, ");
		query.append(" 	`address`, ");
		query.append(" 	`email`, ");
		query.append(" 	`tel`, ");
		query.append(" 	`roleid` ");
		query.append(" ) ");
		query.append(" VALUES ");
		query.append(" 	( ");
		query.append(" 		:username, ");
		query.append(" 		:password, ");
		query.append(" 		:role, ");
		query.append(" 		:sex, ");
		query.append(" 		:birthday, ");
		query.append(" 		:classname, ");
		query.append(" 		:truename, ");
		query.append(" 		:address, ");
		query.append(" 		:email, ");
		query.append(" 		:tel, ");
		query.append(" 		:roleid ");
		query.append(" 	) ");

		int count = namedParameterJdbcTemplate.update(query.toString(),
				new BeanPropertySqlParameterSource(userBean));
		return count > 0 ? true : false;
	}

	/**
	 * 
	 * 编辑用户
	 * 
	 * @param userBean
	 * @param id
	 * @return
	 */
	public boolean editUser(UserBean userBean, String id) throws Exception {

		StringBuffer query = new StringBuffer();

		query.append(" UPDATE t_sys_user ");
		query.append(" SET `username` = :username, ");
		query.append("  `password` = :password, ");
		query.append("  `role` = :role, ");
		query.append("  `sex` = :sex, ");
		query.append("  `birthday` = :birthday, ");
		query.append("  `classname` = :classname, ");
		query.append("  `truename` = :truename, ");
		query.append("  `address` = :address, ");
		query.append("  `email` = :email, ");
		query.append("  `tel` = :tel, ");
		query.append("  `roleid` = :roleid ");
		query.append(" WHERE ");
		query.append(" 	id = '").append(id).append("' ");

		int count = namedParameterJdbcTemplate.update(query.toString(),
				new BeanPropertySqlParameterSource(userBean));

		return count > 0 ? true : false;
	}

	/**
	 * 
	 * 查看用户信息
	 * 
	 * @param id
	 * @return
	 */
	public UserBean checkUserInfo(String id) throws Exception {

		StringBuffer query = new StringBuffer();

		query.append(" SELECT ");
		query.append(" 	id, ");
		query.append(" 	username, ");
		query.append(" 	`password` role, ");
		query.append(" 	sex, ");
		query.append(" 	birthday, ");
		query.append(" 	classname, ");
		query.append(" 	truename, ");
		query.append(" 	address, ");
		query.append(" 	email, ");
		query.append(" 	tel, ");
		query.append(" 	roleid ");
		query.append(" FROM ");
		query.append(" 	t_sys_user ");
		query.append(" WHERE ");
		query.append(" 	id = '").append(id).append("' ");

		return jdbcTemplate.queryForObject(query.toString(),
				new BeanPropertyRowMapper<UserBean>(UserBean.class));
	}

	/**
	 * 
	 * 删除选中的用户
	 * 
	 * @param idStr
	 * @return
	 */
	public boolean delUsers(String idStr) throws Exception {

		List<String> queryArray = new ArrayList<String>();

		StringBuffer query = new StringBuffer();

		// 删除用户所拥有的试卷
		query.append(" DELETE FROM t_sys_user_papers WHERE user_id IN ( ")
				.append(idStr).append(" ) ");
		queryArray.add(query.toString());

		// 删除用户
		query.setLength(0);
		query.append(" DELETE FROM t_sys_user WHERE id IN ( ").append(idStr)
				.append(" ) ");
		queryArray.add(query.toString());

		int[] count = jdbcTemplate.batchUpdate(queryArray
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

}
