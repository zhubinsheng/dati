/**   
 * 
 * 项目名称:	[test_on_line]
 * 包:		[com.fjnu.sjx.filter]
 * 类名称:	[UeditorFilter]
 * 类描述:	[一句话描述该类的功能]
 * 创建人:	[sjx]
 * 创建时间:	[2017年2月9日 下午8:28:11]
 * 修改人:	[sjx]
 * 修改时间:	[2017年2月9日 下午8:28:11]
 * 修改备注:	[说明本次修改内容]
 * 版本:		[v1.0]
 *    
 */

package com.fjnu.sjx.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter;

public class UeditorFilter extends StrutsPrepareAndExecuteFilter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest request = (HttpServletRequest) req;
        String url = request.getRequestURI();
        if (url.endsWith("controller.jsp")) {
            chain.doFilter(req, res);
        }else {
        	// 拦截使用默认的拦截
            super.doFilter(req, res, chain);
        }
        
	}
}
