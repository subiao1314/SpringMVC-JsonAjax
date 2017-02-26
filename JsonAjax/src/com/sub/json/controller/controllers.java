package com.sub.json.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sub.json.models.AccountModel;

@Controller
public class controllers {

       	 
    	@RequestMapping(value="/requestbodybind", method = {RequestMethod.GET})
	    public@ResponseBody AccountModel requestBodyBind( AccountModel accountModel){
    		
		System.out.println(accountModel.getBookname());
		System.out.println(accountModel.getPrice());
		System.out.println(accountModel.getSize());
		accountModel.getBookname();
		System.out.println(accountModel.getPages());
        
		return accountModel;
	}
    	/*@RequestMapping(value="/requestbodybind", method = {RequestMethod.POST})
        public @ResponseBody AccountModel requestBodyBind(@RequestBody AccountModel accountModel){
    				
    		return accountModel;
        }*/
    	
    	
    	
    	
}
