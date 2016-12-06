package com.hb.sts04.guest.controller;

import com.hb.sts04.guest.model.GuestDao;
import com.sun.javafx.sg.PGShape;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GuestController {
    @Autowired
    private GuestDao guestDao;

    @RequestMapping("/guest")
    public String guestList(Model model) {
        model.addAttribute("alist", guestDao.selectAll());
        return "guest/list";
    }

    @RequestMapping(value = "/guest/{sabun}", method = RequestMethod.GET)
    public String guestOne(@PathVariable("sabun") int sabun, Model model) {
        model.addAttribute("bean", guestDao.selectOne(sabun));
        return "guest/detail";
    }

    @RequestMapping(value = "/guest/{sabun}", method = RequestMethod.PUT)
    public String guestUpdate(){
        System.out.println("PUT");
        return "guest/detail";
    }
}
