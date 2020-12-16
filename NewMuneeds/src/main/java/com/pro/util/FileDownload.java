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
// ?˜…?†°ìº£ì˜ Dynamic Web Project?—?„œ?Š” ?„œë¸”ë¦¿?„ ??™?œ¼ë¡? ?“±ë¡ì‹œì¼œì¤¬ì§?ë§?,
//STS?—?„œ?Š” web.xml?— ì§ì ‘ ?“±ë¡í•´?•¼ ?•œ?‹¤.
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
		
		// ?‹¤?‹œ ?œ„?˜ ? ˆ??ê²½ë¡œë¥? ?ŒŒ?¼ëª…ê³¼ ?—°ê²?
		String fullpath = path+System.getProperty("file.separator")+filename;
		
		// ? „ì²? ê²½ë¡œê°? ì¤?ë¹„ë˜?—ˆ?œ¼?‹ˆ ?ŒŒ?¼?„ ë³´ë‚´ê¸? ?œ„?•´ Fileê°ì²´ë¥? ?ƒ?„±?•œ?‹¤.
		File f = new File(fullpath);
		
		byte[] buf = new byte[2048]; // ë°”êµ¬?‹ˆ ?—­?• 
		
		// ? „?†¡?•  ?°?´?„°ê°? ?Š¤?Š¸ë¦? ì²˜ë¦¬?  ?•Œ ë¬¸ì?…‹?„ ì§?? •?•´?•¼ ?•¨
		response.setContentType("application/octet-stream;charset=8859_1");
		
		// ?‹¤?š´ë¡œë“œ ???™”?ƒ? ì²˜ë¦¬
		response.setHeader("Content-Disposition", "attachment;filename="+new String(filename.getBytes("utf-8"), "8859_1"));
		
		// ? „?†¡???…?´ ?´ì§„ë°?´?„°(binary)
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		if(f.isFile()) {
			BufferedInputStream bis = new BufferedInputStream(new FileInputStream(f));
			
			// ?š”ì²??•œ ê³³ìœ¼ë¡? ë³´ë‚´ê¸? ?œ„?•´(?‘?‹µ?•˜ê¸? ?œ„?•´) ?Š¤?Š¸ë¦¼ì„ ?š”ì²?ê°ì²´ë¡œë??„° ?–»?–´?‚¸?‹¤.
			BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
			
			int size = -1;
			try {
				// ?½?–´?˜¤?ë§ˆì ë³´ë‚´ê¸°ë?? ?ˆ˜?–‰?•œ?‹¤.
				while((size = bis.read(buf)) != -1) {
					bos.write(buf, 0, size); // ë³´ë‚´ê¸?
					bos.flush(); // ?Š¤?Š¸ë¦? ë¹„ìš°ê¸?
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
