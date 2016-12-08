package com.hb.sts06;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

@Controller
public class HomeController {
    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @RequestMapping(value = "/")
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/upload")
    public String upload() {

        return "upform";
    }

    @RequestMapping(value = "/result", method = RequestMethod.POST)
    public String upResult(@RequestParam("id") String id,
                           @RequestParam("pw") String pw,
                           @RequestParam("file1") MultipartFile file,
                           Model model) {

        String orgFilenm = file.getOriginalFilename();
        logger.info(orgFilenm);

//        올린 파일 저장 위치
        File f = new File("C:\\Temp\\" + orgFilenm);
        try {
            file.transferTo(f);
        } catch (IOException e) {
            e.printStackTrace();
        }

        String msg = "id:" + id + " pw:" + pw;
        model.addAttribute("filename", orgFilenm);
        model.addAttribute("msg", msg);
        return "result";
    }

    @RequestMapping("/download")
    public void download(@RequestParam ("fnm") String fname, HttpServletResponse response) {
//        헤당 파일을 파일 객체와
        File file = new File("C:\\Temp\\" + fname);
//        파일 다운로드를 위한 헤더 세팅
        response.setHeader("Content-Type","aapplication/x-msdownload");
//        다운로드 파일 이름
        response.setHeader("Content-Disposition", "filename=" + fname + ";");
        try {
            ServletOutputStream out = response.getOutputStream();
            FileInputStream in = new FileInputStream(file);
//            첫번째 인자 - 파일, 두번째 인자 - 아웃풋 스트림
//            FileUtils.copyFile(file, out);
//            첫번째 인자 - 파일 인풋 스트림, 두번째 인자 - 아웃풋 스트림
            FileCopyUtils.copy(in, out);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
