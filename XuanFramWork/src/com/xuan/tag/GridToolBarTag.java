package com.xuan.tag;

import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

import com.xuan.comm.util.BeanUtil;
import com.xuan.tag.util.GridPropertiesBean;
import com.xuan.tag.util.GridToolBarBean;

public class GridToolBarTag extends BodyTagSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1922132819612536639L;
	private String text;
	private String iconCls;
	private String handler;

	public int doStartTag() throws JspException {
		// ServletRequest req = this.pageContext.getRequest();
		return EVAL_BODY_BUFFERED;
	}

	public int doEndTag() throws JspException {
		ServletRequest req = this.pageContext.getRequest();
		GridToolBarBean gtbb = new GridToolBarBean();
		try {
			BeanUtil.copyProperties(gtbb, this);
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 操作Grid对象
		GridPropertiesBean gpb = (GridPropertiesBean) req
				.getAttribute(TagGlobalNames.TAG_GRID_OBJECT);
		gpb.getToolBars().add(gtbb);
		return EVAL_PAGE;
	}

	public int doAfterBody() {
		return SKIP_BODY;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getIconCls() {
		return iconCls;
	}

	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}

	public String getHandler() {
		return handler;
	}

	public void setHandler(String handler) {
		this.handler = handler;
	}
}
