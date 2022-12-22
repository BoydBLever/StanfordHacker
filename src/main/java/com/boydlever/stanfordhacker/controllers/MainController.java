package com.boydlever.stanfordhacker.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelExtensionsKt;
import org.springframework.web.bind.annotation.GetMapping;

import com.boydlever.stanfordhacker.services.UserService;

@Controller
public class MainController {
	
	@Autowired
	private UserService userService;
	
    @GetMapping("/index")
    public String dashboard(HttpSession session, Model model) {
    	if(session.getAttribute("userId") == null) {
    		return "redirect:/";
    	}
    	Long userId = (Long) session.getAttribute("userId");
    	model.addAttribute("quantity", 0);
    	model.addAttribute("user", userService.oneUser(userId));
    	return "index.jsp";
    }
}