/**
 * 
 */
package com.barun.springsecurity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Bibhuti
 *
 */
@Controller
public class LoginController {

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(ModelMap map){
		return "login";
	}
	
	@RequestMapping(value="/loginfailed", method=RequestMethod.GET)
	public String loginFailed(ModelMap map){
		map.put("error", true);
		map.put("msg", "Username/ password is not valid ! ");
		return "login";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(ModelMap map){
		return "logout";
	}
	@RequestMapping(value="/403", method=RequestMethod.GET)
	public String error403(ModelMap map){
		return "403";
	}
}
