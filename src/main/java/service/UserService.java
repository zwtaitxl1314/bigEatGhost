package service;

import Dao.UserDao;
import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import util.MessageDigestType;
import util.StringHelper;


public class UserService {
    private UserDao userdao;

    public boolean save( User u){
        System.out.println("准备到dao");

        String password = u.getPassword() ; // 获取明文密码
        String encryptPassword = StringHelper.encrypt( password , MessageDigestType.MD5, null ); // 使用 MD5 加密算法对密码加密
        u.setPassword( encryptPassword ); // 将加密后的密码设置到 c 对象中

        int i =  userdao.save( u ); // 将 c 对象传递给 save 方法，完成保存操作
        if(i == 1){
        return  true;
        }else
            return false;
    }

    public User find( String username ){
        System.out.println("准备执行DAO  findByName  方法");
        return userdao.findByName( username);
    }

    public UserDao getUserdao() {
        return userdao;
    }

    public void setUserdao(UserDao userdao) {
        this.userdao = userdao;
    }
}
