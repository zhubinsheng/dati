package com.fjnu.sjx.util;

import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

public class LoggerUtil {

	private static Logger logger = Logger.getLogger(LoggerUtil.class);
	
	/**
	 * 解析用命名参数预编译的sql
	 * 
	 * @param sql 欲执行的sql语句
	 * @param params 欲执行的sql语句的参数
	 * @throws Exception
	 */
	public static void info(String sql, Map<String, String> params) throws Exception{
		String key = null;
		String value = null;
		if (StringUtils.isEmpty(sql) || params == null){
			throw new Exception("未找到sql语句或参数为null，无法进行解析输出!");
		}else{
			if (params != null) {
				for (Map.Entry<String, ?> entry : params.entrySet()) {
					key = ":"+entry.getKey();
					value = "'"+entry.getValue().toString()+"'";
					sql = sql.replaceAll(key, value);
				}
			}
		}
		logger.info(sql);
	}
	
	/**
	 * 解析用命名参数预编译的sql
	 * 
	 * @param operatName 输出备注
	 * @param sql 欲执行的sql语句
	 * @param params 欲执行的sql语句的参数
	 * @throws Exception
	 */
	public static void info(String operatName,String sql, Map<String, String> params) throws Exception{
		String key = null;
		String value = null;
		if (StringUtils.isEmpty(sql) || params == null){
			throw new Exception("未找到sql语句或参数为null，无法进行解析输出!");
		}else{
			if (params != null) {
				for (Map.Entry<String, ?> entry : params.entrySet()) {
					key = ":"+entry.getKey();
					value = "'"+entry.getValue().toString()+"'";
					sql = sql.replaceAll(key, value);
				}
			}
		}
		logger.info(operatName + ":" + sql);
	}

	public static void info(String operatName, StringBuffer sql,
			Map<String, Object> params) throws Exception {
		String key = null;
		String value = null;
		String tempSql = null;
		if (StringUtils.isEmpty(sql.toString()) || params == null){
			throw new Exception("未找到sql语句或参数为null，无法进行解析输出!");
		}else{
			if (params != null) {
				tempSql = sql.toString();
				for (Map.Entry<String, ?> entry : params.entrySet()) {
					key = ":"+entry.getKey();
					if (entry.getValue() instanceof String){
						value = "'"+entry.getValue().toString()+"'";
					}else if (entry.getValue() instanceof Integer){
						value = entry.getValue().toString();
					}
					tempSql = tempSql.replaceAll(key, value);
				}
			}
		}
		logger.info(operatName + ":" + tempSql);
	}
	
}
