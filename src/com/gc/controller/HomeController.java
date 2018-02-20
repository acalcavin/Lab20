package com.gc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/*
 * @author: Andrew Calabro-Cavin
 *
 */

@Controller
public class HomeController {

	@RequestMapping("/welcome")
	public String registerForm() {

		// String message = "<br><div style='text-align:center;'>"
		// + "<h3>This message is coming from HomeController.java</h3></div>";
		// return new ModelAndView("register", "message2", message);

		return "register";
	}

	@RequestMapping("success")
	public ModelAndView registerSucess(@RequestParam("fName") String firstName, @RequestParam("lName") String lastName,
			@RequestParam("gender") String gender) {
		// could for example take firstName and assign to a person object

		String sayHello = "Hello, " + firstName;

		// first parameter is the name of the jsp
		// second parameter : name of the El tag variable name
		// third parameter : object or data that should go back into our page
		return new ModelAndView("success", "helloMsg", sayHello);
	}
}