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

    String sql = "INSERT INTO user(name,userName,passwork,address,mobilePhone) VALUE (? , ? , ? , ? , ?)";
    String query = "SELECT * FROM user WHERE username=?";

    List list = new ArrayList();
    public int save(User u) throws DaoException {
        try {
            int i = jdbcTemplate.update(sql, u.getName(), u.getUserName(), u.getPassword(), u.getAddress(), u.getPhoneNum());
            if (i != 0) {
                System.out.println("返回的数值" + i);
            }
            return i;
        }catch (DataAccessException dae){
            System.out.println("保存失败");
            throw new DaoException( "保存失败" , dae );
        }
    }

    public User findByName(String username){

        System.out.println("执行查找DAO");
        try {
            User  user  = jdbcTemplate.queryForObject("SELECT * FROM user WHERE username=?", new User(), new Object[] { username });
            System.out.println(user.getUserName());
            return user;
        }catch (Exception  E){
            System.out.println("11111111111111111111");
            return null;
        }
    }

    class MyRowMapper implements RowMapper<User> {
        @Override
        public User mapRow(ResultSet rs, int num) throws SQLException {
            //从结果集中得到数据
            int id = rs.getInt("id");
            String username = rs.getString("username");
            String password = rs.getString("password");
            //把得到的数据封装到对象里面
            User user = new User();
            user.setId(id);
            user.setUserName(username);
            user.setPassword(password);
            return user;
        }
    }



    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
}
