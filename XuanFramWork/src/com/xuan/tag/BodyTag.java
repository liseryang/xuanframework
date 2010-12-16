package com.xuan.tag;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.xuan.comm.util.Validator;
import com.xuan.tag.util.TagUtils;

public class BodyTag extends BodyTagSupport {
	private static Log _log = LogFactory.getLog(BodyTag.class);

	private static final long serialVersionUID = -1188895986658889997L;
	private static final String _START_PAGE = "/WEB-INF/ui/body/start.jsp";
	private static final String _END_PAGE = "/WEB-INF/ui/body/end.jsp";
	private String title = null;
	private String iconCls = "";

	private String _startPage;
	private String _endPage;

	public int doStartTag() throws JspException {
		ServletRequest req = this.pageContext.getRequest();

		req.setAttribute(TagGlobalNames.TAG_PAGE_BASE_PATH, TagUtils
				.getInstance().buildBasePath((HttpServletRequest) req)
				.toString());
		req.setAttribute(TagGlobalNames.TAG_BODY_TITLE, this.title);

		// TODO 可以动态定制化
		req.setAttribute(TagGlobalNames.TAG_BODY_NAV, title);
		if (Validator.isNotNull(iconCls))
			req.setAttribute(TagGlobalNames.TAG_BODY_ICON, iconCls);
		else
			req.setAttribute(TagGlobalNames.TAG_BODY_ICON, "");
		return EVAL_BODY_BUFFERED;
	}

	public int doAfterBody() {
		return SKIP_BODY;
	}

	public int doEndTag() throws JspException {
		try {
			ServletRequest req = this.pageContext.getRequest();
			TagUtils.include(this.pageContext, getStartPage());

//			req.removeAttribute(TagGlobalNames.TAG_BODY_TITLE);
//			req.removeAttribute(TagGlobalNames.TAG_BODY_NAV);
//			req.removeAttribute(TagGlobalNames.TAG_BODY_ICON);
			this.pageContext.getOut().print(getBodyContent().getString());
			TagUtils.include(this.pageContext, getEndPage());

		} catch (Exception e) {
			throw new JspException(e);
		}
		return EVAL_PAGE;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStartPage() {
		if (Validator.isNull(this._startPage)) {
			return _START_PAGE;
		}
		return this._startPage;
	}

	public void setStartPage(String page) {
		this._startPage = page;
	}

	public String getEndPage() {
		if (Validator.isNull(this._endPage)) {
			return _END_PAGE;
		}
		return this._endPage;
	}

	public void setEndPage(String page) {
		this._endPage = page;
	}

	public String getIconCls() {
		return iconCls;
	}

	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}
}