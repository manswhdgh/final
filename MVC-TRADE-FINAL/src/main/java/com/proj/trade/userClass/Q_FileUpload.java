package com.proj.trade.userClass;


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.proj.trade.dao.CsQNADao;

@Component
public class Q_FileUpload {
	// 파일 업로드 메소드
	// String
	// fullPath="D:/Work/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/SpringMVC-Board/resources/upload";
	@Autowired
	private CsQNADao cqDao;

	
	
	public boolean fileUp(MultipartHttpServletRequest q_File, int q_Register) {
			System.out.println("fileUp");
			// 1.이클립스의 물리적 저장경로 찾기
			String root = q_File.getSession().getServletContext().getRealPath("/");
			System.out.println("root=" + root);
			String path = root + "resources/QNAUpload/";
			// 2.폴더 생성을 꼭 할것...
			File dir = new File(path);
			if (!dir.isDirectory()) { // upload폴더 없다면
				dir.mkdir(); // upload폴더 생성
			}
			
			Map<String, String> fMap = new HashMap<String, String>();
			fMap.put("q_Register", String.valueOf(q_Register));
			List<MultipartFile> fList = q_File.getFiles("q_File");
			boolean f = false;
			for(int i = 0; i < fList.size(); i++) {
				// 파일 메모리에 저장
				MultipartFile mf = fList.get(i); // 순차적으로 파일정보를 저장
				String oriFileName = mf.getOriginalFilename(); // a.txt
				fMap.put("oriFileName", oriFileName);
				// 4.시스템파일이름 생성 a.txt ==>112323242424.txt
				String sysFileName = System.currentTimeMillis() + "."
						+ oriFileName.substring(oriFileName.lastIndexOf(".") + 1);
				fMap.put("sysFileName", sysFileName);


				try {
					mf.transferTo(new File(path + sysFileName));
					f = cqDao.fileInsert(fMap);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} // while End
			if (f)
				return true;
			return false;
		}

	
	
	
	public boolean Rep_fileUp(MultipartHttpServletRequest repW_Files, int rep_Num) {
		System.out.println("Rep_fileUp");
		// 1.이클립스의 물리적 저장경로 찾기
		String root = repW_Files.getSession().getServletContext().getRealPath("/");
		System.out.println("root=" + root);
		String path = root + "resources/RepUpload/";
		// 2.폴더 생성을 꼭 할것...
		File dir = new File(path);
		if (!dir.isDirectory()) { // upload폴더 없다면
			dir.mkdir(); // upload폴더 생성
		}
		
		Map<String, String> RfMap = new HashMap<String, String>();
		RfMap.put("rep_Num", String.valueOf(rep_Num));
		List<MultipartFile> fList = repW_Files.getFiles("Rep_File");
		boolean R = false;
		for(int i = 0; i < fList.size(); i++) {
			// 파일 메모리에 저장
			MultipartFile mf = fList.get(i); // 순차적으로 파일정보를 저장
			String oriFileName = mf.getOriginalFilename(); // a.txt
			RfMap.put("oriFileName", oriFileName);
			// 4.시스템파일이름 생성 a.txt ==>112323242424.txt
			String sysFileName = System.currentTimeMillis() + "."
					+ oriFileName.substring(oriFileName.lastIndexOf(".") + 1);
			RfMap.put("sysFileName", sysFileName);


			try {
				mf.transferTo(new File(path + sysFileName));
				R = cqDao.RepFileInsert(RfMap);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} // while End
		if (R)
			return true;
		return false;
	}




	public void download(String fullPath, String oriFileName, HttpServletResponse q_Down) throws Exception{
		// 한글파일 깨짐 방지
				String downFile = URLEncoder.encode(oriFileName, "UTF-8");
				/* 파일명 뒤에 이상한 문자가 붙는 경우 아래코드를 해결 */
				// downFile = downFile.replaceAll("\\+", "");
				// 파일 객체 생성
				File file = new File(fullPath);
				// 다운로드 경로 파일을 읽어 들임
				InputStream is = new FileInputStream(file);
				// 반환객체설정
				q_Down.setContentType("application/octet-stream");
				q_Down.setHeader("content-Disposition", "attachment; filename=\"" + downFile + "\"");
				// 반환객체에 스트림 연결
				OutputStream os = q_Down.getOutputStream();

				// 파일쓰기
				byte[]buffer = new byte[1024];
				int length;
				while ((length = is.read(buffer)) != -1) {
					os.write(buffer, 0, length);
				}
				os.flush();
				os.close();
				is.close();
			}		
	
}






























/*
 * // 파일 다운로드 public void download(String fullPath, String oriFileName,
 * HttpServletResponse resp) throws Exception {
 * 
 * // 한글파일 깨짐 방지 String downFile = URLEncoder.encode(oriFileName, "UTF-8"); 파일명
 * 뒤에 이상한 문자가 붙는 경우 아래코드를 해결 // downFile = downFile.replaceAll("\\+", ""); // 파일
 * 객체 생성 File file = new File(fullPath); // 다운로드 경로 파일을 읽어 들임 InputStream is =
 * new FileInputStream(file); // 반환객체설정
 * resp.setContentType("application/octet-stream");
 * resp.setHeader("content-Disposition", "attachment; filename=\"" + downFile +
 * "\""); // 반환객체에 스트림 연결 OutputStream os = resp.getOutputStream();
 * 
 * // 파일쓰기 byte[] buffer = new byte[1024]; int length; while ((length =
 * is.read(buffer)) != -1) { os.write(buffer, 0, length); } os.flush();
 * os.close(); is.close(); }
 * 
 * }
 * 
 * }
 */
