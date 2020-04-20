package test_on_line;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import com.fjnu.sjx.util.DocUtil;

public class Doc {

	/**
	 * @param args
	 * @throws UnsupportedEncodingException
	 */
	public static void main(String[] args) {
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		dataMap.put("title", "这是一个生成doc文档的测试");
		dataMap.put("test", "百度");

		DocUtil docUtil=new DocUtil();
		try {
			docUtil.createDoc(dataMap, "D:/Desktop/outFile.doc");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
