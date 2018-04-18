package entity;

import org.springframework.jdbc.core.RowMapper;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class Comments implements RowMapper<Comments>,Serializable {

    private static final long serialVersionUID = -7743505069592739030L;

    private Integer comid; //评论编码
    private  String comusername; //评论用户名
    private  String comcuisine;//被评论的菜品名
    private  String comments; //评论内容
    private Date comdate;  //评论时间

    public Integer getComid() {
        return comid;
    }

    public void setComid(Integer comid) {
        this.comid = comid;
    }

    public String getComusername() {
        return comusername;
    }

    public void setComusername(String comusername) {
        this.comusername = comusername;
    }

    public String getComcuisine() {
        return comcuisine;
    }

    public void setComcuisine(String comcuisine) {
        this.comcuisine = comcuisine;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public Date getComdate() {
        return comdate;
    }

    public void setComdate(Date comdate) {
        this.comdate = comdate;
    }

    @Override
    public Comments mapRow(ResultSet rs, int rowNum) throws SQLException {
        Comments com = new Comments();
        com.setComusername(rs.getString("comusername"));
        com.setComcuisine(rs.getString("comcuisine"));
        com.setComments(rs.getString("comcontent"));
        com.setComdate(rs.getDate("createdate"));
        return com;
    }
}
