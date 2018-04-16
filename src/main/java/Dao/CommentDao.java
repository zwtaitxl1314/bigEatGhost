package Dao;

import entity.Comments;
import exception.DaoException;
import exception.DataAccessException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class CommentDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private Comments comments;

    String sql = "INSERT INTO comments(comId,userId,comContent,createDate) VALUE (? , ? , ? , ?)";

    public int save(Comments c) throws DaoException {

        System.out.println("执行保存评论DAO");
        try {
            int i = jdbcTemplate.update(sql, c.getComments());
            if (i != 0) {
                System.out.println("返回的数值" + i);
            }
            return i;
        }catch (DataAccessException dae){
            System.out.println("保存失败");
            throw new DaoException( "保存失败" , dae );
        }
    }

}
