/**   
 * 
 * 项目名称:	[test_on_line]
 * 包:		[com.fjnu.sjx.bean]
 * 类名称:	[QuestionBean]
 * 类描述:	[试题bean]
 * 创建人:	[sjx]
 * 创建时间:	[2017年2月10日 下午2:27:03]
 * 修改人:	[sjx]
 * 修改时间:	[2017年2月10日 下午2:27:03]
 * 修改备注:	[说明本次修改内容]
 * 版本:		[v1.0]
 *    
 */

package com.fjnu.sjx.bean;

import org.springframework.web.util.HtmlUtils;

public class QuestionBean {

	private String id;				//ID

	private String subject_name;	//学科

	private String knowledge;		//知识

	private String source_name;		//试题来源

	private String question;		//试题

	private String answer;			//答案

	private String resolve;			//试题分析

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSubject_name() {
		return subject_name;
	}

	public void setSubject_name(String subject_name) {
		this.subject_name = subject_name;
	}

	public String getKnowledge() {
		return knowledge;
	}

	public void setKnowledge(String knowledge) {
		this.knowledge = knowledge;
	}

	public String getSource_name() {
		return source_name;
	}

	public void setSource_name(String source_name) {
		this.source_name = source_name;
	}

	public String getQuestion() {
		String questionStr =this.question;
		questionStr = HtmlUtils.htmlUnescape(questionStr);
		return questionStr;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getResolve() {
		String resolveStr =this.resolve;
		resolveStr = HtmlUtils.htmlUnescape(resolveStr);
		return resolveStr;
	}

	public void setResolve(String resolve) {
		this.resolve = resolve;
	}
}
