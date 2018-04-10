package entity;

import java.io.Serializable;

public class User implements Serializable {

    private static final long serialVersionUID = 2277682025995113357L;

    private Integer id ; //用户编码
    private  String name; //姓名
    //private  String sex; //性别
   // private  Integer age; //年龄
    private String phoneNum; //手机号码
    private String userName; //用户名，注册账号
    private  String password; //密码
    private  String address; //家庭住址
   // private  String userID; //身份证号
    //private  boolean menber; //会员标识


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
