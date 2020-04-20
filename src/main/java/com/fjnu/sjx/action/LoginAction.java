/**   
 * 
 * 项目名称:	[test_on_line]
 * 包:		[com.fjnu.sjx.action]
 * 类名称:	[LoginAction]
 * 类描述:	[用户登录类]
 * 创建人:	[sjx]
 * 创建时间:	[2017年1月30日 下午12:19:09]
 * 修改人:	[sjx]
 * 修改时间:	[2017年1月30日 下午12:19:09]
 * 修改备注:	[说明本次修改内容]
 * 版本:		[v1.0]
 *    
 */

package com.fjnu.sjx.action;

import java.util.LinkedHashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;

import com.fjnu.sjx.bean.UserBean;
import com.fjnu.sjx.iface.GsonInterface;
import com.fjnu.sjx.impl.GsonInterfaceImpl;
import com.fjnu.sjx.service.LoginService;
import com.fjnu.sjx.util.BaseAction;

@Namespace(value = "/")
@ParentPackage(value = "struts-default")
@Action(value = "loginAction", results = {})
public class LoginAction extends BaseAction {

	private static final long serialVersionUID = 1L;

	private Logger logger = Logger.getLogger(LoginAction.class);
	private GsonInterface gson = new GsonInterfaceImpl();

	@Autowired
	private LoginService loginService = null;

	/**
	 * 用户登录
	 * 
	 * @return
	 * @throws Exception
	 */
	public String login() throws Exception {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String role = request.getParameter("role");

		Map<String, String> params = new LinkedHashMap<String, String>();
		params.put("username", username);
		params.put("password", password);
		params.put("role", role);

		Map<String, Object> jsonMap = new LinkedHashMap<String, Object>();

		try {
			UserBean userBean = loginService.isLogin(params);
			if (userBean != null) {
				session.setAttribute("userInfo", userBean);
			}
			jsonMap.put("flag", true);
		} catch (Exception e) {
			jsonMap.put("flag", false);
			jsonMap.put("msg", e.getMessage());
		} finally {
			out.print(gson.getConvertToJson(jsonMap));
			out.flush();
			out.close();
		}

		return NONE;
	}

	/**
	 * 
	 * 退出系统
	 * 
	 * @return
	 * @throws Exception
	 */
	public String logOut() throws Exception {

		Map<String, Object> jsonMap = new LinkedHashMap<String, Object>();

		try {
			session.invalidate();
			jsonMap.put("flag", true);
		} catch (Exception e) {
			jsonMap.put("flag", false);
			e.printStackTrace();
		}

		out.print(gson.getConvertToJson(jsonMap));
		out.flush();
		out.close();

		return NONE;
	}
}
