package com.sh.utils;

import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.WritableRaster;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.imageio.ImageIO;

public class MyTools {

	/**
	 * ��õ�ǰʱ��
	 * 
	 * @return
	 */
	public static String getSimpleDate() {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return formatter.format(new Date());
	}
	
	// ����Σ���ַ�
	public static String filterStr(String str) {
		str = str.replaceAll(";", "��");
		str = str.replaceAll("&", "&amp;");
		str = str.replaceAll("<", "&lt;");
		str = str.replaceAll(">", "&gt;");
		str = str.replaceAll("'", "��");
		// str = str.replaceAll("/", "");
		str = str.replaceAll("%", "��");
		str = str.replaceAll("\"", "��");
		return str;
	}
	
	/**
	 * ������������
	 * 
	 * @param num
	 * @return
	 */
	public static String addTime(int num) {
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		cal.add(Calendar.DATE, num);
		Date date = cal.getTime();
		return df.format(date);
	}
	
	
	/**
	 * md5
	 * @param pass
	 * @return
	 */
	public static String md5(String pass) {
		String str = "";
		try {
			MessageDigest md5 = MessageDigest.getInstance("md5");
			byte[] by = md5.digest(pass.getBytes());
			for (int i = 0; i < by.length; i++) {
				str += Byte.toString(by[i]);
			}
		} catch (Exception e) {
			System.out.println("�������ʧ��");
		}
		return str;
	}
	
	public static void closeAll(ResultSet rst, Connection con,
			PreparedStatement psmt) {
		try {
			if (rst != null)
				rst.close();
			if (psmt != null)
				psmt.close();
			if (con != null)
				con.close();

		} catch (Exception e) {
			System.out.println("���ݿ�ر��쳣");
		}
	}
	
	/*
	 * ���ַ������н���gbk����
	 */
	public static String getGBK(String str) {
		String newStr = null;
		try {
			if (str == "") {
				return null;
			} else {
				return new String(str.getBytes("iso8859-1"), "gbk");
			}
		} catch (Exception e) {
			return null;
		}
	}
}
