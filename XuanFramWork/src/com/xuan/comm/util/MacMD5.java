package com.xuan.comm.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MacMD5 {
	private byte[] digesta;

	public String CalcMD5(String myinfo) {
		try {
			MessageDigest alga = MessageDigest.getInstance("MD5");
			alga.update(myinfo.getBytes());
			this.digesta = alga.digest();
		} catch (NoSuchAlgorithmException ex) {
			ex.printStackTrace();
		}
		return byte2hex(this.digesta);
	}

	private String byte2hex(byte[] b) {
		String hs = "";
		String stmp = "";
		for (int n = 0; n < b.length; n++) {
			stmp = Integer.toHexString(b[n] & 0xFF);
			if (stmp.length() == 1)
				hs = hs + "0" + stmp;
			else
				hs = hs + stmp;
		}
		return hs;
	}
}
