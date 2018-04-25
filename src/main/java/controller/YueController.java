package controller;

import Dao.CommentDao;
import entity.Comments;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import util.DateHelper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping( "/yue/**")
public class YueController {

    @Autowired
    private CommentDao cd;

    @RequestMapping("/ayi")
    public String ayi(HttpServletRequest request){
        String name="阿一鲍鱼";
        HttpSession session = request.getSession();
        session.setAttribute("comcuisine",name);
        System.out.println("跳转到阿一鲍鱼界面");

        List list = new ArrayList();
        System.out.println(name+"..............");
        list = cd.find(name);

        System.out.println("list"+list);
        session.setAttribute("commentlist", list);
        return "yue/阿一鲍鱼";
    }

    @RequestMapping("/to")
    public String to(HttpServletRequest request){
        String cuisine = request.getParameter("cuisine");
        HttpSession session = request.getSession();
        session.setAttribute("comcuisine",cuisine);
        System.out.println("跳转到"+cuisine+"界面");

        List list = new ArrayList();
        list = cd.find(cuisine);

        System.out.println("list"+list);
        session.setAttribute("commentlist", list);

        return "yue/"+cuisine;
    }

}
