package test_on_line;

import junit.framework.TestCase;

import com.fjnu.sjx.util.GlobalUtil;

public class MyTest extends TestCase {
	@SuppressWarnings("static-access")
	public static void main(String[] args) {

		MyTest myTest = new MyTest();

		String a = "", b = "abc", c = "0", d = "2";
		Integer intA = new Integer(0), intB = new Integer(1), intC = new Integer(2);

		// 输入字符串为空则返回空，否则返回字符串本身
		myTest.assertEquals("", GlobalUtil.NullToStr(a));
		myTest.assertEquals("abc", GlobalUtil.NullToStr(b));
		myTest.assertEquals("0", GlobalUtil.NullToStr(c));

		// 输入的对象不为空则返回对象本身的字符串
		myTest.assertEquals("0", GlobalUtil.NullToStr(intA));
		myTest.assertEquals("1", GlobalUtil.NullToStr(intB));
		myTest.assertEquals("2", GlobalUtil.NullToStr(intC));

		// 输入的字符串为空则返回字符串“0”,否则返回字符串本身
		myTest.assertEquals("0", GlobalUtil.NullToStrZero(a));
		myTest.assertEquals("abc", GlobalUtil.NullToStrZero(b));

		// 输入的字符串为空则返回0，否者返回转换为整形的数字
		myTest.assertEquals(2, GlobalUtil.NullToObjectZero(d));
		myTest.assertEquals(0, GlobalUtil.NullToObjectZero(a));

		System.out.println("=================执行完成===============");
	}
}
