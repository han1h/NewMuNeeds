package com.pro.util;

import java.io.File;

public class FileRenameUtill {
	
	public static String checkFileName(String path, String fname) {
		
		//static ?��?�� ?��?�� ?��로그?��?�� ?��?�� ?��까�? 메모�? ?��?�� ?���? ?��?���? ?��?��?�� 
		
		//?��?��?�� fname?��?�� ?��?��?���? �? ?��?���? �??��?��?��, 그렇�? ?��?���? 먼�? "."?�� ?��치�?? ?��?��?��?�� ?��!
		int period = fname.lastIndexOf("."); //2
		
		//?��?��명과 ?��?��?���? 분리?��?��.
		String name = fname.substring(0, period); //ok
		
		String suffix =fname.substring(period); //.jpg
		
		//?���? 경로
		//String savePath =path+"/"+fname;
		String savePath =path+System.getProperty("file.separator")+fname;
		// System.getProperty("file.separator")?�� ?��?��?��?�� \ 리눅?��?�� /�? ?��?��?�� ?��?���?.
		
		//?��?�� ?��?�� 경로�? �?�?�? java.io.File�? 객체�? ?��?��?��?��(?��?��?�� ?��?��?�� 존재?���?�? ?��?��?���? ?��?��?��?��.
		File f = new File(savePath);
		//같�? ?��름이 ?��?�� 경우 ?��?���? ?��?�� ?��?���? 붙여줘야 ?��?��.(int?�� �??�� ?��?��)
				int idx = 1;
				while(f.exists()) {
					//같�? ?��름의 ?��?��?�� ?��?�� 경우!! ?��?���? ?��?�� ?��?���? 붙여 ?��?��명을 �?경함!
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
