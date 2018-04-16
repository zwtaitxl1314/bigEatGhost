package controller;

import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.UserService;
import util.MessageDigestType;
import util.StringHelper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping( "/customer/**")
public class Customercontroller {

    @Autowired
    private  User user;
    @Autowired
    private  UserService us;

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
            user.setUserName(username);
            user.setPassword(password);
            user.setAddress(address);
            user.setPhoneNum(tel);
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

    /*登录*/
    @RequestMapping("/login")
    public  String login(HttpServletRequest request){
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        boolean success =false ;
        if(CheckLogin(username , password )) {
            User user = us.find(username);
            if(user == null) {
                success = false ;
                System.out.println("用户不存在");
            }
        }
        return "login";
    }

    /*评论控制器*/
    @RequestMapping("/comments")
    public  String comments(HttpServletRequest request){
        System.out.println("执行评论控制器");
        return "redirect:/index.jsp";
    }

    /*评论控制器*/
    @RequestMapping("/return_index")
    public  String returnindex(HttpServletRequest request){
        System.out.println("验证码错误，返回主页");
        return "index";
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
}
