package test_on_line;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.fjnu.sjx.iface.GsonInterface;
import com.fjnu.sjx.impl.GsonInterfaceImpl;
import com.fjnu.sjx.util.Pinyin4jUtil;
import com.fjnu.sjx.util.QuestionsUtil;
import com.mashape.unirest.http.exceptions.UnirestException;

public class Test {
	public static void main(String[] args) throws UnirestException, IOException {
		long beginTime = System.currentTimeMillis();
		GsonInterface gson = new GsonInterfaceImpl();
		Map<String, Object> queList = gson.getConvertToMap(QuestionsUtil.getQuestionsList());
		
		Map<String, Object> list = (Map<String, Object>) queList.get("result");
		
		Iterator<Map.Entry<String, Object>> i = list.entrySet().iterator();
		List<String> insertList =new ArrayList<String>();
		int index =100;
		while(i.hasNext()){
			Map.Entry<String, Object> temp =i.next();
			String key = temp.getKey();
			String value = Pinyin4jUtil.converterToFirstSpell(key);
			List<Map<String, Object>> subList = (List<Map<String, Object>>) temp.getValue();
			
			index++;
			String insertParent = "INSERT INTO t_sys_dic(id,dic_name,dic_value, grade, parent_id) VALUES ('"+index+"','"+key+"','"+value+"','1','1');";
			insertList.add(insertParent);
			int subIndex = index * 1000;
			for (Map<String, Object> map:subList){
				String subKey = (String) map.get("catalog");
				Object subValue =  map.get("id");

				subIndex++;
				String insertSub = "INSERT INTO t_sys_dic(id,dic_name,dic_value, grade, parent_id) VALUES ('"+subIndex+"','"+subKey+"','"+subValue+"','2','"+index+"');";
				insertList.add(insertSub);
			}
		}
		
		System.out.println("总共:"+insertList.size()+"行");
		BufferedWriter bw = new BufferedWriter(new FileWriter("F:/inertList.txt",true));
		int insertIndex=0;
		for(String t:insertList){
			System.out.println("-------------正在执行第"+(insertIndex++)+"行");
			bw.write(t);
			bw.newLine();
			bw.flush();
		}
		bw.close();
		
		long endTime = System.currentTimeMillis();
		System.out.println((endTime-beginTime)/1000);
	}
}
