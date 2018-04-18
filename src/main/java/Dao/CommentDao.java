package Dao;

import entity.Comments;
import exception.DaoException;
import exception.DataAccessException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import util.DateHelper;

public class CommentDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private Comments comments;

    String sql = "INSERT INTO comments(comusername,comcuisine,comcontent,createdate) VALUE ( ? , ? , ? , ? )";


    /*保存评论*/
    public boolean save(Comments c) throws DaoException {
        java.sql.Date registDate = DateHelper.cast( c.getComdate() );
        System.out.println("执行保存评论DAO");
        try {
            int i = jdbcTemplate.update(sql, c.getComusername() , c.getComcuisine() , c.getComments() , registDate);
            if (i != 0) {
                System.out.println("保存评论成功" + c.getComments());
                return true;
            }
        }catch (Exception  E){
            System.out.println("保存失败");
        }
        return false;
    }


    /*查找评论*/
    public Comments find(String comcuisine) throws DaoException {
        System.out.println("执行查找DAO评论，查找菜品" + comcuisine);
        try {
            Comments comments = jdbcTemplate.queryForObject("SELECT * FROM user WHERE comcuisine=?", new Comments(), new Object[]{comcuisine});
            System.out.println(comments);
            // System.out.println("用户："+user.getUserName()+"，存在,密码："+user.getPassword());
            return comments;
        } catch (Exception E) {
            return null;
        }
    }
}
