package com.xuan.comm.util;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.swing.ImageIcon;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGEncodeParam;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

public class FileUtils {
	private static Log _log = LogFactory.getLog(FileUtils.class);

	/**
	 * 以UTF-8读取文件中的内容
	 * 
	 * @param filePath
	 * @return
	 * @throws IOException
	 */
	public static String readFile(String filePath) throws IOException {
		return readFile(filePath, StringPool.UTF8);
	}

	/**
	 * 按指定编码方式读取文件
	 * 
	 * @param filePath
	 * @param charset
	 * @return
	 * @throws IOException
	 */
	public static String readFile(String filePath, String charset)
			throws IOException {
		String info = "";
		File f = new File(filePath);
		if (f.exists()) {
			FileInputStream bw = new FileInputStream(f);
			int len = bw.available();
			byte[] str = new byte[len];
			if (bw.read(str) == -1)
				info = "";
			else {
				info = new String(str, charset);
			}
			bw.close();
			bw = null;
		}
		f = null;
		return info;
	}

	/**
	 * 将字符串写出到文件中
	 * 
	 * @param msg
	 * @param filePath
	 * @throws IOException
	 */
	public static void writeFile(String msg, String filePath)
			throws IOException {
		FileWriter fw = null;
		File file = new File(filePath);
		if (file.exists()) {
			file.delete();
		}
		fw = new FileWriter(filePath);
		fw.write(msg);
		if (fw != null)
			fw.close();
	}

	/**
	 * 以utf-8编码写出文件
	 * 
	 * @param msg
	 * @param filePath
	 * @throws IOException
	 * @throws UnsupportedEncodingException
	 */
	public static void writeFileByUTF8(String msg, String filePath)
			throws UnsupportedEncodingException, IOException {
		File file = new File(filePath);
		if (file.exists()) {
			file.delete();
		}
		FileOutputStream wf = new FileOutputStream(filePath);
		wf.write(msg.getBytes(StringPool.UTF8));
		wf.close();
		file = null;
		wf = null;
	}

	/**
	 * 建立目录
	 * 
	 * @param directoryName
	 * @return
	 */
	public static boolean makeDir(String directoryName) {
		File aFile = new File(directoryName);
		return aFile.mkdir();
	}

	/**
	 * 拷贝文件
	 * 
	 * @param src
	 * @param dest
	 * @throws IOException
	 */
	public static void copyFile(File src, File dest) throws IOException {
		int length = (int) src.length();
		int block = 20000000;
		int blocknum = length / block;
		int blockmod = length % block;
		int totalblock = 0;
		if (blockmod == 0)
			totalblock = blocknum;
		else {
			totalblock = blocknum + 1;
		}
		FileOutputStream outfile = null;
		FileInputStream infile = null;
		try {
			int starthead = 0;
			outfile = new FileOutputStream(dest);
			infile = new FileInputStream(src);
			int m = 0;
			do {
				if ((m + 1) * block > length) {
					byte[] TempAttach = new byte[blockmod];
					infile.read(TempAttach, starthead, blockmod);
					outfile.write(TempAttach, starthead, blockmod);
					outfile.close();
					infile.close();
				} else {
					byte[] TempAttach = new byte[block];
					infile.read(TempAttach, starthead, block);
					outfile.write(TempAttach, starthead, block);
				}
				m++;
				if (m >= totalblock)
					break;
			} while (length != 0);
		} catch (Exception e) {
			_log.error(e.getMessage());
		} finally {
			if (outfile != null)
				outfile.close();
			if (infile != null)
				infile.close();
		}
	}

	/**
	 * 复制单个文件
	 * 
	 * @param oldPath
	 *            String 原文件路径 如：c:/fqf.txt
	 * @param newPath
	 *            String 复制后路径 如：f:/fqf.txt
	 * @return boolean
	 */
	public static void copyFile(String oldPath, String newPath) {
		try {
			int bytesum = 0;
			int byteread = 0;
			File oldfile = new File(oldPath);
			if (oldfile.exists()) { // 文件存在时
				InputStream inStream = new FileInputStream(oldPath); // 读入原文件
				FileOutputStream fs = new FileOutputStream(newPath);
				byte[] buffer = new byte[1444];
				while ((byteread = inStream.read(buffer)) != -1) {
					bytesum += byteread; // 字节数 文件大小
					fs.write(buffer, 0, byteread);
				}
				inStream.close();
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

	/**
	 * 拷贝目录下的文件
	 * 
	 * @param srcDir
	 * @param destDir
	 * @throws IOException
	 */
	public static void copyDirectory(String srcDir, String destDir)
			throws IOException {
		File srcDirFile = new File(srcDir);
		File destDirFile = new File(destDir);
		if (srcDirFile.exists()) {
			if (!destDirFile.exists()) {
				destDirFile.mkdir();
			}
			File[] files = srcDirFile.listFiles();
			int i = files.length;
			int a = 0;
			for (a = 0; (a < i) && (i > 0); a++)
				copyFile(files[a], new File(destDir
						+ File.separator
						+ files[a].getCanonicalPath().substring(
								files[a].getCanonicalPath().lastIndexOf(
										File.separator) + 1)));

		}
	}

	/**
	 * 从带路径的字符串中分解出来文件名（带扩展名）
	 * 
	 * @param wholeFilename
	 * @return
	 */
	public static String seperateBasicFilename(String wholeFilename) {
		String fg = new String(File.separator);
		int index = wholeFilename.lastIndexOf(fg);
		if (index < 0) {
			return wholeFilename;
		}
		String filename = wholeFilename.substring(index + 1);
		return filename;
	}

	/**
	 * 从带路径的字符串中分解出来文件名（不带扩展名）
	 * 
	 * @param wholeFilename
	 * @return
	 */
	public static String seperateSimpleFilename(String wholeFilename) {
		String filename = seperateBasicFilename(wholeFilename);
		String fg = new String(".");
		int index = filename.lastIndexOf(fg);
		if (index < 0) {
			return wholeFilename;
		}
		String simplefilename = filename.substring(0, index);
		return simplefilename;
	}

	/**
	 * 获得文件的扩展名
	 * 
	 * @param fileName
	 * @return
	 */
	public static String getFileExt(String fileName) {
		String fileExt = "";
		int index = fileName.lastIndexOf(".");
		fileExt = fileName.substring(index, fileName.length());
		return fileExt;
	}

	/**
	 * 通过WEB相对路径获得一个文件的绝对路径
	 * 
	 * @param context
	 * @param filePath
	 * @return
	 */
	public static String getRealFilePath(ServletContext context, String filePath) {
		String realFilePath = context.getRealPath(filePath);
		return realFilePath;
	}

	/**
	 * 删除文件
	 * 
	 * @param realFilePath
	 * @return
	 */
	public static boolean deleteFile(String realFilePath) {
		File aFile = new File(realFilePath);
		if (aFile.exists())
			return aFile.delete();
		else
			return true;
	}

	/**
	 * 判断某一文件或者目录是否存在
	 * 
	 * @param realFilePath
	 * @return
	 */
	public static boolean checkFilesFolder(String realFilePath) {
		File aFile = new File(realFilePath);
		return aFile.exists();

	}

	/**
	 * 通过输入流写出一个文件
	 * 
	 * @param stream
	 * @param outPutRealPath
	 * @return
	 * @throws IOException
	 */
	public static boolean creatFile(InputStream stream, String outPutRealPath)
			throws IOException {
		boolean flag = false;
		OutputStream bos = null;
		try {
			bos = new FileOutputStream(outPutRealPath);
			int bytesRead = 0;
			byte[] buffer = new byte[8192];
			while ((bytesRead = stream.read(buffer, 0, 8192)) != -1) {
				bos.write(buffer, 0, bytesRead);
			}
			flag = true;
		} catch (Exception e) {
			_log.error(e.getMessage());
		} finally {
			stream.close();
			bos.close();
		}
		return flag;
	}

	/**
	 * 调整一个图片文件的大小
	 * 
	 * @param inRealPath
	 * @param outRealPath
	 * @param outWidth
	 * @param outHeigh
	 * @return
	 */
	public static boolean imageOperate(String inRealPath, String outRealPath,
			int outWidth, int outHeigh) {
		boolean opFlag = false;
		try {
			File _file = new File(inRealPath);
			Image src = ImageIO.read(_file);
			int width = src.getWidth(null);
			int height = src.getHeight(null);
			int newWidth = 1;
			int newHeight = 1;

			if ((width < outWidth) && (height < outHeigh)) {
				copyFile(new File(inRealPath), new File(outRealPath));
			} else {
				if (width >= height) {
					newWidth = outWidth;
					newHeight = outWidth * height / width;
				} else {
					newHeight = outHeigh;
					newWidth = outHeigh * width / height;
				}

				BufferedImage tag = new BufferedImage(newWidth, newHeight, 1);
				tag.getGraphics().drawImage(src, 0, 0, newWidth, newHeight,
						null);

				FileOutputStream out = new FileOutputStream(outRealPath);
				JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);

				encoder.encode(tag);
				out.close();
			}
			opFlag = true;
		} catch (Exception e) {
			_log.error(e.getMessage());
		}
		return opFlag;
	}

	/**
	 * 获得一个目录下的子目录数量
	 * 
	 * @param realPath
	 * @return
	 */
	public static int getDirectoryFilesNum(String realPath) {
		int filesNum = 0;
		if (checkFilesFolder(realPath)) {
			File directory = new File(realPath);
			if (directory.isDirectory()) {
				File[] entries = directory.listFiles();
				filesNum = entries.length;
			}
		}
		return filesNum;
	}

	/**
	 * 获得一个目录下所有文件的文件名
	 * 
	 * @param realPath
	 * @return
	 */
	public static List<String> getDirectoryFilesName(String realPath) {
		List<String> ls = new ArrayList<String>();
		if (checkFilesFolder(realPath)) {
			File directory = new File(realPath);
			if (directory.isDirectory()) {
				File[] entries = directory.listFiles();
				for (int i = 0; i < entries.length; i++) {
					if (entries[i].isFile())
						ls.add(entries[i].getName());
				}
			}
		}
		return ls;
	}

	/**
	 * 获得一个文件夹下所有的文件
	 * 
	 * @param realPath
	 * @return
	 */
	public static List<File> getDirectoryFilesNameByFileType(String realPath) {
		List<File> ls = new ArrayList<File>();
		if (checkFilesFolder(realPath)) {
			File directory = new File(realPath);
			if (directory.isDirectory()) {
				File[] entries = directory.listFiles();
				for (int i = 0; i < entries.length; i++) {
					if (entries[i].isFile())
						ls.add(entries[i]);
				}
			}
		}
		return ls;
	}

	/**
	 * 获得一个目录下的子目录名字
	 * 
	 * @param realPath
	 * @return
	 */
	public static List<String> getSubDirsName(String realPath) {
		List<String> ls = new ArrayList<String>();
		if (checkFilesFolder(realPath)) {
			File directory = new File(realPath);
			if (directory.isDirectory()) {
				File[] entries = directory.listFiles();
				for (int i = 0; i < entries.length; i++) {
					if (entries[i].isDirectory())
						ls.add(entries[i].getName());
				}
			}
		}
		return ls;
	}

	/**
	 * 根据目录结构"/a/b/c/d/c"在目标目录下建立目录
	 * 
	 * @param objPath
	 *            目标路径d:/1/2/3
	 * @param filePath
	 * @return
	 */
	public static int smartMakeDir(String objPath, String filePath) {
		int opFlag = 0;
		if (filePath == null || filePath.equals(""))
			return opFlag;
		// 分解路径
		String[] tempPath = filePath.substring(1).split("/");
		String realPath = objPath;
		for (int i = 0; i < tempPath.length; i++) {
			// 检查该路径是否存在，不存在就建立
			realPath += "/" + tempPath[i];
			if (!checkFilesFolder(realPath)) {
				if (makeDir(realPath)) {
					++opFlag;
				} else {
					opFlag = -1;
					break;
				}
			}
		}
		return opFlag;
	}

	/**
	 * 以相对路径建立目录
	 * 
	 * @param context
	 * @param filePath
	 * @return
	 */
	public static int smartMakeDir(ServletContext context, String filePath) {
		int opFlag = 0;
		String[] tempPath = filePath.substring(1).split("/");
		String tempStr = "";
		for (int i = 0; i < tempPath.length; i++) {
			tempStr = tempStr + "/" + tempPath[i];
			String realPath = getRealFilePath(context, tempStr);
			if (!checkFilesFolder(realPath)) {
				if (makeDir(realPath)) {
					opFlag++;
				} else {
					opFlag = -1;
					break;
				}
			}
		}
		return opFlag;
	}

	/**
	 * 对一个数取模（23，19，17）生成文件路径
	 * 
	 * @param buildID
	 * @return
	 */
	public static String makeDirName(int buildID) {
		StringBuffer dirStructure = new StringBuffer();
		dirStructure.append("/").append(String.valueOf(buildID % 23));
		dirStructure.append("/").append(String.valueOf(buildID % 19));
		dirStructure.append("/").append(String.valueOf(buildID % 17));
		return dirStructure.toString();
	}

	/**
	 * 取目录下所有文件名
	 * 
	 * @param realPath
	 * @return
	 */
	public static List<String> getDirectoryAllFiles(String realPath) {
		List<String> fileList = new ArrayList<String>();
		if (checkFilesFolder(realPath)) {
			File directory = new File(realPath);
			if (directory.isDirectory()) {
				File[] entries = directory.listFiles();
				for (int i = 0; i < entries.length; i++) {
					if (entries[i].isFile()) {
						fileList.add(entries[i].getAbsolutePath());
					}
				}
			}
		}
		return fileList;
	}

	/**
	 * 获得子目录的名字
	 * 
	 * @param realPath
	 * @return
	 */
	public static List<String> getSubDirs(String realPath) {
		List<String> dirList = new ArrayList<String>();
		if (checkFilesFolder(realPath)) {
			File directory = new File(realPath);
			if (directory.isDirectory()) {
				File[] entries = directory.listFiles();
				for (int i = 0; i < entries.length; i++) {
					if (entries[i].isDirectory()) {
						dirList.add(entries[i].getAbsolutePath());
					}
				}
			}
		}
		return dirList;
	}

	/**
	 * 在一张图片上打水印
	 * 
	 * @param filePath
	 * @param watermark
	 * @return
	 */
	public static boolean createImgWaterMark(String filePath, String watermark) {
		try {
			File _file = new File(filePath);
			Image theImg = ImageIO.read(_file);
			ImageIcon waterIcon = new ImageIcon("temp");
			Image waterImg = waterIcon.getImage();
			int width = theImg.getWidth(null);
			int height = theImg.getHeight(null);
			BufferedImage bimage = new BufferedImage(width, height, 1);
			Graphics2D g = bimage.createGraphics();
			g.setColor(Color.red);
			g.setBackground(Color.white);
			g.drawImage(theImg, 0, 0, null);
			g.drawImage(waterImg, 100, 100, null);
			g.drawString(watermark, 10, 10);
			g.dispose();
			FileOutputStream out = new FileOutputStream(filePath);
			JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
			JPEGEncodeParam param = encoder.getDefaultJPEGEncodeParam(bimage);
			param.setQuality(50.0F, true);
			encoder.encode(bimage, param);
			out.close();
		} catch (Exception e) {
			_log.error(e.getMessage());
			return false;
		}
		return true;
	}

	/**
	 * uploadfile目录下写出html文件，年月日为目录。当前时间毫秒数为文件名
	 * 
	 * @param msg
	 * @param request
	 * @return
	 * @throws IOException
	 */
	public static String writeFile(String msg, HttpServletRequest request)
			throws IOException {
		String filepath = "";
		String dirStructure = "/uploadfile/" + FormatUtils.getYear() + "/"
				+ FormatUtils.getMonth() + "/" + FormatUtils.getDay();
		String uploadPath = getRealFilePath(request.getSession()
				.getServletContext(), dirStructure);
		String fileName = System.currentTimeMillis() + ".html";
		if (!checkFilesFolder(uploadPath)) {
			smartMakeDir(request.getSession().getServletContext(), dirStructure);
		}
		writeFile(msg, uploadPath + File.separator + fileName);
		filepath = dirStructure + "/" + fileName;
		return filepath;
	}

	/**
	 * 通过相对路径删除文件
	 * 
	 * @param filePath
	 * @param request
	 * @return
	 */
	public static boolean delUploadFile(String filePath,
			HttpServletRequest request) {
		return deleteFile(getRealFilePath(request.getSession()
				.getServletContext(), filePath));
	}

	/**
	 * 获取目录下所有的文件
	 * 
	 * @param path
	 * @param myfile
	 */
	public static void listDirectory(File path, List<File> myfile) {
		if (!path.exists()) {
			_log.info("File " + path.getName() + " is not exist!");
		} else {
			if (path.isFile()) {
				myfile.add(path);
			} else {
				File[] files = path.listFiles();
				for (int i = 0; i < files.length; i++) {
					listDirectory(files[i], myfile);
				}
			}
		}
	}

	public static void main(String[] args) {
	}
}