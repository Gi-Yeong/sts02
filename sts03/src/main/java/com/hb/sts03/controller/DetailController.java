package com.hb.sts03.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hb.sts03.model.dao.GuestDao;
import com.hb.sts03.model.dto.GuestVo;

@Controller
public class DetailController {
    @Autowired
    private GuestDao guestDao;

    @RequestMapping(
            value = "/guest/{idx}"
            , method = RequestMethod.GET)
    public String guestDetail(
            @PathVariable("idx") int sabun
            , Model model) {
        GuestVo bean = guestDao.selectOne(sabun);
        model.addAttribute("bean", bean);
        return "detail";
    }
}
