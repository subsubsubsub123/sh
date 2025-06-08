package com.example.shoppinglist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ShoppingListController {

    private List<String> items = new ArrayList<>();

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("items", items);
        return "index";
    }

    @PostMapping("/add")
    public String addItem(@RequestParam String item) {
        items.add(item);
        return "redirect:/";
    }

    @PostMapping("/delete")
    public String deleteItem(@RequestParam int index) {
        if (index >= 0 && index < items.size()) {
            items.remove(index);
        }
        return "redirect:/";
    }
}
