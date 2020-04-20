package com.fjnu.sjx.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.CellRangeAddress;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

public class ExcelUtil {

	/**
	 * 将excel转成bean数组
	 * @param path xls文件位置
	 * @param sheetName 表格
	 * @param bean
	 * @return 返回一个bean数组
	 * @throws Exception
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static List<Object> importXlsForBean(String path, String sheetName,
			Object bean) throws Exception {
		// 返回的结果集
		List<Object> beanList = new ArrayList<Object>();

		Class beanClass = bean.getClass(); // 获取bean对象的class对象
		Field[] fields = beanClass.getDeclaredFields(); // 获取该类的所有属性

		// 读取excel文件,并获取指定的excel表
		Workbook workbook = new HSSFWorkbook(
				new FileInputStream(new File(path)));
		HSSFSheet sheet = (HSSFSheet) workbook.getSheet(sheetName);

		if (sheet == null) {
			throw new Exception("获取不到Sheet,请检查表名(Sheet)是否输入正确!");
		}

		// 获取表格的总行数
		int rowCount = sheet.getLastRowNum() + 1;// 需要+1
		if (rowCount < 1) {
			return beanList;
		}

		// 获取表头的列数
		int columnCount = sheet.getRow(0).getLastCellNum();

		/* 读取表头信息,确定需要用的方法名 */
		String[] methodNames = new String[columnCount]; // 用来存储方法名
		String[] fieldTypes = new String[columnCount]; // 用来存储属性类型

		/* 获得表头行对象,并遍历 */
		HSSFRow titleRow = sheet.getRow(0);
		for (int columnIndex = 0; columnIndex < columnCount; columnIndex++) {
			String data = titleRow.getCell(columnIndex).toString(); // 某一列的内容
			String Udata = Character.toUpperCase(data.charAt(0))
					+ data.substring(1, data.length()); // 使其首字母大写
			methodNames[columnIndex] = "set" + Udata;
			for (int i = 0; i < fields.length; i++) { // 遍历属性数组
				if (data.equals(fields[i].getName())) { // 属性与表头相等
					fieldTypes[columnIndex] = fields[i].getType().getName(); // 将属性类型放到数组
				}
			}
		}

		/* 逐行读取数据,从1开始,忽略表头 */
		for (int rowIndex = 1; rowIndex < rowCount; rowIndex++) {
			HSSFRow row = sheet.getRow(rowIndex);

			// row为空的情况下直接跳过以下执行,继续循环
			if (row == null) {
				continue;
			}

			// 实例一个该泛型类的一个对象
			Object obj = null;
			obj = beanClass.newInstance();

			// 获得本行中各单元格的数据
			for (int columnIndex = 0; columnIndex < columnCount; columnIndex++) {

				if (row.getCell(columnIndex) == null) {
					continue;
				}

				String data = row.getCell(columnIndex).toString();

				// 如果data为空则跳过以下的执行
				if (StringUtils.isEmpty(data) || null == data) {
					continue;
				}

				// 获得要调用方法的方法名
				String methodName = methodNames[columnIndex];
				Method method = null;

				try {
					if (fieldTypes[columnIndex].equals("java.lang.String")) {
						method = beanClass.getDeclaredMethod(methodName,
								String.class); // 设置要执行的方法--set方法参数为String
						method.invoke(obj, data); // 执行该方法
					} else if (fieldTypes[columnIndex].equals("int")) {
						method = beanClass.getDeclaredMethod(methodName,
								int.class);
						method.invoke(obj, data);
					} else if (fieldTypes[columnIndex]
							.equals("java.math.BigDecimal.class")) {
						method = beanClass.getDeclaredMethod(methodName,
								BigDecimal.class);
						method.invoke(obj, data);
					} else if (fieldTypes[columnIndex].equals("double.class")) {
						method = beanClass.getDeclaredMethod(methodName,
								double.class);
						method.invoke(obj, data);
					} else if (fieldTypes[columnIndex].equals("float.class")) {
						method = beanClass.getDeclaredMethod(methodName,
								float.class);
						method.invoke(obj, data);
					} else if (fieldTypes[columnIndex]
							.equals("java.util.Date.class")) {
						method = beanClass.getDeclaredMethod(methodName,
								Date.class);
						method.invoke(obj, data);
					}
				} catch (Exception e) {
					throw new Exception("找不到表头,请检查表头是否有误!");
				}
			}
			beanList.add(obj);
		}

		return beanList;
	}

	/**
	 * 返回抬头的样式
	 * 
	 * @param wb
	 * @return
	 */
	public static CellStyle getTitleStyle(Workbook wb) {
		// 抬头的样式
		CellStyle titleStyle = wb.createCellStyle();

		// 设置这些样式
		titleStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN);
		titleStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN);
		titleStyle.setBorderRight(HSSFCellStyle.BORDER_THIN);
		titleStyle.setBorderTop(HSSFCellStyle.BORDER_THIN);
		titleStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		// titleStyle.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
		// titleStyle.setFillForegroundColor(HSSFColor.SKY_BLUE.index);//设置单元格填充色

		// 生成抬头字体
		Font titleFont = wb.createFont();
		titleFont.setFontHeightInPoints((short) 16);
		titleFont.setBoldweight(Font.BOLDWEIGHT_BOLD);
		// titleFont.setColor(HSSFColor.BLUE_GREY.index);//设置字体颜色

		// 把字体应用到当前的抬头样式中
		titleStyle.setFont(titleFont);
		return titleStyle;
	}

	/**
	 * 返回标题列名
	 * 
	 * @param wb
	 * @return
	 */
	public static CellStyle getColumnTitleStyle(Workbook wb) {
		// 标题的样式
		CellStyle columnTitleStyle = wb.createCellStyle();

		// 设置这些样式
		columnTitleStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN);
		columnTitleStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN);
		columnTitleStyle.setBorderRight(HSSFCellStyle.BORDER_THIN);
		columnTitleStyle.setBorderTop(HSSFCellStyle.BORDER_THIN);
		columnTitleStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);

		// 生成标题字体
		Font columnTitleFont = wb.createFont();
		columnTitleFont.setFontHeightInPoints((short) 13);
		columnTitleFont.setBoldweight(Font.BOLDWEIGHT_BOLD);

		// 把字体应用到当前的标题样式中
		columnTitleStyle.setFont(columnTitleFont);
		return columnTitleStyle;
	}
	
	/**
	 * 输出xls
	 * @param rows
	 * @param list
	 * @param createHelper
	 * @param wb
	 * @param columnTitle 表头
	 * @param columnName  表头对应的值
	 * @param sheet   表名
	 * @return
	 */
	public static Sheet createSheetContent(int rows,
			List<Map<String, Object>> list, CreationHelper createHelper,
			Workbook wb, String[] columnTitle, String[] columnName, Sheet sheet) {
		Row row = sheet.createRow((short) rows);// sheet 创建明细列标题行
		for (int i = 0; i < columnTitle.length; i++) {// 遍历entityArray,输出标题的列名
			row.createCell(i).setCellValue(
					createHelper.createRichTextString(columnTitle[i]));
			row.getCell(i).setCellStyle(getColumnTitleStyle(wb));// 设置当前单元格样式
		}
		int size = list.size();
		Row row1 = null;
		String cName = null;
		Map<String, Object> map = new HashMap<String, Object>();

		// 红色字体样式
		Font font = wb.createFont();
		font.setColor((short) 2); // 2代表红色
		font.setFontHeightInPoints((short) 11);

		for (int i = 0; i < list.size(); i++) {
			if (size > 20000) {
				row1 = sheet.createRow(i + rows + 1);// sheet 创建一行
			} else {
				row1 = sheet.createRow((short) i + rows + 1);// sheet 创建一行
			}
			row1.setHeight((short) 360);// 设置当前的行高
			map = (Map<String, Object>) list.get(i);

			// 判断该行是否停用
			boolean isstop = "1".equals(map.get("isstop")) ? true : false;
			Cell cell = null;
			for (int j = 0; j < columnName.length; j++) {// j为当前行中的项目号
				cName = columnName[j];
				cell = row1.createCell(j);
				if (isstop) {
					CellStyle style = wb.createCellStyle();
					style.setBorderBottom(HSSFCellStyle.BORDER_THIN);
					style.setBorderLeft(HSSFCellStyle.BORDER_THIN);
					style.setBorderRight(HSSFCellStyle.BORDER_THIN);
					style.setBorderTop(HSSFCellStyle.BORDER_THIN);
					style.setFont(font);
					style.setAlignment(cell.getCellStyle().getAlignment());
					cell.setCellStyle(style);
				}

				if ((map.get(cName) != null) && (map.get(cName) != "")) {
					if (map.get(cName).getClass().getName()
							.equals("java.lang.Double")) {
						cell.setCellValue(Double.parseDouble(map.get(cName)
								.toString()));
					} else if (map.get(cName).getClass().getName()
							.equals("java.math.BigDecimal")) {
						cell.setCellValue(Double.parseDouble(map.get(cName)
								.toString()));
					} else {
						cell.setCellValue(createHelper.createRichTextString(map
								.get(cName).toString()));
					}
				} else {
					cell.setCellValue("");
				}
			}

		}
		return sheet;
	}
	
	/**
	 * 导出xls文件
	 * @param os 输出位置
	 * @param columnTitle	逻辑表头
	 * @param columnName	物理表头
	 * @param exportList	数据
	 * @throws Exception
	 */
	@SuppressWarnings("deprecation")
	public static void exportXls(OutputStream os,String []columnTitle,String []columnName,
			List<Map<String, Object>> exportList) throws Exception {

		SimpleDateFormat formate = new SimpleDateFormat("yyyyMMddHHmm");
		Date date = new Date();

		String title = "分类库存列表";
		// 定义导出文件名
		String fileName = formate.format(date);// 以当前系统时间为文件名
		fileName = title + fileName;// 导出文件名重定义

		// 定义导出excel表头标题名称
		String titleName = title;

		// 定义Sheet的名称
		String sheetName = title;
		Workbook wb = null;
		CreationHelper createHelper = null;
		Sheet sheet = null;

		wb = new HSSFWorkbook();
		createHelper = wb.getCreationHelper();
		sheet = wb.createSheet(sheetName);// 为sheet命名
		sheet.setDefaultRowHeight((short) 360);// 设置整个表单的行高

		Row titleRow = sheet.createRow((short) 0);// sheet 创建title行
		titleRow.setHeight((short) 560);// 设置当行行高
		sheet.addMergedRegion(new CellRangeAddress(0, 0, 0,columnTitle.length - 1));// 合并第一行的列
		titleRow.createCell(0).setCellValue(
				createHelper.createRichTextString(titleName));
		titleRow.getCell(0).setCellStyle(ExcelUtil.getTitleStyle(wb));// 设置当前单元格样式

		sheet = ExcelUtil.createSheetContent(1, exportList, createHelper, wb,
				columnTitle, columnName, sheet);

		wb.write(os);// 输出到指定位置
	}

}
