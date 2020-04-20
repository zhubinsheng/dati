package com.fjnu.sjx.service;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.sql2o.Sql2o;

import com.fjnu.sjx.bean.UserBean;
import com.fjnu.sjx.util.LoggerUtil;

@Service
@Transactional
public class LoginService {

	private Logger logger = Logger.getLogger(LoginService.class);

	@Autowired
	private JdbcTemplate jdbcTemplate = null;
	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate = null;
	@Autowired
	private Sql2o sql2o = null;

	/**
	 * 判断是否存在该用户
	 * 
	 * @param params
	 * @return
	 * @throws Exception
	 */
	public UserBean isLogin(Map<String, String> params) throws Exception {
		String username = params.get("username");
		String password = params.get("password");
		String role = params.get("role");
		
		StringBuffer query = new StringBuffer();
		query.append(" SELECT ");
		query.append(" 	* ");
		query.append(" FROM ");
		query.append(" 	t_sys_user ");
		query.append(" WHERE ");
		query.append(" 	username = :username ");
		query.append(" AND password = :password ");
		query.append(" AND role = :role ");

		LoggerUtil.info("[LoginService]判断是否存在该用户",query.toString(), params);
		
		UserBean userBean = null;
		
		try {
			userBean = sql2o.createQuery(query.toString())
					.addParameter("username", username)
					.addParameter("password", password)
					.addParameter("role", role)
					.executeAndFetchFirst(UserBean.class);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (userBean == null) {
				throw new Exception("登录失败!<br/>"
						+ "可能造成的原因如下：<br/>"
						+ "<font color='red'>"
						+ "（1）信息填写不完整/错误；<br/>"
						+ "（2）注册的用户未授权；"
						+ "</font>");
			}
		}

		return userBean;
	}
}
