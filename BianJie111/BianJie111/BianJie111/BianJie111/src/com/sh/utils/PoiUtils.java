package com.sh.utils;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;

import javax.imageio.ImageIO;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFClientAnchor;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFPatriarch;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;

public class PoiUtils {
	
	public void cteateCell(HSSFWorkbook wb,HSSFRow row,short col,String val){
        HSSFCell cell=row.createCell(col);
        cell.setEncoding(HSSFCell.ENCODING_UTF_16);
        cell.setCellValue(val);
        HSSFCellStyle cellstyle=wb.createCellStyle();
        cellstyle.setAlignment(HSSFCellStyle.ALIGN_CENTER_SELECTION);
        cell.setCellStyle(cellstyle);
    }
	
	public void cteateCell_(HSSFWorkbook wb,HSSFRow row,short col,String val){
        HSSFCell cell = row.createCell(col);
        cell.setEncoding(HSSFCell.ENCODING_UTF_16);
        cell.setCellValue(val+"");
    }
	
	public void cteateCell_t(HSSFWorkbook wb,HSSFRow row,short col,String val){
		 HSSFCell cell = row.createCell(col);
		 cell.setEncoding(HSSFCell.ENCODING_UTF_16);
	     cell.setCellValue(Integer.parseInt(val));
	     cell.setCellStyle(fontstyle_o(wb));
	     
    }
	
	// 自定义的方法,插入某个图片到指定索引的位置col--横 ，row--列
	public static void insertImage(HSSFWorkbook wb, HSSFPatriarch pa,
	   byte[] data, short col1, int row1, short col2, int row2) {
		HSSFClientAnchor anchor = new HSSFClientAnchor(0, 0, 1023, 255, col1, row1, col2, row2);
		anchor.setAnchorType(2);
		pa.createPicture(anchor, wb.addPicture(data, HSSFWorkbook.PICTURE_TYPE_JPEG));
	 }
    
    //从图片里面得到字节数组
	public static  byte[] getImageData(BufferedImage bi){
        try{
             ByteArrayOutputStream bout=new ByteArrayOutputStream();
             ImageIO.write(bi,"JPEG",bout);
            return bout.toByteArray();
         }catch(Exception exe){
             exe.printStackTrace();
            return null;
         }
     }
	/**
	 * 
	 * @param wb
	 * @param row
	 * @param col
	 * @param val
	 * @param type
	 */
	public void cteateCell_(HSSFWorkbook wb,HSSFRow row,short col,String val,int type){
        HSSFCell cell = row.createCell(col);
        cell.setEncoding(HSSFCell.ENCODING_UTF_16);
        cell.setCellValue(val);
        switch (type){
	        case 1:
	        	cell.setCellStyle(fontstyle_o(wb));
	        	break;
	        case 2:
	        	cell.setCellStyle(fontstyle_t(wb));
	        	break;
		 	case 3:
		 		cell.setCellStyle(fontstyle_th(wb));
		 		break;
		 	case 4:
		 		cell.setCellStyle(fontstyle_f(wb));
		 		break;
		 	case 5:
		 		cell.setCellStyle(fontstyle_six(wb));
		 		break;
        }
    }
	
	/**
	 * 字体
	 * @param wb
	 * @return
	 */
	public HSSFCellStyle fontstyle_o(HSSFWorkbook wb){
		//设置样式
		HSSFCellStyle style = wb.createCellStyle();
		//生成一个字体样式
        HSSFFont font = wb.createFont();
        font.setColor(HSSFColor.RED.index);//字体颜色黑色
        style.setFont(font);
		return style;
	}
	
	public HSSFCellStyle fontstyle_t(HSSFWorkbook wb){
		//设置样式
		HSSFCellStyle style = wb.createCellStyle();
		style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);//垂直
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER);//水平 
		//生成一个字体样式
        HSSFFont font = wb.createFont();
        font.setColor(HSSFColor.BLACK.index);//字体颜色黑色
        font.setFontHeightInPoints((short)12);//字体size
        font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);//加粗
        font.setFontName("宋体");//字体为宋体
        style.setFont(font);
		return style;
	}
	
	public HSSFCellStyle fontstyle_th(HSSFWorkbook wb){
		//设置样式
		HSSFCellStyle style = wb.createCellStyle();
		style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);//垂直
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER);//水平 
		//生成一个字体样式
        HSSFFont font = wb.createFont();
        font.setColor(HSSFColor.BLACK.index);//字体颜色黑色
        font.setFontHeightInPoints((short)12);//字体size
        font.setFontName("宋体");//字体为宋体
        style.setFont(font);
		return style;
	}
	
	public HSSFCellStyle fontstyle_f(HSSFWorkbook wb){
		//设置样式
		HSSFCellStyle style = wb.createCellStyle();
		style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);//垂直
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER);//水平 
		style.setFillForegroundColor(HSSFColor.PLUM.index);
		style.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
		style.setBorderBottom(HSSFCellStyle.BORDER_THIN);
		style.setBottomBorderColor(HSSFColor.GREY_25_PERCENT.index);
		style.setBorderLeft(HSSFCellStyle.BORDER_THIN);
		style.setLeftBorderColor(HSSFColor.GREY_25_PERCENT.index);
		style.setBorderRight(HSSFCellStyle.BORDER_THIN);
		style.setRightBorderColor(HSSFColor.GREY_25_PERCENT.index);
		style.setBorderTop(HSSFCellStyle.BORDER_THIN);
		style.setTopBorderColor(HSSFColor.GREY_25_PERCENT.index);
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER); 
		//生成一个字体样式
        HSSFFont font = wb.createFont();
        font.setColor(HSSFColor.BLACK.index);//字体颜色黑色
        font.setFontHeightInPoints((short)12);//字体size
        font.setFontName("宋体");//字体为宋体
        style.setFont(font);
		return style;
	}
	
	public HSSFCellStyle fontstyle_six(HSSFWorkbook wb){
		//设置样式
		HSSFCellStyle style = wb.createCellStyle();
		style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);//垂直
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER);//水平 
		style.setFillForegroundColor(HSSFColor.TEAL.index);
		style.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
		style.setBorderBottom(HSSFCellStyle.BORDER_THIN);
		style.setBottomBorderColor(HSSFColor.GREY_25_PERCENT.index);
		style.setBorderLeft(HSSFCellStyle.BORDER_THIN);
		style.setLeftBorderColor(HSSFColor.GREY_25_PERCENT.index);
		style.setBorderRight(HSSFCellStyle.BORDER_THIN);
		style.setRightBorderColor(HSSFColor.GREY_25_PERCENT.index);
		style.setBorderTop(HSSFCellStyle.BORDER_THIN);
		style.setTopBorderColor(HSSFColor.GREY_25_PERCENT.index);
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER); 

		//生成一个字体样式
        HSSFFont font = wb.createFont();
        font.setColor(HSSFColor.BLACK.index);//字体颜色黑色
        font.setFontHeightInPoints((short)12);//字体size
        font.setFontName("宋体");//字体为宋体
        style.setFont(font);
		return style;
	}
}
