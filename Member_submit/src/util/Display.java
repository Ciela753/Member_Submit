package util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/display")
public class Display extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String fileName = req.getParameter("filename");
//		String saveDirectory = "C:\\Users\\chyn1\\OneDrive\\Desktop\\workspace\\upload";
		String saveDirectory = CommonConst.UPLOAD_PATH;
		
		String filePath = saveDirectory + File.separator + fileName;
		
		System.out.println(filePath);
		
		FileInputStream fis = new FileInputStream(filePath);
		
		String mimeType = getServletContext().getMimeType(filePath);
		
		if(mimeType== null) {
			mimeType = "application/octet-stream";
		}
		
		resp.setContentType(mimeType);
		// 출력 스트림 지정
		ServletOutputStream sos = resp.getOutputStream();
		int b;
		
		while((b = fis.read()) != -1) {
			sos.write(b);
		}
		
		fis.close();
		sos.close();
	}
	
	

}
