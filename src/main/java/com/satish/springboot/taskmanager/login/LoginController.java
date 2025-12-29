package com.satish.springboot.taskmanager.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.satish.springboot.taskmanager.AuthenticationService;

@Controller
@SessionAttributes("name")
public class LoginController {
    
    private AuthenticationService authenticationService;

    
    public LoginController(AuthenticationService authenticationService) {
        this.authenticationService = authenticationService;
    }

    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String gottoLoginPage(){
        return "login";
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String gottoWelcomePage(@RequestParam String name, @RequestParam String password, ModelMap model){
        model.put("name", name);
       
        //Authentication
        //name - Satish 
        //password - 123
        if (authenticationService.authenticate(name, password)) {
            return "welcome";        
        }

        model.put("errorMessage", "Invalid Credentials! Please try again.");
        return "login";
    }
}
