package Dao;

import entity.User;
import exception.DaoException;
import exception.DataAccessException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


@Repository
public class UserDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    String sql = "INSERT INTO user(name,userName,passwork,address,mobilePhone) VALUE (? , ? , ? , ? , ?)";

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

    public void find(User u){
        System.out.println("执行查找DAO");
        String query = "SELECT id FROM user";
        Integer id  = jdbcTemplate.queryForObject(query,Integer.class);
        System.out.println("返回的数值"+id);
    }

    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
}
