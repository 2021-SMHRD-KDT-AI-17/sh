package kr.smhrd.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.entity.Todo;
import kr.smhrd.mapper.TodoMapper;

@Controller
public class TodoController {

    @Autowired
    private TodoMapper todoMapper;

    @RequestMapping("/showTodoList")
    public String showTodoList(Model model) {
		List<Todo> t_list =todoMapper.getAllTodoItems();
		model.addAttribute("t_list",t_list);
		System.out.println(t_list);
        return "todo";
    }

    @RequestMapping("/addTodoItem")
    public String addTodoItem(@RequestParam("date") String date, @RequestParam("content") String content) {
        Todo todo = new Todo();
        todo.setDate(date);
        todo.setContent(content);
        todo.setCompleted(false); // 새로운 항목을 추가할 때 completed는 기본적으로 false로 설정
        todoMapper.addTodoItem(todo);
        System.out.println(todo);
        return "redirect:/showTodoList";
    }

    @RequestMapping("/updateTodoItem")
    public String updateTodoItem(@RequestParam Long id, @RequestParam(defaultValue = "false") boolean completed) {
        Map<String, Object> params = new HashMap<>();
        params.put("id", id);
        params.put("completed", completed);
        todoMapper.updateTodoItem(params);
        return "redirect:/showTodoList";
    }

    @RequestMapping("/deleteTodoItem")
    public String deleteTodoItem(@RequestParam Long id) {
        todoMapper.deleteTodoItem(id);
        System.out.println("삭제하기~!@");
        return "redirect:/showTodoList";
    }
}