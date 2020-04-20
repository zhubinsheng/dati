package com.fjnu.sjx.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import com.fjnu.sjx.iface.GsonInterface;
import com.fjnu.sjx.impl.GsonInterfaceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport implements ServletRequestAware,
		ServletResponseAware, ServletContextAware {
	private static final long serialVersionUID = 1L;
	protected HttpServletRequest request;
	protected HttpServletResponse response;
	protected HttpSession session;
	protected PrintWriter out;
	protected ServletContext servletContext;
	protected GsonInterface gsonInterfaceImpl = new GsonInterfaceImpl();

	@Override
	public void setServletResponse(HttpServletResponse response) {
		try {
			if (this.response == null) {
				this.response = response;
			}
			this.out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		try {
			if (this.request == null) {
				this.request = request;
			}
			this.session = request.getSession();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void setServletContext(ServletContext context) {
		if (this.servletContext == null) {
			this.servletContext = context;
		}
	}

}
