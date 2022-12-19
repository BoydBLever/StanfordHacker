package com.boydlever.stanfordhacker.controllers;


import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.boydlever.stanfordhacker.models.LoginUser;
import com.boydlever.stanfordhacker.models.User;
import com.boydlever.stanfordhacker.services.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@GetMapping("/")
	public String logregform(Model model) {
		model.addAttribute("newUser", new User());
		model.addAttribute("newLogin", new LoginUser());
		return "logreg.jsp";
	}
	@PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser, 
            BindingResult result, Model model, HttpSession session) {
		
		User registeredUser = userService.register(newUser, result);
		
        
        if(result.hasErrors()) {
            model.addAttribute("newLogin", new LoginUser());
            return "logreg.jsp";
        }
   
        session.setAttribute("userId", registeredUser.getId());
        session.setAttribute("userName", registeredUser.getUserName());
        return "redirect:/index";
        
    
    }
    
    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
            BindingResult result, Model model, HttpSession session) {
        
    	User loginUser = userService.login(newLogin, result);
    	

    	if (result.hasErrors()) {
    		model.addAttribute("newUser", new User());
    		return "logreg.jsp";
    	}

    	session.setAttribute("userId", loginUser.getId());
    	session.setAttribute("userName", loginUser.getUserName());
    		return "redirect:/index";
    }
        
    @GetMapping("/logout")
    public String logout(HttpSession session) {
    	session.invalidate();
    	return "redirect:/";
    }
}
