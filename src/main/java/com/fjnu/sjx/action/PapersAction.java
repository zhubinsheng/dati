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

import java.util.ArrayList;
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
import com.fjnu.sjx.service.PapersService;
import com.fjnu.sjx.util.BaseAction;
import com.fjnu.sjx.util.GlobalUtil;

@Namespace(value = "/")
@ParentPackage(value = "struts-default")
@Action(value = "papersAction", results = { 
	@Result(name = "papers_list", location = "/page/papers/papers_list.jsp"),
	@Result(name = "papers_questions_list", location = "/page/papers/papers_questions_list.jsp"),
	@Result(name = "preview_papers", location = "/page/papers/preview_papers.jsp"),
	@Result(name = "stu_papers_list_wait", location = "/page/papers/stu_papers_list_wait.jsp"),
	@Result(name = "exam_papers", location = "/page/papers/exam_papers.jsp"),
	@Result(name = "stu_papers_list_answered", location = "/page/papers/stu_papers_list_answered.jsp"),
	@Result(name = "exam_papers_result", location = "/page/papers/exam_papers_result.jsp"),
	@Result(name = "all_stu_papers_result", location = "/page/papers/all_stu_papers_result.jsp"),
})
public class PapersAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	
	private Logger logger = Logger.getLogger(PapersAction.class);
	
	private GsonInterface gson = new GsonInterfaceImpl();
	@Autowired
	private PapersService papersService = null;

	/**
	 * 试卷页面
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getPapersPage() throws Exception {
		return "papers_list";
	}
	
	/**
	 * 获取试卷列表
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getPapersList() throws Exception {
		
		Map<String, Object> paramsMap = new HashMap<String, Object>();
		
		UserBean userBean = (UserBean) session.getAttribute("userInfo");
		String query = GlobalUtil.NullToStr(request.getParameter("query"));
		String subject_name = GlobalUtil.NullToStr(request.getParameter("subject_name"));
		int start = GlobalUtil.NullToObjectZero(request.getParameter("start"));
		int limit = GlobalUtil.NullToObjectZero(request.getParameter("limit"));
		String page = GlobalUtil.NullToStrZero(request.getParameter("page"));
		String sort = GlobalUtil.NullToStr(request.getParameter("sort"));
		String dir = GlobalUtil.NullToStr(request.getParameter("dir"));
		
		paramsMap.put("user_id", String.valueOf(userBean.getId()));	//用户ID
		paramsMap.put("role", userBean.getRole());	//角色
		paramsMap.put("query", "%"+query+"%");
		paramsMap.put("subject_name", subject_name);
		paramsMap.put("start",start);
		paramsMap.put("limit",limit);
		paramsMap.put("page",page);
		paramsMap.put("sort",sort);
		paramsMap.put("dir",dir);
		
		int totalCount = 0;
		List<Map<String, Object>> papersList = null;
		try {
			totalCount = papersService.getPapersListCount(paramsMap);
			papersList = papersService.getPapersList(paramsMap);
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
	 * 编辑试卷页面
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getPaperQuestionsPage() throws Exception {
		
		String papers_id = request.getParameter("papers_id");
		
		request.setAttribute("papers_id", papers_id);
		
		return "papers_questions_list";
	}
	
	/**
	 * 获取试卷的题目
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getPaperQuestionsList() throws Exception {
		
		String papers_id = GlobalUtil.NullToStr(request.getParameter("papers_id"));
		
		String query = GlobalUtil.NullToStr(request.getParameter("query"));
		String knowledge = GlobalUtil.NullToStr(request.getParameter("knowledge"));
		String subject_name = GlobalUtil.NullToStr(request.getParameter("subject_name"));
		int start = GlobalUtil.NullToObjectZero(request.getParameter("start"));
		int limit = GlobalUtil.NullToObjectZero(request.getParameter("limit"));
		String page = GlobalUtil.NullToStrZero(request.getParameter("page"));
		String sort = GlobalUtil.NullToStr(request.getParameter("sort"));
		String dir = GlobalUtil.NullToStr(request.getParameter("dir"));
		
		String isShowThisPapersQuestions = GlobalUtil.NullToStr(request.getParameter("isShowThisPapersQuestions"));
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("papers_id", papers_id);
		params.put("query","%" + query + "%");		//查询 试题,试题解析,试题来源
		params.put("knowledge",knowledge);			//学科中的某种知识
		params.put("subject_name",subject_name);	//学科
		params.put("start",start);
		params.put("limit",limit);
		params.put("page",page);
		params.put("sort",sort);
		params.put("dir",dir);
		params.put("isShowThisPapersQuestions",isShowThisPapersQuestions);
		
		List<Map<String, Object>> paperQuestionsList = new ArrayList<Map<String,Object>>();
		
		int totalCount = 0;
		try {
			totalCount = papersService.getPaperQuestionsListCount(params);
			paperQuestionsList = papersService.getPaperQuestionsList(params);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Map<String, Object> questionsMap = new LinkedHashMap<String, Object>();
		
		questionsMap.put("totalCount", totalCount);
		questionsMap.put("root", paperQuestionsList);
		
		out.print(gson.getConvertToJson(questionsMap));
		out.flush();
		out.close();
		
		return NONE;
	}
	
	/**
	 * 删除卷子下的试题
	 * 
	 * @return
	 * @throws Exception
	 */
	public String delPapersQuestions () throws Exception {
		
		String ids = GlobalUtil.NullToStr(request.getParameter("ids"));
		String papers_id = GlobalUtil.NullToStr(request.getParameter("papers_id"));
		
		Map<String, String> params = new HashMap<String, String>();
		
		params.put("ids", ids);
		params.put("papers_id", papers_id);
		
		Map<String, Object> jsonMap = new LinkedHashMap<String, Object>();
		
		try {
			boolean flag = papersService.delPapersQuestions(params);
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
	 * 添加试题至卷子
	 * 
	 * @return
	 * @throws Exception
	 */
	public String addQuestionsToPapers () throws Exception {
		
		String ids = GlobalUtil.NullToStr(request.getParameter("ids"));
		String papers_id = GlobalUtil.NullToStr(request.getParameter("papers_id"));
		
		Map<String, String> params = new HashMap<String, String>();
		
		params.put("ids", ids);
		params.put("papers_id", papers_id);
		
		Map<String, Object> jsonMap = new LinkedHashMap<String, Object>();
		
		try {
			boolean flag = papersService.addQuestionsToPapers(params);
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
	 * 添加卷子
	 * 
	 * @return
	 * @throws Exception
	 */
	public String addPapers() throws Exception {
		
		String papers_name =  GlobalUtil.NullToStr(request.getParameter("papers_name"));
		String papers_ppl =  GlobalUtil.NullToStr(request.getParameter("papers_ppl"));
		String college =  GlobalUtil.NullToStr(request.getParameter("college"));
		String papers_dic_value =  GlobalUtil.NullToStr(request.getParameter("papers_dic_value"));
		
		HashMap<String, String> paramsMap = new HashMap<String, String>();
		paramsMap.put("papers_name",papers_name);
		paramsMap.put("papers_ppl",papers_ppl);
		paramsMap.put("college",college);
		paramsMap.put("papers_dic_value",papers_dic_value);
		
		
		LinkedHashMap<String, Object> jsonMap = new LinkedHashMap<String, Object>();
		try {
			boolean flag = papersService.addPapers(paramsMap);
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
	 * 删除试卷
	 * 
	 * @return
	 * @throws Exception
	 */
	public String delPapers() throws Exception {
		
		String ids = GlobalUtil.NullToStr(request.getParameter("ids"));
		LinkedHashMap<String, Object> jsonMap = new LinkedHashMap<String, Object>();
		
		try {
			boolean flag = papersService.delPapersQuestions(ids);
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
	 * 预览试卷
	 * 
	 * @return
	 * @throws Exception
	 */
	public String previewPapersPage () throws Exception {
		
		//获取卷子编号
		String papers_id = GlobalUtil.NullToStr(request.getParameter("papers_id"));
		Map<String, Object>  papersDetail = null;
		List<Map<String, Object>> papersList = null;
		try {
			papersDetail = papersService.getPapersDetail(papers_id);
			papersList = papersService.getPapersList(papers_id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Map<String, Object> papersMap = new LinkedHashMap<String, Object>();
		papersMap.put("papersDetail", papersDetail);
		papersMap.put("data", papersList);
		
		request.setAttribute("papersMap", papersMap);
		
		return "preview_papers";
	}
	
	/**
	 * 派发试卷给用户
	 * 
	 * @return
	 * @throws Exception
	 */
	public String handOutPapers() throws Exception {
		
		String papers_id = GlobalUtil.NullToStr(request.getParameter("papers_id"));
		String user_ids = GlobalUtil.NullToStr(request.getParameter("user_ids"));
		
		Map<String,String> params = new HashMap<String, String>();
		params.put("papers_id", papers_id);
		params.put("user_ids", user_ids);
		
		Map<String, Object> jsonMap = new LinkedHashMap<String, Object>();
		try {
			boolean flag = papersService.handOutPapers(params);
			if(flag){
				jsonMap.put("flag",true);
			}else{
				jsonMap.put("flag",false);
				jsonMap.put("msg", "未知错误,请与开发人员联系!");
			}
		} catch (Exception e) {
			jsonMap.put("flag",false);
			jsonMap.put("msg", e.getMessage());
			e.printStackTrace();
		}
		
		out.print(gson.getConvertToJson(jsonMap));
		out.flush();
		out.close();
		
		return NONE;
	}
	
	/**
	 * 学生待考
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getStuPapersListWait() throws Exception {
		return "stu_papers_list_wait";
	}
	
	/**
	 * 
	 * 获取学生待考试卷
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getStuPapersWaitList() throws Exception {
		
		Map<String, Object> paramsMap = new HashMap<String, Object>();
		
		UserBean userBean = (UserBean) session.getAttribute("userInfo");
		String query = GlobalUtil.NullToStr(request.getParameter("query"));
		String subject_name = GlobalUtil.NullToStr(request.getParameter("subject_name"));
		int start = GlobalUtil.NullToObjectZero(request.getParameter("start"));
		int limit = GlobalUtil.NullToObjectZero(request.getParameter("limit"));
		String page = GlobalUtil.NullToStrZero(request.getParameter("page"));
		String sort = GlobalUtil.NullToStr(request.getParameter("sort"));
		String dir = GlobalUtil.NullToStr(request.getParameter("dir"));
		
		paramsMap.put("user_id", String.valueOf(userBean.getId()));	//用户ID
		paramsMap.put("role", userBean.getRole());	//角色
		paramsMap.put("query", "%"+query+"%");
		paramsMap.put("subject_name", subject_name);
		paramsMap.put("start",start);
		paramsMap.put("limit",limit);
		paramsMap.put("page",page);
		paramsMap.put("sort",sort);
		paramsMap.put("dir",dir);
		
		int totalCount = 0;
		List<Map<String, Object>> papersList = null;
		try {
			totalCount = papersService.getStuPapersWaitListCount(paramsMap);
			papersList = papersService.getStuPapersWaitList(paramsMap);
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
	 * 开始考试,试卷页面
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getStarExamPage() throws Exception {
		
		//获取卷子编号和用户编号
		String papers_id = GlobalUtil.NullToStr(request.getParameter("papers_id"));
		String user_id = GlobalUtil.NullToStr(request.getParameter("user_id"));
		
		Map<String, String> params = new HashMap<String, String>();
		
		params.put("papers_id", papers_id);
		params.put("user_id", user_id);
		
		Map<String, Object>  papersDetail = null;
		List<Map<String, Object>> papersList = null;
		try {
			papersDetail = papersService.getExamPapersDetail(params);
			papersList = papersService.getExamPapersList(params);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Map<String, Object> papersMap = new LinkedHashMap<String, Object>();
		papersMap.put("papersDetail", papersDetail);
		papersMap.put("data", papersList);
		papersMap.put("total", papersList.size());
		
		request.setAttribute("papersMap", papersMap);
		
		return "exam_papers";
	}
	
	/**
	 * 
	 * 提交试卷
	 * 
	 * @return
	 * @throws Exception
	 */
	public String submitPaper() throws Exception {
		
		String answer_json = GlobalUtil.NullToStr(request.getParameter("json"));
		String user_id = GlobalUtil.NullToStr(request.getParameter("user_id"));
		String papers_id = GlobalUtil.NullToStr(request.getParameter("papers_id"));
		
		Map<String, String> params = new HashMap<String,String>();
		params.put("answer_json", answer_json);
		params.put("user_id", user_id);
		params.put("papers_id", papers_id);
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		try {
			boolean flag =papersService.submitPaper(params);
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
	 * 学生已考试卷页面
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getStuPapersListAnsweredPage() throws Exception {
		return "stu_papers_list_answered";
	}
	
	/**
	 * 
	 * 获取已考试卷
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getStuPapersAnsweredList() throws Exception {
		
		Map<String, Object> paramsMap = new HashMap<String, Object>();
		
		UserBean userBean = (UserBean) session.getAttribute("userInfo");
		String query = GlobalUtil.NullToStr(request.getParameter("query"));
		String subject_name = GlobalUtil.NullToStr(request.getParameter("subject_name"));
		int start = GlobalUtil.NullToObjectZero(request.getParameter("start"));
		int limit = GlobalUtil.NullToObjectZero(request.getParameter("limit"));
		String page = GlobalUtil.NullToStrZero(request.getParameter("page"));
		String sort = GlobalUtil.NullToStr(request.getParameter("sort"));
		String dir = GlobalUtil.NullToStr(request.getParameter("dir"));
		
		paramsMap.put("user_id", String.valueOf(userBean.getId()));	//用户ID
		paramsMap.put("role", userBean.getRole());	//角色
		paramsMap.put("query", "%"+query+"%");
		paramsMap.put("subject_name", subject_name);
		paramsMap.put("start",start);
		paramsMap.put("limit",limit);
		paramsMap.put("page",page);
		paramsMap.put("sort",sort);
		paramsMap.put("dir",dir);
		
		int totalCount = 0;
		List<Map<String, Object>> papersList = null;
		try {
			totalCount = papersService.getStuPapersAnsweredListCount(paramsMap);
			papersList = papersService.getStuPapersAnsweredList(paramsMap);
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
	 * 查看考试结果
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getExamResultPage() throws Exception {
		
		//获取卷子编号和用户编号
		String papers_id = GlobalUtil.NullToStr(request.getParameter("papers_id"));
		String user_id = GlobalUtil.NullToStr(request.getParameter("user_id"));
		
		Map<String, String> params = new HashMap<String, String>();
		
		params.put("papers_id", papers_id);
		params.put("user_id", user_id);
		
		Map<String, Object>  papersDetail = null;
		List<Map<String, Object>> papersList = null;
		String resultJSON = null;
		try {
			papersDetail = papersService.getExamPapersDetail(params);
			papersList = papersService.getExamPapersList(params);
			resultJSON = papersService.getExamResult(params);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Map<String, Object> papersMap = new LinkedHashMap<String, Object>();
		papersMap.put("papersDetail", papersDetail);
		papersMap.put("data", papersList);
		papersMap.put("total", papersList.size());
		papersMap.put("result", resultJSON);
		
		request.setAttribute("papersMap", papersMap);
		
		return "exam_papers_result";
	}
	
	/**
	 * 
	 * 获取所有待考试卷
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getAllWaitPaperCount() throws Exception {
		
		String user_id = GlobalUtil.NullToStr(request.getParameter("user_id"));
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("user_id", user_id);
		
		Map<String, Object> jsonMap = new LinkedHashMap<String, Object>();
		
		int count = 0;
		try {
			count = papersService.getStuPapersWaitListCount(params);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		jsonMap.put("waitCount", count);
		
		out.print(gson.getConvertToJson(jsonMap));
		out.flush();
		out.close();
		
		return NONE;
	}
	
	/**
	 * 
	 * 获取学生考试结果页面
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getAllUserPapersResultListPage() throws Exception {
		return "all_stu_papers_result";
	}
	
	/**
	 * 
	 * 获取学生考试结果列表
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getAllUserPapersResultList() throws Exception {
		
		String query  = GlobalUtil.NullToStr(request.getParameter("query"));
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("query", "%"+query+"%");
		
		List<Map<String, Object>> resultList = null;
		int totalCount = 0;
		try {
			totalCount = papersService.getAllUserPapersResultListCount(params);
			resultList = papersService.getAllUserPapersResultList(params);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Map<String, Object> resultMap = new LinkedHashMap<String, Object>();
		resultMap.put("totalCount", totalCount);
		resultMap.put("root", resultList);
		
		out.print(gson.getConvertToJson(resultMap));
		out.flush();
		out.close();
		
		return NONE;
	}
}
