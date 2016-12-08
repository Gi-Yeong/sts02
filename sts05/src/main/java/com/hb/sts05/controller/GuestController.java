package com.hb.sts05.controller;

import com.hb.sts05.model.GuestDao;
import com.hb.sts05.model.GuestVo;
import netscape.javascript.JSObject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/guest/")
public class GuestController {
    @Autowired
    private SqlSession sqlSession;

    @RequestMapping("/")
    public String guestList(Model model) {
        GuestDao mapper = sqlSession.getMapper(GuestDao.class);
        List list = mapper.selectAll();
        model.addAttribute("alist", list);
        return "guest";
    }

    @RequestMapping("/detail")
    public String guestDetail(Model model, @RequestParam("idx") int sabun) {
        GuestDao mapper = sqlSession.getMapper(GuestDao.class);
        GuestVo bean = mapper.selectOne(sabun);

        model.addAttribute("bean", bean);
        return "detail";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String guestUpdate(GuestVo bean) {
        GuestDao mapper = sqlSession.getMapper(GuestDao.class);
        mapper.updateOne(bean);

        return "redirect:/guest/";
    }

    @RequestMapping("/add")
    public String addView() {
        return "insert";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String addView(GuestVo bean) {
        GuestDao mapper = sqlSession.getMapper(GuestDao.class);
        mapper.insertOne(bean);
        return "redirect:/guest/";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String guestDel(@RequestParam("idx") int sabun) {
        GuestDao mapper = sqlSession.getMapper(GuestDao.class);
        mapper.deleteOne(sabun);
        return "redirect:/guest/";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public void guestLogin(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        PrintWriter out = null;
        try {
            out = response.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println(id + ":" + pw);
        if (id.equals("abcd") && pw.equals("1234")) {
            if (out != null) {
                out.print("success");
            }
        } else {
            if (out != null) {
                out.print("fail");
            }
        }
    }
}
