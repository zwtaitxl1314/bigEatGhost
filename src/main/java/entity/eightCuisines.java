package entity;

import java.io.Serializable;

public class eightCuisines implements Serializable{
    private static final long serialVersionUID = 6167383559110880520L;

    private  Integer id; //类别编码
    private  String cuisinesName; //类别名

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCuisinesName() {
        return cuisinesName;
    }

    public void setCuisinesName(String cuisinesName) {
        this.cuisinesName = cuisinesName;
    }
}
