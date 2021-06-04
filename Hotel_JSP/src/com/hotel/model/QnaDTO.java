package com.hotel.model;
 
public class QnaDTO {
	private int qnaNo;			// 게시물 번호
	private String userId;		// 회원 아이디
	private String qnaTitle;	// 게시물 제목
	private String qnaContent;	// 게시물 내용
	private int qnaGroup;		// 원본 게시물 번호
	private int qnaStep;		// 답변 출력 순서
	private int qnaDate;		// 게시물 작성일(sysdate)
	
	public int getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}
	public String getQnaContent() {
		return qnaContent;
	}
	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}
	public int getQnaGroup() {
		return qnaGroup;
	}
	public void setQnaGroup(int qnaGroup) {
		this.qnaGroup = qnaGroup;
	}
	public int getQnaStep() {
		return qnaStep;
	}
	public void setQnaStep(int qnaStep) {
		this.qnaStep = qnaStep;
	}
	public int getQnaDate() {
		return qnaDate;
	}
	public void setQnaDate(int qnaDate) {
		this.qnaDate = qnaDate;
	}
	public int getQnaHit() {
		return qnaHit;
	}
	public void setQnaHit(int qnaHit) {
		this.qnaHit = qnaHit;
	}
	public String getQnaFile() {
		return qnaFile;
	}
	public void setQnaFile(String qnaFile) {
		this.qnaFile = qnaFile;
	}
	private int qnaHit;			// 게시물 조회수
	private String qnaFile;		// 첨부 파일명
}
