package com.xuan.comm.servlet;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

import javax.servlet.ServletOutputStream;

public class StringServletOutputStream extends ServletOutputStream {
	private ByteArrayOutputStream _bam = null;

	public StringServletOutputStream(ByteArrayOutputStream bam) {
		this._bam = bam;
	}

	public void write(int b) throws IOException {
		this._bam.write(b);
	}
}