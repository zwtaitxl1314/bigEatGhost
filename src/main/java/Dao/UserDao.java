package Dao;

import entity.User;
import exception.DaoException;
import exception.DataAccessException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


@Repository
public class UserDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private  User user;

    String sql = "INSERT INTO user(name,username,password,address,mobilePhone) VALUE (? , ? , ? , ? , ?)";
    String query = "SELECT * FROM user WHERE username=?";

    /*保存用户资料*/
    public int save(User u) throws DaoException {
        try {
            int i = jdbcTemplate.update(sql, u.getName(), u.getUsername(), u.getPassword(), u.getAddress(), u.getMobilePhone());
            if (i != 0) {
                System.out.println("返回的数值" + i);
            }
            return i;
        }catch (DataAccessException dae){
            System.out.println("保存失败");
            throw new DaoException( "保存失败" , dae );
        }
    }

    /*用户登录*/
    public User findByName(String username){

        System.out.println("执行查找DAO，查找用户"+username);
        try {
            User  user  = jdbcTemplate.queryForObject("SELECT * FROM user WHERE username=?", new User(), new Object[] { username });
            System.out.println(user);
            return user;
        }catch (Exception  E){
            return null;
        }
    }


    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
}
