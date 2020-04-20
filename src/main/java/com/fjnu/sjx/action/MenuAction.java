/**   
 * 
 * 项目名称:	[test_on_line]
 * 包:		[com.fjnu.sjx.action]
 * 类名称:	[DicAction]
 * 类描述:	[字典菜单Action]
 * 创建人:	[sjx]
 * 创建时间:	[2017年1月30日 下午12:17:59]
 * 修改人:	[sjx]
 * 修改时间:	[2017年1月30日 下午12:17:59]
 * 修改备注:	[说明本次修改内容]
 * 版本:		[v1.0]
 *    
 */

package com.fjnu.sjx.action;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.fjnu.sjx.iface.GsonInterface;
import com.fjnu.sjx.impl.GsonInterfaceImpl;
import com.fjnu.sjx.service.MenuService;
import com.fjnu.sjx.util.BaseAction;
import com.fjnu.sjx.util.GlobalUtil;

@Namespace(value = "/")
@ParentPackage(value = "struts-default")
@Action(value = "menuAction", results = {
	@Result(name = "menu_list", location = "/page/menu/menu_list.jsp") 
})
public class MenuAction extends BaseAction {

	private static final long serialVersionUID = 1L;

	private Logger logger = Logger.getLogger(MenuAction.class);
	private GsonInterface gson = new GsonInterfaceImpl();
	@Autowired
	private MenuService menuService = null;
	
	/**
	 * 
	 * 获取所有的菜单
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getAllMenu() throws Exception {

		Map<String, Object> childrenMap = new LinkedHashMap<String, Object>();
		List<Map<String, Object>> stuList = null;
		try {
			stuList = menuService.getAllMenu();
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
	 * 获取菜单页面
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getMeunListPage() throws Exception {
		return "menu_list";
	}
	
	/**
	 * 
	 * 获取菜单列表
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getMenuList() throws Exception {

		List<Map<String, Object>> stuList = null;
		try {
			stuList = menuService.getAllMenu();
		} catch (Exception e) {
			e.printStackTrace();
		}

		out.print(gson.getConvertToJson(stuList));
		out.flush();
		out.close();

		return NONE;
	}
	
	/**
	 * 
	 * 获取所有父节点菜单
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getAllParentMenuList() throws Exception {
		
		List<Map<String, Object>> parentMenuList = null;
		try {
			parentMenuList = menuService.getAllParentMenuList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		out.print(gson.getConvertToJson(parentMenuList));
		out.flush();
		out.close();
		
		return NONE;
	}
	
	/**
	 * 
	 * 获取某个节点下最大的id
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getMaxIDForTreeNode() throws Exception {
		
		String parent_id = GlobalUtil.NullToStr(request.getParameter("id"));
		Map<String, Object> jsonMap = new LinkedHashMap<String, Object>();
		int maxId = 0;
		try {
			maxId = menuService.getMaxIDForTreeNode(parent_id);
			if (maxId <= 0 && StringUtils.isNotEmpty(parent_id)){
				int temp_id = GlobalUtil.NullToObjectZero(parent_id);
				maxId = temp_id * 100 + 1;
			}else{
				maxId += 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		jsonMap.put("maxId", maxId);
		
		out.print(gson.getConvertToJson(jsonMap));
		out.flush();
		out.close();
		
		return NONE;
	}
	
	/**
	 * 
	 * 添加菜单
	 * 
	 * @return
	 * @throws Exception
	 */
	public String addMenu() throws Exception {
		
		String id = GlobalUtil.NullToStr(request.getParameter("id"));
		String menu_name = GlobalUtil.NullToStr(request.getParameter("menu_name"));
		String menu_href = GlobalUtil.NullToStr(request.getParameter("menu_href"));
		String grade = GlobalUtil.NullToStr(request.getParameter("grade"));
		String isleaf = GlobalUtil.NullToStr(request.getParameter("isleaf"));
		String parent_id = GlobalUtil.NullToStr(request.getParameter("parent_id"));
		String iconCls = GlobalUtil.NullToStr(request.getParameter("iconCls"));
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", id);
		params.put("menu_name", menu_name);
		params.put("menu_href", menu_href);
		params.put("grade", grade);
		params.put("isleaf", isleaf);
		params.put("parent_id", parent_id);
		params.put("iconCls", iconCls);
		
		Map<String,Object> jsonMap = new LinkedHashMap<String, Object>();
		
		try {
			boolean flag = menuService.addMenu(params);
			if(flag){
				jsonMap.put("flag", true);
			}else{
				jsonMap.put("flag", false);
				jsonMap.put("msg", "未知错误,请与开发人员联系");
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
	 * 更新菜单信息
	 * 
	 * @return
	 * @throws Exception
	 */
	public String updateMenu() throws Exception {
		
		String id = GlobalUtil.NullToStr(request.getParameter("id"));
		String menu_name = GlobalUtil.NullToStr(request.getParameter("menu_name"));
		String menu_href = GlobalUtil.NullToStr(request.getParameter("menu_href"));
		String iconCls = GlobalUtil.NullToStr(request.getParameter("iconCls"));
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", id);
		params.put("menu_name", menu_name);
		params.put("menu_href", menu_href);
		params.put("iconCls", iconCls);
		
		Map<String,Object> jsonMap = new LinkedHashMap<String, Object>();
		
		try {
			boolean flag = menuService.updateMenu(params);
			if(flag){
				jsonMap.put("flag", true);
			}else{
				jsonMap.put("flag", false);
				jsonMap.put("msg", "未知错误,请与开发人员联系");
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
	 * 删除菜单
	 * 
	 * @return
	 * @throws Exception
	 */
	public String delMenu() throws Exception {
		
		String id = GlobalUtil.NullToStr(request.getParameter("id"));
		String isleaf = GlobalUtil.NullToStr(request.getParameter("isleaf"));
		
		Map<String, String> params = new HashMap<String, String>();
		params.put("id", id);
		params.put("idLike", id + "%");
		params.put("isleaf", isleaf);
		
		Map<String, Object> jsonMap = new LinkedHashMap<String, Object>();
		
		try {
			boolean flag = menuService.delMenu(params);
			if (flag) {
				jsonMap.put("flag", true);
			}else{
				jsonMap.put("flag", false);
				jsonMap.put("msg", "未知错误，请联系开发人员！");
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
