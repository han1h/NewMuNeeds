package com.pro.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FileDownload
 */
// ?��?��캣의 Dynamic Web Project?��?��?�� ?��블릿?�� ?��?��?���? ?��록시켜줬�?�?,
//STS?��?��?�� web.xml?�� 직접 ?��록해?�� ?��?��.
public class FileDownload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileDownload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String filename = request.getParameter("f_name");
		String dir = request.getParameter("dir"); //dir=/resources/upload
		
		String path = getServletContext().getRealPath(dir); //dir=/resources/upload
		
		// ?��?�� ?��?�� ?��??경로�? ?��?��명과 ?���?
		String fullpath = path+System.getProperty("file.separator")+filename;
		
		// ?���? 경로�? �?비되?��?��?�� ?��?��?�� 보내�? ?��?�� File객체�? ?��?��?��?��.
		File f = new File(fullpath);
		
		byte[] buf = new byte[2048]; // 바구?�� ?��?��
		
		// ?��?��?�� ?��?��?���? ?��?���? 처리?�� ?�� 문자?��?�� �??��?��?�� ?��
		response.setContentType("application/octet-stream;charset=8859_1");
		
		// ?��?��로드 ???��?��?�� 처리
		response.setHeader("Content-Disposition", "attachment;filename="+new String(filename.getBytes("utf-8"), "8859_1"));
		
		// ?��?��???��?�� ?��진데?��?��(binary)
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		if(f.isFile()) {
			BufferedInputStream bis = new BufferedInputStream(new FileInputStream(f));
			
			// ?���??�� 곳으�? 보내�? ?��?��(?��?��?���? ?��?��) ?��?��림을 ?���?객체로�??�� ?��?��?��?��.
			BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
			
			int size = -1;
			try {
				// ?��?��?��?��마자 보내기�?? ?��?��?��?��.
				while((size = bis.read(buf)) != -1) {
					bos.write(buf, 0, size); // 보내�?
					bos.flush(); // ?��?���? 비우�?
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if(bos != null)
						bos.close();
					if(bis != null)
						bis.close();
				} catch (Exception e2) {}
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
