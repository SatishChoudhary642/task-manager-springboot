package com.satish.springboot.taskmanager.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class TodoService {
    private static List<Todo> todos = new ArrayList<>();
    static{
        todos.add(new Todo(1, "Satish", "Learn SpringBoot", LocalDate.now().plusMonths(3), false));
        todos.add(new Todo(2, "Satish", "Learn LLD HLD", LocalDate.now().plusMonths(6), false));
        todos.add(new Todo(3, "Satish", "Master DSA", LocalDate.now().plusMonths(3), false));
    }

    public List<Todo> findByUsername(String username){
        return todos;
    }
}
