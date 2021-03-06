package com.pro.util;

import java.io.File;

public class FileRenameUtill {
	
	public static String checkFileName(String path, String fname) {
		
		//static ?? ?΄?  ?λ‘κ·Έ?¨?΄ ??  ?κΉμ? λ©λͺ¨λ¦? ?? ? μ§? ??€κΈ? ??΄? 
		
		//?Έ??Έ fname?? ??₯?λ₯? λΊ? ??Όλͺ? κ°?? €?΄?, κ·Έλ κ²? ?? €λ©? λ¨Όμ? "."? ?μΉλ?? ???΄?Ό ?¨!
		int period = fname.lastIndexOf("."); //2
		
		//??Όλͺκ³Ό ??₯?λ₯? λΆλ¦¬??€.
		String name = fname.substring(0, period); //ok
		
		String suffix =fname.substring(period); //.jpg
		
		//? μ²? κ²½λ‘
		//String savePath =path+"/"+fname;
		String savePath =path+System.getProperty("file.separator")+fname;
		// System.getProperty("file.separator")? ???°? \ λ¦¬λ?€? /λ‘? ??? ?€?΄κ°?.
		
		//?΄?  ?? κ²½λ‘λ₯? κ°?μ§?κ³? java.io.Fileλ₯? κ°μ²΄λ₯? ??±??(?΄? ? ??Ό? μ‘΄μ¬?¬λΆ?λ₯? ??Έ?κΈ? ??΄??€.
		File f = new File(savePath);
		//κ°μ? ?΄λ¦μ΄ ?? κ²½μ° ??Όλͺ? ?€? ?«?λ₯? λΆμ¬μ€μΌ ??€.(int? λ³?? ??)
				int idx = 1;
				while(f.exists()) {
					//κ°μ? ?΄λ¦μ ??Ό?΄ ?? κ²½μ°!! ??Όλͺ? ?€? ?«?λ₯? λΆμ¬ ??Όλͺμ λ³?κ²½ν¨!
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
