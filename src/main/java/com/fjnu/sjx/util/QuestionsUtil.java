package com.fjnu.sjx.util;

import org.apache.commons.lang3.StringUtils;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;

public class QuestionsUtil {
	/* haoserviceAPI_KEY */
	private final static String API_KEY = "f85988d0ae624ec0af7bff0a27781a38";
	private final static String QUESTIONS_LIST_URL = "http://apis.haoservice.com/lifeservice/exam/Catalog?&key=";

	/**
	 * 获取试题目录
	 * 
	 * @return
	 * @throws UnirestException
	 */
	public static String getQuestionsList() throws UnirestException {
		HttpResponse<String> response = Unirest.get(
				QUESTIONS_LIST_URL + API_KEY).asString();
		return response.getBody();
	}

	/**
	 * 获取试题记录
	 * 
	 * @param id  	分类id
	 * @param page  页码(默认第1页)
	 * @param size  每页记录数(默认30条)
	 * @return
	 * @throws UnirestException
	 */
	public static String getQuestions(String id, String page, String size)
			throws UnirestException {
		String questionsURL = "http://apis.haoservice.com/lifeservice/exam/query?id=ID&pn=PAGE&rn=SIZE&key=";

		// 设置id
		if (StringUtils.isNotEmpty(id)) {
			questionsURL = questionsURL.replaceAll("ID", id);
		} else {
			questionsURL = questionsURL.replaceAll("ID", "1");
		}

		// 设置页码
		if (StringUtils.isNotEmpty(page)) {
			questionsURL = questionsURL.replaceAll("PAGE", page);
		} else {
			questionsURL = questionsURL.replaceAll("PAGE", "1");
		}

		// 设置每页记录数
		if (StringUtils.isNotEmpty(size)) {
			questionsURL = questionsURL.replaceAll("SIZE", size);
		} else {
			questionsURL = questionsURL.replaceAll("SIZE", "30");
		}
		
		HttpResponse<String> response = Unirest.get(questionsURL + API_KEY)
				.asString();
		return response.getBody();
	}
}
