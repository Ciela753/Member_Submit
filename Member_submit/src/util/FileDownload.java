package util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardService;
import service.BoardServiceImpl;
import vo.Board;

@WebServlet("/download")
public class FileDownload extends HttpServlet{

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
		
		if(mimeType ==null) {
			mimeType = "application/octet-stream";			
		}
		
		System.out.println(mimeType);
		
		//사용자의 브라우저 처리
		String userAgent = req.getHeader("User-Agent");
		System.out.println(userAgent);
		
//		fileName=
		
		BoardService service = new BoardServiceImpl();
		
		
		
		if(userAgent.toLowerCase().contains("trigent")) {
			fileName = URLEncoder.encode(fileName, "utf-8").replaceAll("\\+", "%20");
		} else {
			fileName = new String(fileName.getBytes("utf-8"), "iso-8859-1");
		}
		
		//응답헤더		
		resp.setContentType(mimeType);
		resp.setHeader("Content-DisPosition", "attachment; filename=" + fileName);
		
		//출력 스트림 지정
		ServletOutputStream sos = resp.getOutputStream();
		int b;
		
		while ((b= fis.read()) != -1) {
			sos.write(b);
			
		}
		fis.close();
		sos.close();
		
		
	}
	
}
