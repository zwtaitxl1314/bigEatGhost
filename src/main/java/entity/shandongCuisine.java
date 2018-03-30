package entity;

import java.io.Serializable;

public class shandongCuisine implements Serializable{
    private static final long serialVersionUID = -7195066864085138323L;

    private Integer cuisineId;   //菜肴类别编码
    private Integer id;  //编码
    private String name; //菜名
    private  String summary; //简介
    private  String textTeach; //文字教学
    private  String videoAddress; //教学视频存储地址

    public Integer getCuisineId() {
        return cuisineId;
    }

    public void setCuisineId(Integer cuisineId) {
        this.cuisineId = cuisineId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getTextTeach() {
        return textTeach;
    }

    public void setTextTeach(String textTeach) {
        this.textTeach = textTeach;
    }

    public String getVideoAddress() {
        return videoAddress;
    }

    public void setVideoAddress(String videoAddress) {
        this.videoAddress = videoAddress;
    }
}
