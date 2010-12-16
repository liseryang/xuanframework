package com.xuan.tag.util;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;

import org.apache.commons.beanutils.PropertyUtils;

import com.xuan.comm.servlet.StringServletResponse;
import com.xuan.comm.util.BeanUtil;
import com.xuan.comm.util.Validator;

public class TagUtils {
	// private static Log _log = LogFactory.getLog(TagUtils.class);

	private static TagUtils instance = new TagUtils();

	private static final Map<String, Integer> scopes = new HashMap<String, Integer>();

	private static Map<String, String> buttonJs = new HashMap<String, String>();

	static {
		scopes.put("page", new Integer(1));
		scopes.put("request", new Integer(2));
		scopes.put("session", new Integer(3));
		scopes.put("application", new Integer(4));
		buttonJs.put("submit", "dataOpSubmit();");
		buttonJs.put("reset", "dataOpReset();");
		buttonJs.put("delete", "dataOpDelete();");
		buttonJs.put("return", "dataOpReturn();");
	}

	public static TagUtils getInstance() {
		return instance;
	}

	public void write(PageContext pageContext, String text) throws JspException {
		JspWriter writer = pageContext.getOut();
		try {
			writer.print(text);
		} catch (IOException e) {
			throw new JspException(e);
		}
	}

	public void write(PageContext pageContext, StringBuffer text)
			throws JspException {
		JspWriter writer = pageContext.getOut();
		try {
			writer.print(text);
		} catch (IOException e) {
			throw new JspException(e);
		}
	}

	public String encodeURL(String url, String enc) {
		if (Validator.isNull(enc))
			enc = "UTF-8";
		try {
			url = URLEncoder.encode(url, enc);
		} catch (UnsupportedEncodingException localUnsupportedEncodingException) {
		}
		return url;
	}

	public String encodeURL(String url) {
		try {
			url = URLEncoder.encode(url, "UTF-8");
		} catch (UnsupportedEncodingException localUnsupportedEncodingException) {
		}
		return url;
	}

	public Object lookup(PageContext pageContext, String name, String scopeName)
			throws JspException {
		if (scopeName == null)
			return pageContext.findAttribute(name);
		try {
			return pageContext.getAttribute(name, instance.getScope(scopeName));
		} catch (JspException e) {
			throw e;
		}

	}

	public Object lookup(PageContext pageContext, String name, String property,
			String scope) throws JspException {
		Object bean = lookup(pageContext, name, scope);
		if (bean == null) {
			return null;
		}
		if (property == null)
			return bean;
		try {
			return PropertyUtils.getProperty(bean, property);
		} catch (Exception e) {
			throw new JspException(e);
		}
	}

	public int getScope(String scopeName) throws JspException {
		Integer scope = (Integer) scopes.get(scopeName.toLowerCase());
		if (scope == null) {
			throw new JspException("Scope is not exit");
		}
		return scope.intValue();
	}

	public Object getProperty(Object opObj, String objProperty) {
		try {
			if (opObj.getClass().isArray()) {
				Object[] objs = (Object[]) opObj;
				if (objProperty.indexOf(".") <= 0) {
					return objs[Integer.parseInt(objProperty)];
				}
				return PropertyUtils.getProperty(objs[Integer
						.parseInt(objProperty.substring(0, objProperty
								.indexOf(".")))], objProperty
						.substring(objProperty.indexOf(".") + 1));
			}
			return PropertyUtils.getProperty(opObj, objProperty);
		} catch (Exception e) {
		}
		return "";
	}

	public StringBuffer buildBasePath(HttpServletRequest request) {
		StringBuffer temp = new StringBuffer(request.getScheme());
		temp.append("://");
		temp.append(request.getServerName());
		if (request.getServerPort() != 80)
			temp.append(":").append(request.getServerPort());
		if (!request.getContextPath().equals("/"))
			temp.append(request.getContextPath());
		return temp;
	}

	public StringBuffer buildBasePath(PageContext pageContext) {
		return buildBasePath((HttpServletRequest) pageContext.getRequest());
	}

	public HttpServletRequest getReqeust(PageContext pageContext) {
		return (HttpServletRequest) pageContext.getRequest();
	}

	public StringBuffer buildUrlOrJsByObject(String urlOrJs, Object opObj)
			throws NumberFormatException, IllegalAccessException,
			InvocationTargetException, NoSuchMethodException {
		StringBuffer sb = new StringBuffer();
		String[] arr = urlOrJs.split("(\\^\\$)");
		for (int i = 0; i < arr.length; i++)
			if (arr[i].indexOf("$^") >= 0) {
				sb.append(arr[i].substring(0, arr[i].indexOf("$^")));
				sb.append(BeanUtil.getProperty(opObj, arr[i].substring(arr[i]
						.indexOf("$^") + 2)));
			} else {
				sb.append(arr[i]);
			}
		return sb;
	}

	public String getButtonJs(String type) {
		return ((String) buttonJs.get(type)).toString();
	}

	public static void include(PageContext pageContext, String path)
			throws IOException, ServletException {
		String s = toString(pageContext, path);
		pageContext.getOut().print(s);
	}

	public static String toString(PageContext pageContext, String path)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) pageContext.getRequest();
		HttpServletResponse res = (HttpServletResponse) pageContext
				.getResponse();
		ServletContext ctx = req.getSession().getServletContext();
		StringServletResponse stringServletRes = new StringServletResponse(res);
		RequestDispatcher rd = ctx.getRequestDispatcher(path);
		rd.include(req, stringServletRes);
		return stringServletRes.getString();
	}
}