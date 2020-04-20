/**   
  * 
  * 项目名称:	[test_on_line]
  * 包:		[com.fjnu.sjx.action]
  * 类名称:	[TestAction]
  * 类描述:	[测试Action类]
  * 创建人:	[sjx]
  * 创建时间:	[2017年1月30日 下午12:19:09]
  * 修改人:	[sjx]
  * 修改时间:	[2017年1月30日 下午12:19:09]
  * 修改备注:	[说明本次修改内容]
  * 版本:		[v1.0]
  *    
  */

package com.fjnu.sjx.action;

import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.fjnu.sjx.util.BaseAction;


@Namespace(value="/")
@ParentPackage(value="struts-default")
@Action(value="testAction",results={
	@Result(name="test",location="/page/main.jsp")
})
public class TestAction extends BaseAction{
	
	private static final long serialVersionUID = 1L;
	
	Logger logger = Logger.getLogger(TestAction.class);
	
	public String test() throws Exception{
		logger.info("测试一下");
		return "test";
	}
	
	public String doPost() throws Exception{
		String action = request.getParameter("action");
		
		if("list".equals(action)){//获取属面板列表
			logger.info(this.getTreePanelList());
			out.print(this.getTreePanelList());
		}else if("node".equals(action)){
			logger.info(this.getTreeNodeList(request.getParameter("id")));
			out.print(this.getTreeNodeList(request.getParameter("id")));
		}
		
		return NONE;
	}
	
	public String getTreeNodeList(String id){
		JSONArray array = new JSONArray();
		for (int j = 0; j < 5; j++) {
			JSONObject json = new JSONObject();
			json.element("id", id + "-" +(j+1));
			json.element("text", "树节点-"+ id + "-" +(j+1));
			if((j+1) % 2 == 0 && id.length() <= 3){
				json.element("leaf", false);
			}else{
				json.element("leaf", true);
			}
			array.add(json);
		}
		return array.toString();
	}
	
	public String getTreePanelList(){
		JSONArray array = new JSONArray();
		for (int i = 0; i < 2; i++) { //生成5个属面板
			JSONObject json = new JSONObject();
			json.element("id", i+1);
			json.element("iconCls", "Reportedit");
			json.element("title", "Accordion菜单"+(i+1));
			array.add(json);
		}
		return array.toString();
	}
}
