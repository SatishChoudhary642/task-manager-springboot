package com.satish.springboot.taskmanager.todo;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class TodoController {
    
    private TodoService todoService;

    public TodoController(TodoService todoService) {
        this.todoService = todoService;
    }

    @RequestMapping("list-todos")
    public String requestMethodName(ModelMap model) {
        List<Todo>todos= todoService.findByUsername("Satish");
        model.addAttribute("todos", todos);
        return "listTodos";
    }
    
}
