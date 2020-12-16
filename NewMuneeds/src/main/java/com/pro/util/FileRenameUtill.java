package com.pro.util;

import java.io.File;

public class FileRenameUtill {
	
	public static String checkFileName(String path, String fname) {
		
		//static ?•˜?Š” ?´?œ  ?”„ë¡œê·¸?¨?´ ??‚  ?–„ê¹Œì? ë©”ëª¨ë¦? ?ƒ?— ?œ ì§? ?‹œ?‚¤ê¸? ?œ„?•´?„œ 
		
		//?¸??¸ fname?—?„œ ?™•?¥?ë¥? ëº? ?ŒŒ?¼ëª? ê°?? ¤?‚´?, ê·¸ë ‡ê²? ?•˜? ¤ë©? ë¨¼ì? "."?˜ ?œ„ì¹˜ë?? ?•Œ?•„?‚´?•¼ ?•¨!
		int period = fname.lastIndexOf("."); //2
		
		//?ŒŒ?¼ëª…ê³¼ ?™•?¥?ë¥? ë¶„ë¦¬?•œ?‹¤.
		String name = fname.substring(0, period); //ok
		
		String suffix =fname.substring(period); //.jpg
		
		//? „ì²? ê²½ë¡œ
		//String savePath =path+"/"+fname;
		String savePath =path+System.getProperty("file.separator")+fname;
		// System.getProperty("file.separator")?Š” ?œˆ?„?š°?Š” \ ë¦¬ëˆ…?Š¤?Š” /ë¡? ?•Œ?•„?„œ ?“¤?–´ê°?.
		
		//?´? œ ?œ„?˜ ê²½ë¡œë¥? ê°?ì§?ê³? java.io.Fileë¥? ê°ì²´ë¥? ?ƒ?„±?•˜?(?´?œ ?Š” ?ŒŒ?¼?˜ ì¡´ì¬?—¬ë¶?ë¥? ?™•?¸?•˜ê¸? ?œ„?•´?„œ?‹¤.
		File f = new File(savePath);
		//ê°™ì? ?´ë¦„ì´ ?ˆ?„ ê²½ìš° ?ŒŒ?¼ëª? ?’¤?— ?ˆ«?ë¥? ë¶™ì—¬ì¤˜ì•¼ ?•œ?‹¤.(int?˜• ë³??ˆ˜ ?•„?š”)
				int idx = 1;
				while(f.exists()) {
					//ê°™ì? ?´ë¦„ì˜ ?ŒŒ?¼?´ ?ˆ?Š” ê²½ìš°!! ?ŒŒ?¼ëª? ?’¤?— ?ˆ«?ë¥? ë¶™ì—¬ ?ŒŒ?¼ëª…ì„ ë³?ê²½í•¨!
					StringBuffer sb = new StringBuffer();
					sb.append(name);
					sb.append(idx++);
					sb.append(suffix);
					
					fname = sb.toString(); // test1.txt;
					
					savePath = path+System.getProperty("file.separator")+fname;
					
					f = new File(savePath);
				}
				
				return fname;
			}

		}
