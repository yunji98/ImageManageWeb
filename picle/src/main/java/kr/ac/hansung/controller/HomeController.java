package kr.ac.hansung.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
//logback 인지 뭔지 신경안써도 되고 우리는slf4j interface만 활용하면 돼
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
		// 인자가 있는 로깅 {}로 주기~ ip로 위치 파악 시간 파악 가능 httprequest로 주면 저절로 들어옴

		return "index";
		// tiles.xml(servlet-context.xml)에 명시
	}
	
	@RequestMapping(value = "/index")
	public String getIndex() {
		return "index";
	}

}
