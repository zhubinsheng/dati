package com.fjnu.sjx.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.Template;

public class DocUtil {

	/**
	 * 
	 * @param dataMap 数据
	 * @param fileName 文件名
	 * @throws Exception
	 */
	public void createDoc(Map<String, Object> dataMap, String fileName)
			throws Exception {
		// 加载根目录底下的模版
		Configuration configuration = new Configuration();
		configuration.setDefaultEncoding("utf-8");
		configuration.setDirectoryForTemplateLoading(new File(this.getClass()
				.getResource("").getPath().substring(1)));
		// test.ftl为要装载的模板
		Template t = configuration.getTemplate("test.ftl");
		// 输出文档路径及名称
		File outFile = new File(fileName);
		Writer out = null;
		FileOutputStream fos = null;
		fos = new FileOutputStream(outFile);
		OutputStreamWriter oWriter = new OutputStreamWriter(fos, "UTF-8");
		out = new BufferedWriter(oWriter);
		t.process(dataMap, out);

		out.close();
		fos.close();
	}

}
