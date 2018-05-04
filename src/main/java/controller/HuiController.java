package controller;

import Dao.CommentDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping( "/hui/**")
public class HuiController {
/*

    @Autowired
    private CommentDao cd;

    @RequestMapping("/to")
    public String to(HttpServletRequest request){
        String cuisine = request.getParameter("cuisine");
        String what = request.getParameter("what");
        HttpSession session = request.getSession();
        session.setAttribute("comcuisine",cuisine);
        session.setAttribute("what",what);
        System.out.println("跳转到"+cuisine+"界面");

        List list = new ArrayList();
        list = cd.find(cuisine);

        System.out.println("list"+list);
        session.setAttribute("commentlist", list);

        return what+"/"+cuisine;
    }
*/

}
