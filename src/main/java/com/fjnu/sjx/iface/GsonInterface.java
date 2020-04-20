package com.fjnu.sjx.iface;

import java.util.List;
import java.util.Map;

import com.google.gson.Gson;

public interface GsonInterface {

	/**
	 * 获取gson
	 * 
	 * @return
	 */
	public Gson getGson();

	/**
	 * 将json字符串转为json
	 * 
	 * @param jsonStr
	 * @return
	 */
	public String getConvertToJson(String jsonStr);

	/**
	 * 将list<map>转为json串
	 * 
	 * @param list
	 */
	public String getConvertToJson(List<Map<String, Object>> list);

	/**
	 * 将map转为json串
	 * 
	 * @param map
	 */
	public String getConvertToJson(Map<String, Object> map);

	/**
	 * 将object转为json串
	 * 
	 * @param object
	 */
	public String getConvertToJson(Object object);

	/**
	 * 将json串转为list<map>
	 * 
	 * @param jsonStr
	 * @return
	 */
	public List<Map<String, Object>> getConvertToListMap(String jsonStr);

	/**
	 * 将json串转为map
	 * 
	 * @param jsonStr
	 * @return
	 */
	public Map<String, Object> getConvertToMap(String jsonStr);

	/**
	 * 匹配JSON字符串中满足正则表达式的子串,并将子串中满足Map的key用value替换掉
	 * 
	 * @param pattern
	 *            正则表达式
	 * @param paramsMap
	 *            key:旧值、value:新值 (新替换旧)
	 * @param jsonStr
	 *            JSON字符串
	 * @param notIncludeLeft
	 *            剔除满足条件的字符串子串左边的字符串
	 * @param notIncludeRight
	 *            剔除满足条件的字符串子串右边边的字符串
	 * @return 返回过滤后的JSON字符串
	 */
	public String getRegFilterToNewJSON(String pattern,
			Map<String, String> paramsMap, String jsonStr,
			String notIncludeLeft, String notIncludeRight,
			boolean isPrintDecodeLog);
}
