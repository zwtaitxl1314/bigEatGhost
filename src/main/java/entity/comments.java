package entity;

import java.io.Serializable;
import java.util.Date;

public class comments implements Serializable {

    private static final long serialVersionUID = -7743505069592739030L;

    private Integer comId; //评论编码
    private  Integer userId; //用户编码
    private  String comments; //评论内容
    private Date comDate;  //评论时间

    public Integer getComId() {
        return comId;
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public Date getComDate() {
        return comDate;
    }

    public void setComDate(Date comDate) {
        this.comDate = comDate;
    }
}
