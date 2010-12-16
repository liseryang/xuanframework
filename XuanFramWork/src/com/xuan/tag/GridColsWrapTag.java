package com.xuan.tag;

import java.util.ArrayList;

import javax.servlet.ServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

import com.xuan.tag.util.ColumnPropertiesBean;
import com.xuan.tag.util.GridPropertiesBean;

public class GridColsWrapTag extends BodyTagSupport {
	private static final long serialVersionUID = -1188895986658889997L;

	public int doStartTag() throws JspException {
		ServletRequest req = this.pageContext.getRequest();
		req.setAttribute(TagGlobalNames.TAG_COLSWRAP_OBJ,
				new ArrayList<ColumnPropertiesBean>());
		return EVAL_BODY_BUFFERED;
	}

	public int doAfterBody() {
		return SKIP_BODY;
	}

	public int doEndTag() throws JspException {
		ServletRequest req = this.pageContext.getRequest();
		GridPropertiesBean gpb = (GridPropertiesBean) req
				.getAttribute(TagGlobalNames.TAG_GRID_OBJECT);
		gpb.getColumns().add(req.getAttribute(TagGlobalNames.TAG_COLSWRAP_OBJ));
		return EVAL_PAGE;
	}
}