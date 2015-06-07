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
}
