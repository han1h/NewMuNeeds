package com.pro.util;

public class Paging {
	
	private int nowPage, totalPage, begin, end , blocklist//?•œ ?˜?´ì§??‹¹ ?‘œ?˜„?•  ê²Œì‹œë¬¼ìˆ˜ 
	, blockpage//?•œë¸”ëŸ­?‹¹  ë³´ì—¬ì§? ?˜?´ì§? ?ˆ˜ 
	, rowtotal //ì´ê²Œ?‹œë¬? ?ˆ˜
	,startPage,endPage; // ë¸”ëŸ­?˜ ?‹œ?‘ê³? ?
	
	private boolean isPrePage; //?´? „ ?˜?´ì§?ë¡? 
	private boolean isNextPage;//?‹¤?Œ ?˜?´ì§? ê¸°ëŠ¥ 
	
	//JSP?—?„œ ?‘œ?˜„?•  ?˜?´ì§? HTML ì½”ë“œë¥? ???¥?•  ê³?! 
	
	private StringBuffer sb ;
	
	//?ƒ?„±? ?ƒ?„±
	public Paging(int nowPage, int blocklist, int blockpage, int rowtotal) {
		super();
		this.nowPage = nowPage;
		this.blocklist = blocklist;
		this.blockpage = blockpage;
		this.rowtotal = rowtotal;
		
		MakeHTML();
	} 
	
	public void MakeHTML() {
		//?´? „ ê¸°ëŠ¥ê³? ?‹¤?Œ ê¸°ëŠ¥?„ ì´ˆê¸°?™” ?‹œ?‚¨?‹¤. 
		isPrePage = false;
		isNextPage = false;
		
		//?…? ¥?œ ? „ì²? ê²Œì‹œë¬¼ì˜ ?ˆ˜ë¥? ?†µ?•´
		//? „ì²? ?˜?´ì§? ?ˆ˜ë¥? êµ¬í•œ?‹¤. 
		totalPage =(int)Math.ceil((double)rowtotal/blocklist);
		
		//?˜„?¬ ?˜?´ì§??˜ ê°’ì´ ? „ì²? ?˜?´ì§??˜ ê°’ë³´?‹¤
		//?¬?‹¤ë©? ? „ì²? ?˜?´ì§? ê°’ì„ ?˜„?¬ ?˜?´ì§? ê°’ìœ¼ë¡? ì§?? • 
		if(nowPage > totalPage)
			nowPage = totalPage;
		//?˜„?¬ ë¸”ëŸ­?˜ ?‹œ?‘?˜?´ì§? ê°’ê³¼ ë§ˆì?ë§? ?˜?´ì§? ê°’ì„ êµ¬í•œ?‹¤.
		startPage = (int)((nowPage-1)/blockpage)*blockpage+1;
		endPage = startPage+blockpage-1;
		
		//ë§ˆì?ë§? ?˜?´ì§? ê°’ì´ ? „ì²? ?˜?´ì§? ê°’ë³´?‹¤ ?´?–„ 
		if(endPage> totalPage)
			endPage = totalPage;
		
		//?˜„?¬ ?˜?´ì§? ê°’ì— ?˜?•´?„œ ?‹œ?‘ ê²Œì‹œë¬¼ì˜ ?–‰ë²ˆí˜¸(begin)??
		//ë§ˆì?ë§? ê²Ÿã…£ë¬¼ì˜ ?–‰ë²ˆí˜¸(end)ë¥? ì§?? •?•œ?‹¤.
		begin =(int)(nowPage-1)/blocklist+1;
		end = begin+blocklist-1;
		
		
		//?´? „ ê¸°ëŠ¥ ê°??Š¥?—¬ë¶? ?™•?¸ 
		if(startPage > 1)
			isPrePage = true;
		//?‹¤?? ê¸°ëŠ¥ ê°??Š¥?—¬ë¶? ?™•?¸
		if(endPage < totalPage)
			isNextPage = true;
		
		//?´? œ ?˜„?¬?˜?´ì§? ê°’ë„ ?•Œê³?, ?‹œ?‘?˜?´ì§???
		//ë¯¸ìë¯? ?˜?´ì§? ê°’ì„ ?•Œ?•˜?œ¼?‹ˆ ?˜?´ì§? ê¸°ë²•?— ?‚¬?š©?•  ì½”ë“œë¥?
		//?‘?„±?•˜?—¬ StringBuffer?— ???¥?•˜?!
		sb = new StringBuffer("<ol class='paging'>");
		
		//?´? „ ë²„íŠ¼ ?™œ?„±?™” ?˜?–´?ˆ?„?•Œ ë§í¬ 
		if(isPrePage) {
			sb.append("<li><a href='list.inc?nowPage=");
			sb.append(nowPage-blockpage);
			sb.append("'> &lt; </a></li>");
		}else {
			//ë¹„í™œ?„±?™”
			sb.append("<li class='disable'> &lt; </li>");
		}
		
		//?˜?´ì§? ë²ˆí˜¸ ì¶œë ¥?•˜?Š” ë°˜ë³µë¬? 
		for(int i=startPage; i<=endPage; i++) { // ë¸”ë½ ?˜?´ì§? ë§ˆì?ë§? ë¶?ë¶„ê¹Œì§? ?‘œ?˜„ ?•˜?Š” ë°˜ë³µë¶?
			//i ?˜ ê°? ?˜„?¬ ?˜?´ì§? ê°’ê³¼  ê°™ì„?•Œ ë¹„í™œ?„±?™” 
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
		
		
		//?˜?´ì§? ?‹¤?Œ ?œ¼ë¡? ê°??Š¥ ê¸°ëŠ¥ ?—¬ë¶? ?™•?¸ 
		if(isNextPage) {
			//?™œ?„±?™”
			
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
