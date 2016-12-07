package com.hb.sts05.controller;

import com.hb.sts05.model.GuestDao;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class GuestController {
    @Autowired
    private SqlSession sqlSession;

    @RequestMapping("/guest")
    public String guestList(Model model) {
        GuestDao mapper = sqlSession.getMapper(GuestDao.class);
        List list = mapper.selectAll();
        model.addAttribute("alist", list);
        return "guest";
    }

}
