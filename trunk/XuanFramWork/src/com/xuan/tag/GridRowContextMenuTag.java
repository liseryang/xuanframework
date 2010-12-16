package com.xuan.tag;

import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

import com.xuan.comm.util.BeanUtil;
import com.xuan.tag.util.GridPropertiesBean;
import com.xuan.tag.util.GridRowContextMenuBean;

public class GridRowContextMenuTag extends BodyTagSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -888260798205903958L;

	private String iconCls;

	private String text;

	private String handler;

	private String disabled;

	public int doStartTag() throws JspException {
		// ServletRequest req = this.pageContext.getRequest();
		return EVAL_BODY_BUFFERED;
	}

	public int doAfterBody() {
		return SKIP_BODY;
	}

	public int doEndTag() throws JspException {
		ServletRequest req = this.pageContext.getRequest();
		GridRowContextMenuBean rcm = new GridRowContextMenuBean();
		try {
			BeanUtil.copyProperties(rcm, this);
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
		gpb.getRowContextMenus().add(rcm);
		return EVAL_PAGE;
	}

	public String getIconCls() {
		return iconCls;
	}

	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getHandler() {
		return handler;
	}

	public void setHandler(String handler) {
		this.handler = handler;
	}

	public String getDisabled() {
		return disabled;
	}

	public void setDisabled(String disabled) {
		this.disabled = disabled;
	}
}
