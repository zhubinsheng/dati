/**   
 * 
 * 项目名称:	[test_on_line]
 * 包:		[com.fjnu.sjx.action]
 * 类名称:	[QuestionAction]
 * 类描述:	[一句话描述该类的功能]
 * 创建人:	[sjx]
 * 创建时间:	[2017年2月6日 下午1:40:43]
 * 修改人:	[sjx]
 * 修改时间:	[2017年2月6日 下午1:40:43]
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
import org.springframework.web.util.HtmlUtils;

import com.fjnu.sjx.bean.QuestionBean;
import com.fjnu.sjx.iface.GsonInterface;
import com.fjnu.sjx.impl.GsonInterfaceImpl;
import com.fjnu.sjx.service.QuestionService;
import com.fjnu.sjx.util.BaseAction;
import com.fjnu.sjx.util.GlobalUtil;

@Namespace(value = "/")
@ParentPackage(value = "struts-default")
@Action(value = "questionAction", results = { 
	@Result(name = "questions_list", location = "/page/questions/questions_list.jsp"),
	@Result(name = "questions_add_edit", location = "/page/questions/questions_add_edit.jsp")
})
public class QuestionAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	
	private Logger logger = Logger.getLogger(QuestionAction.class);
	
	private GsonInterface gson = new GsonInterfaceImpl();
	@Autowired
	private QuestionService questionService = null;

	/**
	 * 题库页面
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getQuestionsPage() throws Exception {
		return "questions_list";
	}

	/**
	 * 获取试题列表JSON
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getQuestionsList() throws Exception {
		
		String query = GlobalUtil.NullToStr(request.getParameter("query"));
		String knowledge = GlobalUtil.NullToStr(request.getParameter("knowledge"));
		String subject_name = GlobalUtil.NullToStr(request.getParameter("subject_name"));
		int start = GlobalUtil.NullToObjectZero(request.getParameter("start"));
		int limit = GlobalUtil.NullToObjectZero(request.getParameter("limit"));
		String page = GlobalUtil.NullToStrZero(request.getParameter("page"));
		String sort = GlobalUtil.NullToStr(request.getParameter("sort"));
		String dir = GlobalUtil.NullToStr(request.getParameter("dir"));
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("query","%" + query + "%");		//查询 试题,试题解析,试题来源
		params.put("knowledge",knowledge);			//学科中的某种知识
		params.put("subject_name",subject_name);	//学科
		params.put("start",start);
		params.put("limit",limit);
		params.put("page",page);
		params.put("sort",sort);
		params.put("dir",dir);
		
		List<Map<String, Object>> questionsList = null;
		int total = 0;
		try {
			total = questionService.getQuestionsListTotal(params);
			questionsList = questionService
					.getQuestionsList(params);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Map<String, Object> resultMap = new LinkedHashMap<String, Object>();
		resultMap.put("totalCount", total);
		resultMap.put("root", questionsList);
		
		out.print(gson.getConvertToJson(resultMap));
		out.flush();
		out.close();

		return NONE;
	}
	
	/**
	 * 获取试题添加页面
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getQuestionAddOrEditPage() throws Exception {
		
		String id = GlobalUtil.NullToStr(request.getParameter("id"));
		
		QuestionBean questionBean = null;
		List<Map<String, Object>> subjectList = null;
		List<Map<String, Object>> knowledgeList = null;
		
		try {
			if(StringUtils.isNotEmpty(id)){
				questionBean = questionService.getQuestionAddOrEditPage(id);
			}
			subjectList = questionService.getQuestionSubjectNameList();
			knowledgeList = questionService.getQuestionKnowledgeList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("id", id);
		request.setAttribute("questionBean", questionBean);
		request.setAttribute("subjectList", subjectList);
		request.setAttribute("knowledgeList", knowledgeList);
		
		return "questions_add_edit";
	}
	
	/**
	 * 保存试题
	 * 
	 * @return
	 * @throws Exception
	 */
	public String saveQuestion() throws Exception {
		
		String id = GlobalUtil.NullToStr(request.getParameter("id"));
		String subjectID = GlobalUtil.NullToStr(request.getParameter("subjectID"));
		String knowledgeID = GlobalUtil.NullToStr(request.getParameter("knowledgeID"));
		String question = GlobalUtil.NullToStr(request.getParameter("question"));
		String resolve = GlobalUtil.NullToStr(request.getParameter("resolve"));
		String answer = GlobalUtil.NullToStr(request.getParameter("answer"));
		String source_name = GlobalUtil.NullToStr(request.getParameter("source_name"));
		
		Map<String, String> params = new LinkedHashMap<String, String>();
		params.put("id", id);
		params.put("subjectID", subjectID);
		params.put("knowledgeID", knowledgeID);
		params.put("question", HtmlUtils.htmlEscape(question));
		params.put("resolve", resolve);
		params.put("answer", answer);
		params.put("source_name", source_name);
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		try {
			boolean flag = questionService.saveQuestion(params);
			if (flag){
				jsonMap.put("flag", true);
			}else{
				jsonMap.put("flag", false);
				jsonMap.put("msg", "未知错误，请与开发人员联系！");
				
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
	 * 删除试题
	 * 
	 * @return
	 * @throws Exception
	 */
	public String delQuestion() throws Exception {
		
		String ids = GlobalUtil.NullToStr(request.getParameter("ids"));
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		try {
			boolean flag = questionService.delQuestion(ids);
			if (flag){
				jsonMap.put("flag", true);
			}else{
				jsonMap.put("flag", false);
				jsonMap.put("msg","未知错误,请与开发人员联系!");	
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
	 * 获取学科列表
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getQuestionSubjectNameList() throws Exception {
		
		List<Map<String, Object>> subjectList = null;
		
		try {
			subjectList = questionService.getQuestionSubjectNameList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		out.print(gson.getConvertToJson(subjectList));
		out.flush();
		out.close();
		
		return NONE;
	}
	
	/**
	 * 获取知识点列表
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getQuestionKnowledgeList() throws Exception {
		
		List<Map<String, Object>> knowledgeList = null;
		try{
			knowledgeList = questionService.getQuestionKnowledgeList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		out.print(gson.getConvertToJson(knowledgeList));
		out.flush();
		out.close();
		
		return NONE;
	}
}
