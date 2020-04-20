package com.fjnu.sjx.util;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;
import java.util.Properties;

public class JdbcUtil {
	private static Connection conn = null;
	private static String driver;
	private static String url;
	private static String user;
	private static String password;
	private static String path = JdbcUtil.class.getClassLoader()
			.getResource("db.properties").getPath();

	static {
		try {
			Properties prop = new Properties();
			FileInputStream fi = new FileInputStream(path);
			InputStream in = new BufferedInputStream(fi);
			prop.load(in);
			driver = prop.getProperty("jdbc.connection.driver_class").trim();
			url = prop.getProperty("jdbc.connection.url").trim();
			user = prop.getProperty("jdbc.connection.username").trim();
			password = prop.getProperty("jdbc.connection.password").trim();

			Class.forName(driver);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 获取数据库连接
	 * 
	 * @return
	 */
/*	public static Connection getConnection() {
		if (conn == null) {
			synchronized (Connection.class) {
				if (conn == null) {
					try {
						conn = DriverManager.getConnection(url, user, password);
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
		}
		return conn;
	}*/
	
	/**
	 * 获取数据库连接
	 * 
	 * @return
	 */
	public static Connection getConnection() {
		try {
			conn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	/**
	 * 关闭连接
	 * 
	 * @param conn
	 * @param pstm
	 * @param rs
	 */
	public static void getCloseAll(Connection conn,PreparedStatement pstm,ResultSet rs){
		try {
			rs.close();
			pstm.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * <pre>
	 * 	获取sql查询的单个值,
	 * 	如: select max(id) from t_sys_use
	 * </pre>
	 * 
	 * @param sql
	 * @return 返回字符串类型
	 */
	public static String getQueryByValue(String sql) {
		String temp = null;
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {
			conn = JdbcUtil.getConnection();
			pstm = conn.prepareStatement(sql);
			rs = pstm.executeQuery();
			if (rs.next()){
				temp = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			JdbcUtil.getCloseAll(conn, pstm, rs);
		}
		
		return temp;
	}
	
	/**
	 * <pre>
	 * 	获取sql查询的单个值,
	 * 	如: select max(id) from t_sys_use
	 * </pre>
	 * 
	 * @param conn
	 * @param sql
	 * @return 返回字符串类型
	 */
	public static String getQueryByValue(Connection conn,String sql) {
		String temp = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {
			pstm = conn.prepareStatement(sql);
			rs = pstm.executeQuery();
			if (rs.next()){
				temp = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			JdbcUtil.getCloseAll(conn, pstm, rs);
		}
		
		return temp;
	}
	
	/**
	 * <pre>
	 * 	获取sql查询的单个值,
	 * 	如: select max(id) from t_sys_use where id = :id
	 * </pre>
	 * 
	 * @param sql
	 * @param paramMap 命名参数
	 * @return 返回字符串类型
	 */
	public static String getQueryByValue(String sql,Map<String,String> paramMap) {
		if (paramMap != null) {
			for (Map.Entry<String, ?> entry : paramMap.entrySet()) {
				if (sql.contains(entry.getKey())){
					sql = sql.replaceAll(":"+entry.getKey(), "'"+entry.getValue()+"'");
				}
			}
		}
		
		String temp = null;
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {
			conn = JdbcUtil.getConnection();
			pstm = conn.prepareStatement(sql);
			rs = pstm.executeQuery();
			if (rs.next()){
				temp = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			JdbcUtil.getCloseAll(conn, pstm, rs);
		}
		
		return temp;
	}
	
	
	/**
	 * <pre>
	 * 	获取sql查询的单个值,
	 * 	如: select max(id) from t_sys_use where id = :id
	 * </pre>
	 * 
	 * @param sql
	 * @param paramMap 命名参数
	 * @return 返回数值类型
	 */
	public static int getQueryByValue(StringBuffer query,Map<String,Object> paramMap) {
		String sql = null;
		if (query.length() > 0){
			sql = query.toString();
		}
		if (paramMap != null) {
			for (Map.Entry<String, ?> entry : paramMap.entrySet()) {
				if (sql.contains(entry.getKey())){
					sql = sql.replaceAll(":"+entry.getKey(), "'"+entry.getValue()+"'");
				}
			}
		}
		
		String temp = null;
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {
			conn = JdbcUtil.getConnection();
			pstm = conn.prepareStatement(sql);
			rs = pstm.executeQuery();
			if (rs.next()){
				temp = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			JdbcUtil.getCloseAll(conn, pstm, rs);
		}
		
		int count = 0;
		try {
			count = GlobalUtil.NullToObjectZero(temp);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}
}
