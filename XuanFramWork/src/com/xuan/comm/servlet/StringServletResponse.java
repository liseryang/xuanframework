package com.xuan.comm.servlet;

import java.io.ByteArrayOutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.util.Locale;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

public class StringServletResponse extends HttpServletResponseWrapper {
	private String _contentType;
	private ByteArrayOutputStream _bam = new ByteArrayOutputStream();
	private ServletOutputStream _sos = new StringServletOutputStream(this._bam);
	private int _status = 200;
	private StringWriter _sw = new StringWriter();
	private PrintWriter _pw = new PrintWriter(this._sw);
	private int _bufferSize;
	private boolean _callGetOutputStream;
	private boolean _callGetWriter;
	private String _string = null;

	public StringServletResponse(HttpServletResponse res) {
		super(res);
	}

	public String getContentType() {
		return this._contentType;
	}

	public void setContentType(String contentType) {
		this._contentType = contentType;
		super.setContentType(contentType);
	}

	public void setLocale(Locale locale) {
	}

	public ServletOutputStream getOutputStream() {
		this._callGetOutputStream = true;
		return this._sos;
	}

	public int getStatus() {
		return this._status;
	}

	public void setStatus(int status) {
		this._status = status;
	}

	public String getString() throws UnsupportedEncodingException {
		if (this._string != null) {
			return this._string;
		}
		if (this._callGetOutputStream) {
			return this._bam.toString();
		}
		if (this._callGetWriter) {
			return this._sw.toString();
		}
		return "";
	}

	public void setString(String string) {
		this._string = string;
	}

	public PrintWriter getWriter() {
		this._callGetWriter = true;
		return this._pw;
	}

	public int getBufferSize() {
		return this._bufferSize;
	}

	public void setBufferSize(int size) {
		this._bufferSize = size;
	}

	public void resetBuffer() {
		if (this._callGetOutputStream) {
			this._bam.reset();
		} else if (this._callGetWriter) {
			StringBuffer sb = this._sw.getBuffer();
			sb.delete(0, sb.length());
		}
	}

	public void recycle() {
		this._bam.reset();
		this._status = 200;
		this._sw = new StringWriter();
		this._pw = new PrintWriter(this._sw);
		this._callGetOutputStream = false;
		this._callGetWriter = false;
		this._string = null;
	}
}