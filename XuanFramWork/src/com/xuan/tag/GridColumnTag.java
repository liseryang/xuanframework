package com.xuan.tag;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

import com.xuan.comm.util.BeanUtil;
import com.xuan.tag.util.ColumnPropertiesBean;
import com.xuan.tag.util.GridPropertiesBean;

public class GridColumnTag extends BodyTagSupport {
	private static final long serialVersionUID = -1188895986658889997L;

	private String title;
	private String field;
	private Integer width;
	private boolean frozen = false;
	private Integer rowspan;
	private Integer colspan;
	private String align = "left";
	private boolean sortable = false;
	private String formatter;

	public int doStartTag() throws JspException {
		// ServletRequest req = this.pageContext.getRequest();

		return EVAL_BODY_BUFFERED;
	}

	public int doAfterBody() {
		return SKIP_BODY;
	}

	@SuppressWarnings("unchecked")
	public int doEndTag() throws JspException {
		try {
			ServletRequest req = this.pageContext.getRequest();
			ColumnPropertiesBean cpb = new ColumnPropertiesBean();
			BeanUtil.copyProperties(cpb, this);
			// 如果是冻结列
			if (cpb.isFrozen()) {
				GridPropertiesBean gpb = (GridPropertiesBean) req
						.getAttribute(TagGlobalNames.TAG_GRID_OBJECT);
				gpb.getFrozenColumns().add(cpb);
			} else {
				List tmp = (List)req.getAttribute(TagGlobalNames.TAG_COLSWRAP_OBJ);
				tmp.add(cpb);
//				req.setAttribute(TagGlobalNames.TAG_COLSWRAP_OBJ,
//						((ArrayList<ColumnPropertiesBean>) req
//								.getAttribute(TagGlobalNames.TAG_COLSWRAP_OBJ))
//								.add(cpb));
			}
		} catch (Exception e) {
			throw new JspException(e);
		}
		return EVAL_PAGE;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public Integer getWidth() {
		return width;
	}

	public void setWidth(Integer width) {
		this.width = width;
	}

	public boolean isFrozen() {
		return frozen;
	}

	public void setFrozen(boolean frozen) {
		this.frozen = frozen;
	}

	public Integer getRowspan() {
		return rowspan;
	}

	public void setRowspan(Integer rowspan) {
		this.rowspan = rowspan;
	}

	public Integer getColspan() {
		return colspan;
	}

	public void setColspan(Integer colspan) {
		this.colspan = colspan;
	}

	public String getAlign() {
		return align;
	}

	public void setAlign(String align) {
		this.align = align;
	}

	public boolean isSortable() {
		return sortable;
	}

	public void setSortable(boolean sortable) {
		this.sortable = sortable;
	}

	public String getFormatter() {
		return formatter;
	}

	public void setFormatter(String formatter) {
		this.formatter = formatter;
	}
}