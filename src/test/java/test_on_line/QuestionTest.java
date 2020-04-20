package test_on_line;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.fjnu.sjx.iface.GsonInterface;
import com.fjnu.sjx.impl.GsonInterfaceImpl;
import com.fjnu.sjx.util.JdbcUtil;
import com.fjnu.sjx.util.QuestionsUtil;
import com.mashape.unirest.http.exceptions.UnirestException;

public class QuestionTest {
	
	public static void main(String[] args) throws UnirestException, IOException{
		long startTime = System.currentTimeMillis();
		
		GsonInterface gson = new GsonInterfaceImpl();
		
		System.out.println("--------------开始读取JSON");
		
		String jsonStr = QuestionsUtil.getQuestions("208", "3", "30");
		
//		BufferedReader br = new BufferedReader(new FileReader("D:/正则测试.txt"));
//		String jsonStr = "";
//		String tempLine = null;
//		while((tempLine=br.readLine()) != null){
//			jsonStr+=tempLine;
//		}
//		br.close();
		
		System.out.println("--------------开始解析替换HTML标签");
		
		Map<String, String> paramsMap = new HashMap<String, String>();
		paramsMap.put("<", "&lt;");
		paramsMap.put(">", "&gt;");
		paramsMap.put("\"", "&quot;");
		
		String newJsonStr = gson.getRegFilterToNewJSON("<(S*?)[^>]*>.*?|<.*? />",paramsMap,jsonStr,"","",false);
		
		paramsMap = new HashMap<String, String>();
		paramsMap.put("\"", "");
		newJsonStr = gson.getRegFilterToNewJSON("\"question\":\".*?\",\"answer\"",paramsMap,newJsonStr,"\"question\":\"","\",\"answer\"",false);
		
		long endTime = System.currentTimeMillis();
		System.out.println("花费时间：" + (endTime-startTime) + "ms");
		
		System.out.println("结果：" + newJsonStr);
		
		/************************生成INSERT语句************************/
		Map<String, Object> queList = gson.getConvertToMap(newJsonStr);
		
		List<Map<String, Object>> resultList = (List<Map<String, Object>>) queList.get("result");
		
		
		StringBuffer insertBuffer = new StringBuffer();
		insertBuffer.append(" INSERT INTO t_sys_questions ( ");
		insertBuffer.append(" 	subject_name, ");
		insertBuffer.append(" 	knowledge, ");
		insertBuffer.append(" 	source_name, ");
		insertBuffer.append(" 	question, ");
		insertBuffer.append(" 	answer, ");
		insertBuffer.append(" 	resolve ");
		insertBuffer.append(" ) ");
		insertBuffer.append(" VALUES ");
		insertBuffer.append(" 	( ");
		insertBuffer.append(" 		?, ");
		insertBuffer.append(" 		?, ");
		insertBuffer.append(" 		?, ");
		insertBuffer.append(" 		?, ");
		insertBuffer.append(" 		?, ");
		insertBuffer.append(" 		?) ");
		
		
		try {
			Connection conn = JdbcUtil.getConnection();
			PreparedStatement pstm = conn.prepareStatement(insertBuffer.toString());
			
			conn.setAutoCommit(false);
			conn.prepareStatement(insertBuffer.toString());
			for(Map<String, Object> objMap : resultList){
				String subjectName = objMap.get("subjectName").toString();
				String knowledge = objMap.get("knowledge").toString();
				String sourcename = objMap.get("sourcename").toString();
				String question = objMap.get("question").toString();
				String answer = objMap.get("answer").toString();
				String resolve = objMap.get("resolve").toString();
				
				Reader questionReader = new StringReader(question);
				Reader resolveReader = new StringReader(resolve);
				pstm.setString(1, subjectName);
				pstm.setString(2, knowledge);
				pstm.setString(3, sourcename);
				pstm.setClob(4, questionReader);
				pstm.setString(5, answer);
				pstm.setClob(6, resolveReader);
				
				pstm.addBatch();
			}
			
			pstm.executeBatch();
			conn.commit();
			pstm.clearBatch();
			
			pstm.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
