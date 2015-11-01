package com.meng.spacex.example;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * author by hongshuai.hs on 2015/11/1.
 */
@Controller
public class IndexController {
    @RequestMapping("/")
    public String hello(Model model) {
        model.addAttribute("name", "hongshuai.hs");
        return "/index";
    }
}
