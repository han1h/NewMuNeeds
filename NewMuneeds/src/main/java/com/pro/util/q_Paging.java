package com.pro.util;

public class q_Paging {
	
	private int nowPage, totalPage, begin, end , blocklist//?�� ?��?���??�� ?��?��?�� 게시물수 
	, blockpage//?��블럭?��  보여�? ?��?���? ?�� 
	, rowtotal //총게?���? ?��
	,startPage,endPage; // 블럭?�� ?��?���? ?��
	
	private boolean isPrePage; //?��?�� ?��?���?�? 
	private boolean isNextPage;//?��?�� ?��?���? 기능 
	
	//JSP?��?�� ?��?��?�� ?��?���? HTML 코드�? ???��?�� �?! 
	
	private StringBuffer sb ;
	
	//?��?��?�� ?��?��
	public q_Paging(int nowPage, int blocklist, int blockpage, int rowtotal) {
		super();
		this.nowPage = nowPage;
		this.blocklist = blocklist;
		this.blockpage = blockpage;
		this.rowtotal = rowtotal;
		
		MakeHTML();
	} 
	
	public void MakeHTML() {
		//?��?�� 기능�? ?��?�� 기능?�� 초기?�� ?��?��?��. 
		isPrePage = false;
		isNextPage = false;
		
		//?��?��?�� ?���? 게시물의 ?���? ?��?��
		//?���? ?��?���? ?���? 구한?��. 
		totalPage =(int)Math.ceil((double)rowtotal/blocklist);
		
		//?��?�� ?��?���??�� 값이 ?���? ?��?���??�� 값보?��
		//?��?���? ?���? ?��?���? 값을 ?��?�� ?��?���? 값으�? �??�� 
		if(nowPage > totalPage)
			nowPage = totalPage;
		//?��?�� 블럭?�� ?��?��?��?���? 값과 마�?�? ?��?���? 값을 구한?��.
		startPage = (int)((nowPage-1)/blockpage)*blockpage+1;
		endPage = startPage+blockpage-1;
		
		//마�?�? ?��?���? 값이 ?���? ?��?���? 값보?�� ?��?�� 
		if(endPage> totalPage)
			endPage = totalPage;
		
		//?��?�� ?��?���? 값에 ?��?��?�� ?��?�� 게시물의 ?��번호(begin)??
		//마�?�? 겟ㅣ물의 ?��번호(end)�? �??��?��?��.
		begin =(int)(nowPage-1)/blocklist+1;
		end = begin+blocklist-1;
		
		
		//?��?�� 기능 �??��?���? ?��?�� 
		if(startPage > 1)
			isPrePage = true;
		//?��?? 기능 �??��?���? ?��?��
		if(endPage < totalPage)
			isNextPage = true;
		
		//?��?�� ?��?��?��?���? 값도 ?���?, ?��?��?��?���???
		//미자�? ?��?���? 값을 ?��?��?��?�� ?��?���? 기법?�� ?��?��?�� 코드�?
		//?��?��?��?�� StringBuffer?�� ???��?��?��!
		sb = new StringBuffer("<ol class='paging'>");
		
		//?��?�� 버튼 ?��?��?�� ?��?��?��?��?�� 링크 
		if(isPrePage) {
			sb.append("<li><a href='list.inc?nowPage=");
			sb.append(nowPage-blockpage);
			sb.append("'> &lt; </a></li>");
		}else {
			//비활?��?��
			sb.append("<li class='disable'> &lt; </li>");
		}
		
		//?��?���? 번호 출력?��?�� 반복�? 
		for(int i=startPage; i<=endPage; i++) { // 블락 ?��?���? 마�?�? �?분까�? ?��?�� ?��?�� 반복�?
			//i ?�� �? ?��?�� ?��?���? 값과  같을?�� 비활?��?�� 
			if(i == nowPage) {
				sb.append("<li class='now'>");
				sb.append(i);
				sb.append("</li>");
			}else {
				sb.append("<li><a href='qanotice.inc?nowPage=");
				sb.append(i);
				sb.append("'>");
				sb.append(i);
				sb.append("</a></li>");
			}
		}//for 
		
		
		//?��?���? ?��?�� ?���? �??�� 기능 ?���? ?��?�� 
		if(isNextPage) {
			//?��?��?��
			
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
