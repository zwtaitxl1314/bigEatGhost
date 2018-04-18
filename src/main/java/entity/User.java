package entity;

import org.springframework.jdbc.core.RowMapper;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;

public class User implements RowMapper<User>,Serializable {

    private static final long serialVersionUID = 2277682025995113357L;

    private Integer userid ; //用户编码
    private  String name; //姓名
    //private  String sex; //性别
   // private  Integer age; //年龄
    private String mobilePhone; //手机号码
    private String username; //用户名，注册账号
    private  String password; //密码
    private  String address; //家庭住址
   // private  String userID; //身份证号
    //private  boolean menber; //会员标识


    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMobilePhone() {
        return mobilePhone;
    }

    public void setMobilePhone(String mobilePhone) {
        this.mobilePhone = mobilePhone;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    @Override
    public User mapRow(ResultSet rs, int rowNum) throws SQLException {
        User user = new User();
        user.setName(rs.getString("name"));
        user.setUsername(rs.getString("username"));
        user.setPassword(rs.getString("password"));
        user.setAddress(rs.getString("address"));
        user.setMobilePhone(rs.getString("mobilePhone"));
        return user;
    }
}
