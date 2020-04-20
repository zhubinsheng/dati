/**   
 * 
 * 项目名称:	[test_on_line]
 * 包:		[com.fjnu.sjx.action]
 * 类名称:	[RoleAction]
 * 类描述:	[用户的权限与可见菜单]
 * 创建人:	[sjx]
 * 创建时间:	[2017年1月30日 下午12:19:09]
 * 修改人:	[sjx]
 * 修改时间:	[2017年1月30日 下午12:19:09]
 * 修改备注:	[说明本次修改内容]
 * 版本:		[v1.0]
 *    
 */

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
import com.fjnu.sjx.service.RoleService;
import com.fjnu.sjx.util.BaseAction;
import com.fjnu.sjx.util.GlobalUtil;

@Namespace(value = "/")
@ParentPackage(value = "struts-default")
@Action(value = "roleAction", results = { 
	@Result(name = "role_list", location = "/page/role/role_list.jsp") 
})
public class RoleAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	private Logger logger = Logger.getLogger(RoleAction.class);
	private GsonInterface gson = new GsonInterfaceImpl();
	@Autowired
	private RoleService roleService = null;

	/**
	 * 获取用户可见菜单(一级)
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getRoleMenuParent() throws Exception {

		Map<String, String> params = new HashMap<String, String>();

		String roleID = GlobalUtil.NullToStr(request.getParameter("roleID"));

		params.put("roleID", roleID);

		List<Map<String, Object>> queryList = roleService
				.getRoleMenuParent(params);

		out.print(gson.getConvertToJson(queryList));
		out.flush();
		out.close();

		return NONE;
	}

	/**
	 * 获取子菜单
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getRoleMenuIsLeaf() throws Exception {

		String menu_parent_id = GlobalUtil
				.NullToStr(request.getParameter("id")) + "%";
		String roleID = GlobalUtil.NullToStr(request.getParameter("roleID"));
		Map<String, String> params = new HashMap<String, String>();

		params.put("menu_parent_id", menu_parent_id);
		params.put("roleID", roleID);

		List<Map<String, Object>> queryList = roleService
				.getRoleMenuIsLeaf(params);

		out.print(gson.getConvertToJson(queryList));
		out.flush();
		out.close();

		return NONE;
	}

	/**
	 * 
	 * 角色页面
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getRoleListPage() throws Exception {
		return "role_list";
	}
	
	/**
	 * 
	 * 获取所有角色
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getRoleList() throws Exception {
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
			totalCount = roleService.getRoleListCount(paramsMap);
			papersList = roleService.getRoleList(paramsMap);
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
	 * 添加角色
	 * 
	 * @return
	 * @throws Exception
	 */
	public String addRole() throws Exception {
		
		String role_name = GlobalUtil.NullToStr(request.getParameter("role_name"));
		String menu_ids = GlobalUtil.NullToStr(request.getParameter("menu_ids"));
		
		Map<String, String> params = new HashMap<String, String>();
		params.put("role_name", role_name);
		params.put("menu_ids", menu_ids);
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		try {
			boolean flag = roleService.addRole(params);
			if (flag){
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
	 * 删除角色
	 * 
	 * @return
	 * @throws Exception
	 */
	public String delRole() throws Exception {
		
		String idStr = GlobalUtil.NullToStr(request.getParameter("idStr"));
		
		Map<String, Object> jsonMap = new LinkedHashMap<String, Object>();
		
		try {
			boolean flag = roleService.delRole(idStr);
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
	 * 编辑角色
	 * 
	 * @return
	 * @throws Exception
	 */
	public String editRole() throws Exception {
		
		String role_name = GlobalUtil.NullToStr(request.getParameter("role_name"));
		String role_id = GlobalUtil.NullToStr(request.getParameter("role_id"));
		String menu_ids = GlobalUtil.NullToStr(request.getParameter("menu_ids"));
		
		Map<String, String> params = new HashMap<String, String>();
		params.put("role_name", role_name);
		params.put("role_id", role_id);
		params.put("menu_ids", menu_ids);
		
		Map<String, Object> jsonMap = new LinkedHashMap<String, Object>();
		
		try {
			boolean flag = roleService.editRole(params);
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
	 * 获取所有角色
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getAllRoleList() throws Exception {
		
		List<Map<String, Object>> roleList = null;
		
		try {
			roleList = roleService.getAllRoleList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		out.print(gson.getConvertToJson(roleList));
		out.flush();
		out.close();
		
		return NONE;
	}
	
	/**
	 * 
	 * 获取用户的权限
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getRoleMenu() throws Exception {
		
		
		String role_id = GlobalUtil.NullToStr(request.getParameter("role_id"));
		List<Map<String, Object>> roleMenuList = null;
		try {
			roleMenuList = roleService.getRoleMenu(role_id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		out.print(gson.getConvertToJson(roleMenuList));
		out.flush();
		out.close();
		
		return NONE;
	}
}
