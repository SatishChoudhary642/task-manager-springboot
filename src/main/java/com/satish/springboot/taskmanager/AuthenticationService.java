package com.satish.springboot.taskmanager;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {
    
    public boolean authenticate(String username, String password){
        boolean isValidUserName=username.equalsIgnoreCase("Satish");
        boolean isValidUserPassword=password.equalsIgnoreCase("123");
        return isValidUserName && isValidUserPassword;
    }
}
