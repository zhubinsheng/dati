package com.fjnu.sjx.impl;

import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang.StringUtils;

import com.fjnu.sjx.iface.GsonInterface;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

public class GsonInterfaceImpl implements GsonInterface{
	private Gson gson=new Gson();
	
	@Override
	public Gson getGson() {
		if (gson==null){
			synchronized (Gson.class) {
				if (gson==null){
					gson=new Gson();
				}
			}
		}
		return gson;
	}
	
	@Override
	public String getConvertToJson(List<Map<String, Object>> list) {
		return gson.toJson(list);
	}

	@Override
	public String getConvertToJson(Map<String, Object> map) {
		return gson.toJson(map);
	}

	@Override
	public String getConvertToJson(Object object) {
		return gson.toJson(object);
	}

	@Override
	public List<Map<String, Object>> getConvertToListMap(String jsonStr) {
		return gson.fromJson(jsonStr,new TypeToken<List<Map<String, Object>>>(){}.getType());
	}

	@Override
	public Map<String, Object> getConvertToMap(String jsonStr) {
		return gson.fromJson(jsonStr,new TypeToken<Map<String,Object>>(){}.getType());
	}

	@Override
	public String getConvertToJson(String jsonStr) {
		return gson.toJson(jsonStr);
	}

	@Override
	public String getRegFilterToNewJSON(String pattern,
			Map<String, String> paramsMap, String jsonStr,
			String notIncludeLeft, String notIncludeRight,
			boolean isPrintDecodeLog) {
		StringBuffer sb = new StringBuffer(jsonStr); //要返回的json字符串

		Pattern r = Pattern.compile(pattern);
		Matcher m = r.matcher(jsonStr);
		
		int i = 0;
		String waitEncode = null;
		while(m.find()){
			int start = 0;
			int end = 0;
			int notIncludeLeftLen = 0;
			int notIncludeRightLen = 0;
			
			waitEncode = m.group();
			start = m.start();
			end = m.end();
			
			//剔除左右两边不需要的字符串
			if(StringUtils.isNotEmpty(notIncludeLeft)){
				notIncludeLeftLen = notIncludeLeft.length();
				start = start + notIncludeLeftLen;
			}
			
			if(StringUtils.isNotEmpty(notIncludeRight)){
				notIncludeRightLen = notIncludeRight.length();
				end = end - notIncludeRightLen;
			}
			
			waitEncode = waitEncode.substring(notIncludeLeftLen, (waitEncode.length() - notIncludeRightLen));
			
			if (isPrintDecodeLog){
				System.out.println("【匹配到的结果-" + (++i) +"/开始位置："+start+"结束位置："+end+"】：" + waitEncode);
			}
			
			/*
			 * 计算第一个匹配项以后的匹配项的字符串新位置，如：
			 * 
			 * 有以下匹配字符串： abc,def,hig
			 * 位置： 1-3、4-6、7-9
			 * 第一次替换后的字符串为：1234、def、hig
			 * 这时“def”的位置就发生了变化
			 * 
			 */
			if ((i-1) != 0){
				start = sb.indexOf(waitEncode);
				end = start + waitEncode.length();
			}
			
//			//将“<、>、"”转义
//			if (waitEncode.contains("<") || waitEncode.contains(">") || waitEncode.contains("\"")){
//				
//				waitEncode = waitEncode.replaceAll("<", "&lt;");
//				waitEncode = waitEncode.replaceAll(">", "&gt;");
//				waitEncode = waitEncode.replaceAll("\"", "&quot;");
//				
//				System.out.println("【转换后的结果-" + (++i) +"/新开始位置：" + start + "新结束位置：" + end +"】：" + waitEncode);
//				
//				sb = sb.replace(start, end, waitEncode); //替换旧json中的html标签
//			}
			
			for (Map.Entry<String, String> entry : paramsMap.entrySet()) {
				if ( waitEncode.contains(entry.getKey()) ){
					waitEncode = waitEncode.replaceAll(entry.getKey(), entry.getValue());
				}
			}
			
			if (isPrintDecodeLog){
				System.out.println("【转换后的结果-" + (++i) +"/新开始位置：" + start + "新结束位置：" + end +"】：" + waitEncode);
			}
			
			sb = sb.replace(start, end, waitEncode); //替换旧json中的html标签
		}
		
		return sb.toString();
	}

}
