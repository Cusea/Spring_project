package com.bc.web_project.vo;

public class PagingVo {
	private int page; // parameter로 받아와야하는 값(set)
	private int total_row; //db에서 받아와야하는 값(set)
	private int row=10; //10 //설정
	private int start; //41  //계산
	private int end; //60	//계산
	private int total_page; //전체 페이지 수
	private int view_page=10; //화면에 보일 page 수
	private int begin_page; //화면에 보이는 page의 시작점
	private int end_page; //화면에 보이는 page의 끝점
	private int next_page;
	private int prev_page;
	private boolean isNext=true;
	private boolean isPrev=true;
	private String url="";

	public void setPage(int page,int total_row) {
		this.page = page;
		this.total_row=total_row;
		this.total_page=total_row/row+((total_row%row>0)?1:0);
		this.start=row*(page-1)+1;
		this.end=row*page;
		this.begin_page = this.page - (view_page/2);
		this.end_page=this.page + ((view_page-1)/2);
		if(begin_page<1) {//오류!
			begin_page=1;
			end_page=view_page;
		}
		if(end_page>total_page) {//오류 [60] 61(total_page) 64(end_page)
			end_page=total_page;
			begin_page=end_page-view_page+1;
			if(begin_page<1) begin_page=1; 
		}
		this.next_page=page+1;
		if(next_page>total_page)isNext=false;
		this.prev_page=page-1;
		if(prev_page<1)isPrev=false;
	}
	
	public int getTotal_row() {
		return total_row;
	}

	public void setTotal_row(int total_row) {
		this.total_row = total_row;
	}

	public int getTotal_page() {
		return total_page;
	}

	public int getPage() {
		return page;
	}
	public int getRow() {
		return row;
	}
	public void setRow(int row) {
		this.row = row;
	}
	public int getStart() {
		return start;
	}
	public int getEnd() {
		return end;
	}
	public int getView_page() {
		return view_page;
	}
	public void setView_page(int view_page) {
		this.view_page = view_page;
	}
	public int getBegin_page() {
		return begin_page;
	}
	public int getEnd_page() {
		return end_page;
	}
	public int getNext_page() {
		return next_page;
	}
	public int getPrev_page() {
		return prev_page;
	}
	public boolean isNext() {
		return isNext;
	}
	public boolean isPrev() {
		return isPrev;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	@Override
	public String toString() {
		return "{ \"page\":" + page + ", \"total_row\":" + total_row + ", \"row\":" + row + ", \"start\":"
				+ start + ", \"end\":" + end + ", \"total_page\":" + total_page + ", \"view_page\":"
				+ view_page + ", \"begin_page\":" + begin_page + ", \"end_page\":" + end_page
				+ ", \"next_page\":" + next_page + ", \"prev_page\":" + prev_page + ", \"isNext\":" + isNext
				+ ", \"isPrev\":" + isPrev + " }";
	}
}
