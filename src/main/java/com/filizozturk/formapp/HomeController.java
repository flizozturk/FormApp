package com.filizozturk.formapp;


import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.filizozturk.entity.User;
import com.filizozturk.service.UserService;



@Controller
public class HomeController {
	
	@Autowired
	private UserService userService;
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest req) {
		System.out.println(req.getRemoteAddr());
		for (User user : userService.getAll())
			System.out.println(user.getName());
		return "index";
	}

	@RequestMapping(value = "/ekle", method = RequestMethod.GET)
	public String ekle(Model model) {
		return "add";
	}
	
	
	@RequestMapping(value = "/error_404", method = RequestMethod.GET)
	public String error(Model model) {
		return "error_404";
	}
	
	
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public ResponseEntity<String> add(@RequestBody User user, HttpServletRequest request){
		System.out.println(user.toString());
		
		userService.createUser(user,request);
		return new ResponseEntity<>("OK", HttpStatus.CREATED);
		
	}

}

