package com.pro.util;

public class Paging {
	
	private int nowPage, totalPage, begin, end , blocklist//? ??΄μ§??Ή ???  κ²μλ¬Όμ 
	, blockpage//?λΈλ­?Ή  λ³΄μ¬μ§? ??΄μ§? ? 
	, rowtotal //μ΄κ²?λ¬? ?
	,startPage,endPage; // λΈλ­? ??κ³? ?
	
	private boolean isPrePage; //?΄?  ??΄μ§?λ‘? 
	private boolean isNextPage;//?€? ??΄μ§? κΈ°λ₯ 
	
	//JSP?? ???  ??΄μ§? HTML μ½λλ₯? ???₯?  κ³?! 
	
	private StringBuffer sb ;
	
	//??±? ??±
	public Paging(int nowPage, int blocklist, int blockpage, int rowtotal) {
		super();
		this.nowPage = nowPage;
		this.blocklist = blocklist;
		this.blockpage = blockpage;
		this.rowtotal = rowtotal;
		
		MakeHTML();
	} 
	
	public void MakeHTML() {
		//?΄?  κΈ°λ₯κ³? ?€? κΈ°λ₯? μ΄κΈ°? ??¨?€. 
		isPrePage = false;
		isNextPage = false;
		
		//?? ₯? ? μ²? κ²μλ¬Όμ ?λ₯? ?΅?΄
		//? μ²? ??΄μ§? ?λ₯? κ΅¬ν?€. 
		totalPage =(int)Math.ceil((double)rowtotal/blocklist);
		
		//??¬ ??΄μ§?? κ°μ΄ ? μ²? ??΄μ§?? κ°λ³΄?€
		//?¬?€λ©? ? μ²? ??΄μ§? κ°μ ??¬ ??΄μ§? κ°μΌλ‘? μ§??  
		if(nowPage > totalPage)
			nowPage = totalPage;
		//??¬ λΈλ­? ????΄μ§? κ°κ³Ό λ§μ?λ§? ??΄μ§? κ°μ κ΅¬ν?€.
		startPage = (int)((nowPage-1)/blockpage)*blockpage+1;
		endPage = startPage+blockpage-1;
		
		//λ§μ?λ§? ??΄μ§? κ°μ΄ ? μ²? ??΄μ§? κ°λ³΄?€ ?΄? 
		if(endPage> totalPage)
			endPage = totalPage;
		
		//??¬ ??΄μ§? κ°μ ??΄? ?? κ²μλ¬Όμ ?λ²νΈ(begin)??
		//λ§μ?λ§? κ²γ£λ¬Όμ ?λ²νΈ(end)λ₯? μ§?? ??€.
		begin =(int)(nowPage-1)/blocklist+1;
		end = begin+blocklist-1;
		
		
		//?΄?  κΈ°λ₯ κ°??₯?¬λΆ? ??Έ 
		if(startPage > 1)
			isPrePage = true;
		//?€?? κΈ°λ₯ κ°??₯?¬λΆ? ??Έ
		if(endPage < totalPage)
			isNextPage = true;
		
		//?΄?  ??¬??΄μ§? κ°λ ?κ³?, ????΄μ§???
		//λ―Έμλ―? ??΄μ§? κ°μ ???Ό? ??΄μ§? κΈ°λ²? ?¬?©?  μ½λλ₯?
		//??±??¬ StringBuffer? ???₯??!
		sb = new StringBuffer("<ol class='paging'>");
		
		//?΄?  λ²νΌ ??±? ??΄??? λ§ν¬ 
		if(isPrePage) {
			sb.append("<li><a href='list.inc?nowPage=");
			sb.append(nowPage-blockpage);
			sb.append("'> &lt; </a></li>");
		}else {
			//λΉν?±?
			sb.append("<li class='disable'> &lt; </li>");
		}
		
		//??΄μ§? λ²νΈ μΆλ ₯?? λ°λ³΅λ¬? 
		for(int i=startPage; i<=endPage; i++) { // λΈλ½ ??΄μ§? λ§μ?λ§? λΆ?λΆκΉμ§? ?? ?? λ°λ³΅λΆ?
			//i ? κ°? ??¬ ??΄μ§? κ°κ³Ό  κ°μ? λΉν?±? 
			if(i == nowPage) {
				sb.append("<li class='now'>");
				sb.append(i);
				sb.append("</li>");
			}else {
				sb.append("<li><a href='notice.inc?nowPage=");
				sb.append(i);
				sb.append("'>");
				sb.append(i);
				sb.append("</a></li>");
			}
		}//for 
		
		
		//??΄μ§? ?€? ?Όλ‘? κ°??₯ κΈ°λ₯ ?¬λΆ? ??Έ 
		if(isNextPage) {
			//??±?
			
			sb.append("<li><a href='list.inc?nowPage=");
			sb.append(nowPage+blockpage);
			sb.append("'> &gt' </a></li>");
		}else {
			sb.append("<li class='disable'> &gt;</li>");
		}
		
			sb.append("</ol>");
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getBegin() {
		return begin;
	}

	public void setBegin(int begin) {
		this.begin = begin;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getBlocklist() {
		return blocklist;
	}

	public void setBlocklist(int blocklist) {
		this.blocklist = blocklist;
	}

	public int getBlockpage() {
		return blockpage;
	}

	public void setBlockpage(int blockpage) {
		this.blockpage = blockpage;
	}

	public int getRowtotal() {
		return rowtotal;
	}

	public void setRowtotal(int rowtotal) {
		this.rowtotal = rowtotal;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrePage() {
		return isPrePage;
	}

	public void setPrePage(boolean isPrePage) {
		this.isPrePage = isPrePage;
	}

	public boolean isNextPage() {
		return isNextPage;
	}

	public void setNextPage(boolean isNextPage) {
		this.isNextPage = isNextPage;
	}

	public StringBuffer getSb() {
		return sb;
	}

	public void setSb(StringBuffer sb) {
		this.sb = sb;
	}
	
	
	
	
}
