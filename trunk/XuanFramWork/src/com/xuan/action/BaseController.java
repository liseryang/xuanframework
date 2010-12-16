package com.xuan.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class BaseController {
	/**
	 * 输出HTML脚本 <br>
	 * 示例：<br>
	 * this.writeMessage(response, sb.toString());
	 * 
	 * @param response
	 *            HttpServletResponse对象
	 * @param message
	 *            要输出的HTML脚本
	 */
	protected void writeMessage(HttpServletResponse response, String message) {
		this.writeMessage(response, message, "utf-8");
	}

	/**
	 * 输出HTML脚本带格式<br>
	 * 示例：<br>
	 * this.writeMessage(response, sb.toString(), "gb2312");
	 * 
	 * @param response
	 *            HttpServletResponse对象
	 * @param message
	 *            要输出的HTML脚本
	 * @param charset
	 *            字符集
	 */
	protected void writeMessage(HttpServletResponse response, String message,
			String charset) {
		response.setContentType("text/html;charset=" + charset);
		response.setDateHeader("Expires", -10);
		PrintWriter out = null;
		try {
			out = response.getWriter();
			out.println(message);
			out.flush();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			out.close();
		}
	}
}
