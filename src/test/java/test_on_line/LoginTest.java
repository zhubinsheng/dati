package test_on_line;

import java.util.LinkedHashMap;
import java.util.Map;

import com.fjnu.sjx.bean.UserBean;
import com.fjnu.sjx.service.LoginService;

public class LoginTest {

	LoginService loginService = new LoginService();

	public Map<String, Object> Login(String username, String password,
			String role) {
		Map<String, String> params = new LinkedHashMap<String, String>();
		params.put("username", username);
		params.put("password", password);
		params.put("role", role);

		Map<String, Object> msg = new LinkedHashMap<String, Object>();

		try {
			UserBean userBean = loginService.isLogin(params);
			msg.put("用户帐号", userBean.getUsername());
			msg.put("结果", "登录成功！");
		} catch (Exception e) {
			msg.put("用户帐号", username);
			msg.put("结果", e.getMessage());
		}

		return msg;
	}

	public static void main(String[] args) {
		// 根据用例表定义登录的用户名/密码/角色
		String[] username = { "nn200433", "nn200433", "nn200433", "1", "1",
				"1", "nn200433", "" };
		String[] password = { "123", "", "", "123", "123", "1", "123", "" };
		String[] role = { "admin", "admin", "", "admin", "stu", "admin", "stu",
				"" };

		LoginTest loginTest = new LoginTest();

		for (int i = 0; i < username.length; i++) {
			System.out.println(loginTest.Login(username[i], password[i],
					role[i]));
		}
	}
	
}
