package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;

@Controller
@RequestMapping( "/customer/**")
public class UploadController {

    @RequestMapping( "/upload")
    public  String up(@RequestParam("upfile")MultipartFile mf , HttpSession session){
        String fileName = mf.getOriginalFilename();
        System.out.println("上传文件的名字为:"+fileName+"OKOKOK");

        session.setAttribute("fileName",fileName);
        try {
            File targetFile = new File("E:/新建文件夹 (2)/"+fileName);
            mf.transferTo(targetFile);

            return "/WEB-INF/success.jsp";
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "fail";
    }
}
