/**   
 * 
 * 项目名称:	[test_on_line]
 * 包:		[com.fjnu.sjx.util]
 * 类名称:	[GlobalUtil]
//  * 类描述:	[全局的工具类，例如：字符串空值判断...]
 * 创建人:	[sjx]
 * 创建时间:	[2017年1月28日 下午9:54:08]
 * 修改人:	[sjx]
 * 修改时间:	[2017年1月28日 下午9:54:08]
 * 修改备注:	[说明本次修改内容]
 * 版本:		[v1.0]
 *    
 */

package com.fjnu.sjx.util;

import org.apache.commons.lang.StringUtils;

public class GlobalUtil {

	/**
	 * 判断字符串是否为空
	 * 
	 * @return 如果字符串为空，则返回""；否则返回字符串本身
	 */
	public static String NullToStr(String str) {
		if (StringUtils.isEmpty(str)) {
			return "";
		} else {
			return str;
		}
	}

	/**
	 * 判断对象（针对StringBuffer等字符串对象）是否为空
	 * 
	 * @param str
	 * @return 如果对象是字符串且不为空，则返回字符串本身；若对象为空，则返回""
	 */
	public static String NullToStr(Object str) {
		// 如果对象为空，直接返回""
		if (str == null) {
			return "";
		}

		if (StringUtils.isEmpty(str.toString())) {
			return "";
		} else {
			return str.toString();
		}
	}

	/**
	 * 字符串返回字符"0"
	 * 
	 * @param str
	 * @return 如果字符串为空，则返回"0"；否则返回字符串本身
	 */
	public static String NullToStrZero(String str) {
		if (StringUtils.isEmpty(str)) {
			return "0";
		} else {
			return str;
		}
	}
	
	/**
	 * 返回int类型 0 
	 * @param str
	 * @return
	 */
	public static int NullToObjectZero(String str) {
		int temp = 0;
		try {
			if (StringUtils.isNotEmpty(str)){
				temp = Integer.parseInt(str);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return temp;
	}
}
