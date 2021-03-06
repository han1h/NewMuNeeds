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
// ??°μΊ£μ Dynamic Web Project??? ?λΈλ¦Ώ? ???Όλ‘? ?±λ‘μμΌμ€¬μ§?λ§?,
//STS??? web.xml? μ§μ  ?±λ‘ν΄?Ό ??€.
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
		
		// ?€? ?? ? ??κ²½λ‘λ₯? ??Όλͺκ³Ό ?°κ²?
		String fullpath = path+System.getProperty("file.separator")+filename;
		
		// ? μ²? κ²½λ‘κ°? μ€?λΉλ??Ό? ??Ό? λ³΄λ΄κΈ? ??΄ Fileκ°μ²΄λ₯? ??±??€.
		File f = new File(fullpath);
		
		byte[] buf = new byte[2048]; // λ°κ΅¬? ?­? 
		
		// ? ?‘?  ?°?΄?°κ°? ?€?Έλ¦? μ²λ¦¬?  ? λ¬Έμ?? μ§?? ?΄?Ό ?¨
		response.setContentType("application/octet-stream;charset=8859_1");
		
		// ?€?΄λ‘λ ????? μ²λ¦¬
		response.setHeader("Content-Disposition", "attachment;filename="+new String(filename.getBytes("utf-8"), "8859_1"));
		
		// ? ?‘????΄ ?΄μ§λ°?΄?°(binary)
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		if(f.isFile()) {
			BufferedInputStream bis = new BufferedInputStream(new FileInputStream(f));
			
			// ?μ²?? κ³³μΌλ‘? λ³΄λ΄κΈ? ??΄(??΅?κΈ? ??΄) ?€?Έλ¦Όμ ?μ²?κ°μ²΄λ‘λ??° ?»?΄?Έ?€.
			BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
			
			int size = -1;
			try {
				// ?½?΄?€?λ§μ λ³΄λ΄κΈ°λ?? ????€.
				while((size = bis.read(buf)) != -1) {
					bos.write(buf, 0, size); // λ³΄λ΄κΈ?
					bos.flush(); // ?€?Έλ¦? λΉμ°κΈ?
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
