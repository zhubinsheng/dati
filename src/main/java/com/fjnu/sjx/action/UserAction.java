package com.fjnu.sjx.action;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.fjnu.sjx.bean.UserBean;
import com.fjnu.sjx.iface.GsonInterface;
import com.fjnu.sjx.impl.GsonInterfaceImpl;
import com.fjnu.sjx.service.UserService;
import com.fjnu.sjx.util.BaseAction;
import com.fjnu.sjx.util.GlobalUtil;
import com.opensymphony.xwork2.ModelDriven;

@Namespace(value = "/")
@ParentPackage(value = "struts-default")
@Action(value = "userAction", results = {
		@Result(name = "user_info", location = "/page/personal/user_info.jsp"),
		@Result(name = "user_list", location = "/page/user_managent/user_list.jsp"),
		@Result(name = "check_userinfo", location = "/page/user_managent/check_userinfo.jsp")
})
public class UserAction extends BaseAction implements ModelDriven<UserBean>{

	private static final long serialVersionUID = 1L;

	private Logger logger = Logger.getLogger(UserAction.class);

	private GsonInterface gson = new GsonInterfaceImpl();
	@Autowired
	private UserService userServices = null;
	
	private UserBean userBean = new UserBean();
	
	public UserBean getUserBean() {
		return userBean;
	}

	public void setUserBean(UserBean userBean) {
		this.userBean = userBean;
	}
	
	@Override
	public UserBean getModel() {
		return userBean;
	}
	
	/**
	 * 
	 * 获取所有的学生信息
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getAllRoleOfStuUserInfo() throws Exception {

		Map<String, Object> childrenMap = new LinkedHashMap<String, Object>();
		List<Map<String, Object>> stuList = null;
		try {
			stuList = userServices.getAllRoleOfStuUserInfo();
		} catch (Exception e) {
			e.printStackTrace();
		}

		childrenMap.put("children", stuList);

		out.print(gson.getConvertToJson(childrenMap));
		out.flush();
		out.close();

		return NONE;
	}

	/**
	 * 
	 * 跳转到个人信息页面
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getUserinfoPage() throws Exception {
		return "user_info";
	}

	/**
	 * 
	 * 修改个人信息
	 * 
	 * @return
	 * @throws Exception
	 */
	public String updateUserInfo() throws Exception {

		String truename = GlobalUtil
				.NullToStr(request.getParameter("truename"));
		String tel = GlobalUtil.NullToStr(request.getParameter("tel"));
		String email = GlobalUtil.NullToStr(request.getParameter("email"));
		String address = GlobalUtil.NullToStr(request.getParameter("address"));
		String user_id = GlobalUtil.NullToStr(request.getParameter("user_id"));

		Map<String, String> params = new HashMap<String, String>();
		params.put("truename", truename);
		params.put("tel", tel);
		params.put("email", email);
		params.put("address", address);
		params.put("user_id", user_id);

		Map<String, Object> jsonMap = new LinkedHashMap<String, Object>();
		try {
			boolean flag = userServices.updateUserInfo(params);
			if (flag) {
				UserBean userBean = (UserBean) session.getAttribute("userInfo");
				userBean.setTruename(truename);
				userBean.setTel(tel);
				userBean.setAddress(address);
				userBean.setEmail(email);

				session.setAttribute("userInfo", userBean);

				jsonMap.put("flag", true);
			} else {
				jsonMap.put("flag", false);
				jsonMap.put("msg", "未知错误,请与开发人员联系!");
			}
		} catch (Exception e) {
			jsonMap.put("flag", false);
			jsonMap.put("msg", e.getMessage());
			e.printStackTrace();
		}

		out.print(gson.getConvertToJson(jsonMap));
		out.flush();
		out.close();

		return NONE;
	}

	/**
	 *
	 * 获取用户列表页面
	 *
	 * @return
	 * @throws Exception
	 */
	public String getUserListPage() throws Exception {
		return "user_list";
	}
	
	/**
	 * 
	 * 获取所有用户
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getUserList() throws Exception {
		
		Map<String, Object> paramsMap = new HashMap<String, Object>();
		
		String query = GlobalUtil.NullToStr(request.getParameter("query"));
		int start = GlobalUtil.NullToObjectZero(request.getParameter("start"));
		int limit = GlobalUtil.NullToObjectZero(request.getParameter("limit"));
		String page = GlobalUtil.NullToStrZero(request.getParameter("page"));
		String sort = GlobalUtil.NullToStr(request.getParameter("sort"));
		String dir = GlobalUtil.NullToStr(request.getParameter("dir"));
		
		paramsMap.put("query", "%"+query+"%");
		paramsMap.put("start",start);
		paramsMap.put("limit",limit);
		paramsMap.put("page",page);
		paramsMap.put("sort",sort);
		paramsMap.put("dir",dir);
		
		int totalCount = 0;
		List<Map<String, Object>> papersList = null;
		try {
			totalCount = userServices.getUserListCount(paramsMap);
			papersList = userServices.getUserList(paramsMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Map<String, Object> papersMap = new LinkedHashMap<String, Object>();
		papersMap.put("totalCount", totalCount);
		papersMap.put("root", papersList);
		
		out.print(gson.getConvertToJson(papersMap));
		out.flush();
		out.close();
		
		return NONE;
	}
	
	/**
	 * 
	 * 添加新用户
	 * 
	 * @return
	 * @throws Exception
	 */
	public String addUser() throws Exception {
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		
		try {
			boolean flag = userServices.addUser(userBean);
			if(flag){
				jsonMap.put("flag", true);
			}else{
				jsonMap.put("flag", false);
				jsonMap.put("msg", "未知错误,请与开发人员联系!");
			}
		} catch (Exception e) {
			jsonMap.put("flag", false);
			jsonMap.put("msg", e.getMessage());
			e.printStackTrace();
		}
		
		out.print(gson.getConvertToJson(jsonMap));
		out.flush();
		out.close();
		
		return NONE;
	}
	
	/**
	 * 
	 * 编辑用户
	 * 
	 * @return
	 * @throws Exception
	 */
	public String editUser() throws Exception {
		
		String id = GlobalUtil.NullToStr(request.getParameter("id"));
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		
		try {
			boolean flag = userServices.editUser(userBean,id);
			if(flag){
				jsonMap.put("flag", true);
			}else{
				jsonMap.put("flag", false);
				jsonMap.put("msg", "未知错误,请与开发人员联系!");
			}
		} catch (Exception e) {
			jsonMap.put("flag", false);
			jsonMap.put("msg", e.getMessage());
			e.printStackTrace();
		}
		
		out.print(gson.getConvertToJson(jsonMap));
		out.flush();
		out.close();
		
		return NONE;
	}
	
	/**
	 * 
	 * 查看用户信息
	 * 
	 * @return
	 * @throws Exception
	 */
	public String checkUserInfo() throws Exception {
		
		String id = GlobalUtil.NullToStr(request.getParameter("id"));
		
		UserBean userBean = null;
		try {
			userBean =  userServices.checkUserInfo(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("userBean", userBean);
		return "check_userinfo";
	}
	
	/**
	 * 
	 * 删除选中的用户
	 * 
	 * @return
	 * @throws Exception
	 */
	public String delUsers() throws Exception {
		
		String idStr = GlobalUtil.NullToStr(request.getParameter("idStr"));
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		
		try {
			boolean flag = userServices.delUsers(idStr);
			if(flag){
				jsonMap.put("flag", true);
			}else{
				jsonMap.put("flag", false);
				jsonMap.put("msg", "未知错误,请与开发人员联系!");
			}
		} catch (Exception e) {
			jsonMap.put("flag", false);
			jsonMap.put("msg", e.getMessage());
			e.printStackTrace();
		}
		
		out.print(gson.getConvertToJson(jsonMap));
		out.flush();
		out.close();
		
		return NONE;
	}
}
