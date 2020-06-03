package kr.ac.hansung.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
//logback ���� ���� �Ű�Ƚᵵ �ǰ� �츮��slf4j interface�� Ȱ���ϸ� ��
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);


	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request, Locale locale) {

		logger.info("info level : Welcom home! The client locale is {}", locale);

		String url = request.getRequestURL().toString();
		String ClientIPaddress = request.getRemoteAddr();

		logger.info("Request URL : {}, Client IP: {}", url, ClientIPaddress);
		// ���ڰ� �ִ� �α� {}�� �ֱ�~ ip�� ��ġ �ľ� �ð� �ľ� ���� httprequest�� �ָ� ������ ����

		return "index";
		// tiles.xml(servlet-context.xml)�� ���
	}
	
	@RequestMapping(value = "/index")
	public String getIndex() {
		return "index";
	}

}
