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
import com.fjnu.sjx.service.DicService;
import com.fjnu.sjx.util.BaseAction;
import com.fjnu.sjx.util.GlobalUtil;

@Namespace(value = "/")
@ParentPackage(value = "struts-default")
@Action(value = "dicAction", results = { 
	@Result(name = "dic_list", location = "/page/dictionary/dic_list.jsp") 
})
public class DicAction extends BaseAction {

	private static final long serialVersionUID = 1L;

	private Logger logger = Logger.getLogger(DicAction.class);
	private GsonInterface gson = new GsonInterfaceImpl();
	@Autowired
	private DicService dicService = null;

	/**
	 * 跳转到数据字典页面
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getDicPage() throws Exception {
		return "dic_list";
	}

	/**
	 * 获取数据字典树列表JSON
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getDicList() throws Exception {
		Map<String, Object> treeMap = null;
		try {
			treeMap = dicService.getDicList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		out.print(gson.getConvertToJson(treeMap));
		out.flush();
		out.close();
		
		return NONE;
	}
	
	/**
	 * 获取数据字典中的父节点(即非叶子节点)
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getDicParentNodeList() throws Exception {
		
		List<Map<String, Object>> parentNodeList = null;
		
		try {
			parentNodeList = dicService.getDicParentNodeList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		out.print(gson.getConvertToJson(parentNodeList));
		out.flush();
		out.close();
		
		return NONE;
	}
	
	/**
	 * 更新数据字典的节点信息
	 * 
	 * @return
	 * @throws Exception
	 */
	public String updateDict() throws Exception {
		String id = GlobalUtil.NullToStr(request.getParameter("id"));
		String dic_name = GlobalUtil.NullToStr(request.getParameter("dic_name"));
		String dic_value = GlobalUtil.NullToStr(request.getParameter("dic_value"));
		
		//设置参数
		Map<String, String> params = new LinkedHashMap<String, String>();
		params.put("id", id);
		params.put("dic_name", dic_name);
		params.put("dic_value", dic_value);
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		try {
			int result = dicService.updateDict(params);
			if (result > 0){
				jsonMap.put("flag", true);
			}else{
				jsonMap.put("flag", false);
				jsonMap.put("msg", "未知错误,请联系开发人员！");
			}
		} catch (Exception e) {
			jsonMap.put("msg", e.getMessage());
			e.printStackTrace();
		}
		
		out.print(gson.getConvertToJson(jsonMap));
		out.flush();
		out.close();
		
		return NONE;
	}
	
	/**
	 * 获取每个父节点中子节点的最大ID
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getMaxTreeNodeForID() throws Exception{
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		String id = request.getParameter("id");
		int maxId = 0;
		try {
			maxId = GlobalUtil.NullToObjectZero(dicService.getMaxTreeNodeForID(id));
			if (maxId <= 0 && StringUtils.isNotEmpty(id)){
				int parent_id = GlobalUtil.NullToObjectZero(id);
				maxId = parent_id * 100 + 1;
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
	 * 增加新节点
	 * 
	 * @return
	 * @throws Exception
	 */
	public String addParentNode() throws Exception {
		
		String parent_id = GlobalUtil.NullToStr(request.getParameter("parent_id"));
		String parent_name = GlobalUtil.NullToStr(request.getParameter("parent_name"));
		String id = GlobalUtil.NullToStr(request.getParameter("id"));
		String dic_name = GlobalUtil.NullToStr(request.getParameter("dic_name"));
		String dic_value = GlobalUtil.NullToStr(request.getParameter("dic_value"));
		String grade = GlobalUtil.NullToStr(request.getParameter("grade"));
		String sort = GlobalUtil.NullToStr(request.getParameter("sort"));
		String isleaf = GlobalUtil.NullToStr(request.getParameter("isleaf"));
		
		Map<String, String> params = new HashMap<String, String>();
		params.put("parent_id", parent_id);
		params.put("parent_name", parent_name);
		params.put("id", id);
		params.put("dic_name", dic_name);
		params.put("dic_value", dic_value);
		params.put("grade", grade);
		params.put("sort", sort);
		params.put("isleaf", isleaf);
		
		Map<String, Object> jsonMap = new LinkedHashMap<String, Object>();
		
		try {
			boolean flag = dicService.addParentNode(params);
			if (flag){
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
	
	/**
	 * 删除某一个节点
	 * 
	 * @return
	 * @throws Exception
	 */
	public String delTreeNode() throws Exception {
		
		String id = GlobalUtil.NullToStr(request.getParameter("id"));
		String parent_id = GlobalUtil.NullToStr(request.getParameter("parent_id"));
		String isleaf = GlobalUtil.NullToStr(request.getParameter("isleaf"));
		
		Map<String, String> params = new HashMap<String, String>();
		params.put("id", id);
		params.put("idLike", id + "%");
		params.put("parent_id", parent_id);
		params.put("isleaf", isleaf);
		
		Map<String, Object> jsonMap = new LinkedHashMap<String, Object>();
		
		try {
			boolean flag = dicService.delTreeNode(params);
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
	
	/**
	 * 获取某个key下的子节点
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getSubDictOfOneKey() throws Exception {
		
		String key = GlobalUtil.NullToStr(request.getParameter("key"));
		
		Map<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("key", key);
		
		List<Map<String, Object>> dictList = null;
		try {
			dictList = dicService.getSubDictOfOneKey(paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		out.print(gson.getConvertToJson(dictList));
		out.flush();
		out.close();
		
		return NONE;
	}
}
