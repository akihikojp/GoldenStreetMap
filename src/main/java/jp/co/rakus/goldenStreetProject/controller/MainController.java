package jp.co.rakus.goldenStreetProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author yahiro
 *
 */
@Controller
@RequestMapping
public class MainController {
	
	
	//top.jspに遷移
	@RequestMapping("/top")
	public String index() {
		return "top";
	}
	
	/**create文メモ*/
//	CREATE TABLE comments(
//			id integer Not Null primary key,
//			name text,
//			topic text,
//			comment text
//			);
	
	

}
