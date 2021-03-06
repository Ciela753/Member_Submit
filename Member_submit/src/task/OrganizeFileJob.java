package task;

import java.util.*;
import java.io.File;
import java.text.SimpleDateFormat;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import service.BoardServiceImpl;
import util.CommonConst;
import vo.Attach;

public class OrganizeFileJob implements Job {

	@Override
	public void execute(JobExecutionContext arg0) throws JobExecutionException {
		// TODO Auto-generated method stub
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DATE, -1);
		String dateStr = new SimpleDateFormat("yyMMdd").format(cal.getTime());
	}
	
	public void realJob(String dateStr) {
		File file = new File(CommonConst.UPLOAD_PATH + File.separator + dateStr);
		File[] files = file.listFiles();
		
		List<Attach> dbList = new BoardServiceImpl().readAttachByPath("1");
		
		List<File> fileList = new ArrayList<>(Arrays.asList(files));
		List<File> existFile = new ArrayList<File>();
		
		for(File f : fileList) {
			for(Attach a : dbList) {
				if(f.getAbsolutePath().contains(a.getUuid())) {
					existFile.add(f);
				}
			}
		}
		fileList.removeAll(existFile);
		System.out.println(dateStr + "폴더의 삭제된 파일들");
		System.out.println("=========================");
		int cnt=0;
		for(File f : fileList) {
			System.out.println(f);
			f.delete(); cnt++;
		}
		System.out.println(cnt+"개 삭제되었습니다.");
	}

}
