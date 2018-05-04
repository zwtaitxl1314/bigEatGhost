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
@RequestMapping( "/cuisine/**")
public class CuisineController {

    @Autowired
    private CommentDao cd;


    @RequestMapping("/more_lu")
    public String more(HttpServletRequest request){
        System.out.println("跳转到鲁菜系界面");
        return "cuisine/cuisine-lu";
    }

    @RequestMapping("/more_chuan")
    public String more_chuan(HttpServletRequest request){
        System.out.println("跳转到川菜系界面");
        return "cuisine/cuisine-chuan";
    }

    @RequestMapping("/more_yue")
    public String more_yue(HttpServletRequest request){
        System.out.println("跳转到粤菜系界面");
        return "cuisine/cuisine-yue";
    }
    @RequestMapping("/more_su")
    public String more_su(HttpServletRequest request){
        System.out.println("跳转到苏菜系界面");
        return "cuisine/cuisine-su";
    }
    @RequestMapping("/more_min")
    public String more_min(HttpServletRequest request){
        System.out.println("跳转到菜系界面");
        return "cuisine/cuisine-min";
    }
    @RequestMapping("/more_zhe")
    public String more_zhe(HttpServletRequest request){
        System.out.println("跳转到浙菜系界面");
        return "cuisine/cuisine-zhe";
    }
    @RequestMapping("/more_xiang")
    public String more_xiang(HttpServletRequest request){
        System.out.println("跳转到湘菜系界面");
        return "cuisine/cuisine-xiang";
    }
    @RequestMapping("/more_hui")
    public String more_hui(HttpServletRequest request){
        System.out.println("跳转到徽菜系界面");
        return "cuisine/cuisine-hui";
    }

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
}
