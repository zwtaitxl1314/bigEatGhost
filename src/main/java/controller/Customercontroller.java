package controller;

import Dao.CommentDao;
import Dao.UserDao;
import entity.Comments;
import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.CommentService;
import service.UserService;
import util.MessageDigestType;
import util.StringHelper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import static util.DateHelper.dateFormat;
import static util.DateHelper.datetime;

@Controller
@RequestMapping( "/customer/**")
public class Customercontroller {

    @Autowired
    private  User user;
    @Autowired
    private  UserService us;

    @Autowired
    private UserDao userdao;

    @Autowired
    private CommentDao cd;

    @Autowired
    private Comments com;

    @RequestMapping("/registJsp")
    public String registJsp(HttpServletRequest request){
        System.out.println("跳转到注册界面");
        return "regist";
    }

    /*注册*/
    @RequestMapping("/regist")
    public String regist(HttpServletRequest request){
        System.out.println("执行regist方法");

        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirm = request.getParameter( "confirm" );
        String address = request.getParameter("address");
        String tel = request.getParameter("tel");
        HttpSession session = request.getSession();
        boolean x = validateRegist(name, username , password , confirm , session);
        if( x ) { // 姓名、用户名不为空，而且两次输入密码(不为空)一致
            // 将从页面上收集到的数据，封装到 一个 User 对象中
            user.setName(name);
            user.setUsername(username);
            user.setPassword(password);
            user.setAddress(address);
            user.setMobilePhone(tel);
            System.out.println("准备执行service方法");

            boolean success = us.save(user);

            if (success) {
                System.out.println("注册成功");
                return "redirect:/index.jsp";
            } else {
                System.out.println("注册失败");
                return "regist";
            }
        }else {
            System.out.println("注册失败");
            return  "regist";
        }
    }

    /*注册时检查用户名*/
    @RequestMapping("/check")
    public void check(HttpServletRequest request,HttpServletResponse response) throws IOException {

        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        System.out.println("检查用户名:"+username);
        User user = userdao.findByName(username);
        if(user != null) {
            System.out.println("用户名存在:"+username);
            out.println("用户名被注册了");
        }
    }

    /*登录*/
    @RequestMapping("/login")
    public  String login(HttpServletRequest request, HttpServletResponse response){
        System.out.println("进入登录控制器");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println("用户名："+username+"登录密码："+password);
        //获取session
        HttpSession session = request.getSession();

        if(CheckLogin(username , password )) {
            User user = us.find(username);
            if(user == null) {
                System.out.println("用户不存在");
            }else{
                String passwordFromDb = user.getPassword();  //从数据库获取密码
                //对表单获取到的密码进行加密
                String passwordEncipher = StringHelper.encrypt(password.trim() , MessageDigestType.MD5 , null);
                if(StringHelper.equals(passwordFromDb, passwordEncipher)) {
                    System.out.println("用户名和密码正确");
                    session.setAttribute("user", user);
                    return "redirect:/index.jsp";
                }else {
                    System.out.println("密码错误");
                }
            }

        }
        return "login";
    }

    /*注销控制器*/
    @RequestMapping("/unlogin")
    public  String unlogin(HttpServletRequest request){
        System.out.println("执行注销控制器");
        request.getSession().invalidate();// 废弃 session
        return "redirect:/index.jsp";
    }

    /*评论控制器*/
    @RequestMapping("/comments")
    public  String comments(HttpServletRequest request){
        System.out.println("执行评论控制器");
        String username = request.getParameter("username");
        String comments= request.getParameter("comments");
        String comcuisine= request.getParameter("comcuisine");
        System.out.println(comcuisine+","+username+",评论内容："+comments);
        com.setComusername(username);
        com.setComments(comments);
        com.setComcuisine(comcuisine);
        com.setComdate(new Date());
        if(cd.save(com)   ){
            System.out.println("保存成功，返回true");
        }

        List list = new ArrayList();
        System.out.println(comcuisine+"..............");
        list = cd.find(comcuisine);

        //System.out.println(comusername + "," + comcuisine + "," + comments + "," + comdate);
        HttpSession session = request.getSession();
        //session.setAttribute("comdate", list);
        System.out.println("list"+list);
        session.setAttribute("commentlist", list);
        return "yue/阿一鲍鱼";
    }

    /*用户信息控制器*/
    @RequestMapping("/message")
    public  String message(HttpServletRequest request){

        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String add  = request.getParameter("add");
        String phone  = request.getParameter("phone");

        user.setName(name);
        user.setUsername(username);
        user.setAddress(add);
        user.setMobilePhone(phone);

        userdao.update(user);


        return null;
    }

    private boolean validateRegist(String name,String username, String password, String confirm, HttpSession session) {

        boolean nameNotEmpty = true ;

        if( StringHelper.empty( name ) ) {
            // 说明姓名是空的
            session.setAttribute( "namePrompt" , "用户名不能为空" );
            nameNotEmpty = false ;
        }
        boolean usernameNotEmpty = true ;
        if( StringHelper.empty( username ) ) {
            // 说明用户名是空的
            session.setAttribute( "usernamePrompt" , "用户名不能为空" );
            usernameNotEmpty = false ;
        }
        boolean passwordNotEmpty = true ;
        if( StringHelper.empty( password ) ) {
            // 说明密码是空的
            session.setAttribute( "passwordPrompt" , "密码不能为空" );
            passwordNotEmpty = false ;
        }
        boolean confirmNotEmpty = true ;
        if( StringHelper.empty( confirm ) ) {
            // 说明确认密码是空的
            session.setAttribute( "confirmPrompt" , "请确认密码" );
            confirmNotEmpty = false ;
        }
        boolean passwordEquals = false ;
        if( passwordNotEmpty && confirmNotEmpty ) {
            if( StringHelper.equals( password , confirm) ) {  // 注意 if 内部的 感叹号
                passwordEquals = true ;
            } else {
                // 到这里，说明两次输入不一致
                session.setAttribute( "passwordPrompt" , "两次输入密码不一致" );
                session.setAttribute( "confirmPrompt" , "请保证两次输入的密码是一致" );
            }
        }
        return nameNotEmpty&&usernameNotEmpty && passwordEquals ;
    }

    //检查登录数据（用户名、密码）是否不为空，不为空则返回true
    private boolean CheckLogin(String username, String password ) {
        boolean unEmpty = true;
        if(StringHelper.empty(username)) {
            unEmpty = false;
        }
        boolean pwEmpty = true;
        if(StringHelper.empty(password)) {
            pwEmpty = false;
        }
        System.out.println(unEmpty && pwEmpty);
        return unEmpty && pwEmpty ;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public UserService getUs() {
        return us;
    }

    public void setUs(UserService us) {
        this.us = us;
    }

    public UserDao getUd() {
        return userdao;
    }

    public void setUd(UserDao userdao) {
        this.userdao = userdao;
    }

    public CommentDao getCd() {
        return cd;
    }

    public void setCd(CommentDao cd) {
        this.cd = cd;
    }

    public Comments getCom() {
        return com;
    }

    public void setCom(Comments com) {
        this.com = com;
    }
}
