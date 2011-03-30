package com.xuan.comm.util;

import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.builder.ToStringBuilder;

import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import com.xuan.comm.util.json.JsonDateValueProcessor;

/**
 * 分页对象
 * 
 * @author DarkXie
 * 
 */
public class Pagination {
	// 记录集
	private Collection<?> rowSet;
	// 总记录数
	private long total = 0;

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public Collection<?> getRowSet() {
		return rowSet;
	}

	public void setRowSet(Collection<?> rowSet) {
		this.rowSet = rowSet;
	}

	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

	public String getGridJSON() {
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("total", total);
		result.put("rows", rowSet);
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.registerJsonValueProcessor(Date.class,
				new JsonDateValueProcessor());
		JSONObject json = JSONObject.fromObject(result, jsonConfig);
		return json.toString();
	}

}
