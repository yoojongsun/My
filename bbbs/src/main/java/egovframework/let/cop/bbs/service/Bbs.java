package egovframework.let.cop.bbs.service;

import java.io.Serializable;
import java.sql.Date;

import org.apache.commons.lang3.builder.ToStringBuilder;

/**
 * 게시물에 대한 데이터 처리 모델 클래스
 * @author 공통 서비스 개발팀 이삼섭
 * @since 2009.03.06
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *
 *   수정일      수정자          수정내용
 *  -------    --------    ---------------------------
 *  2009.03.06  이삼섭          최초 생성
 *  2011.08.31  JJY            경량환경 템플릿 커스터마이징버전 생성
 *
 *  </pre>
 */
public class Bbs implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 *  게시물 인덱스 번호
	 */
	private int Bbs_Idx=0;

	private String atchFileId = "";
	
	public String getAtchFileId() {
		return atchFileId;
	}







	public void setAtchFileId(String atchFileId) {
		this.atchFileId = atchFileId;
	}







	/**
	 * 게시물 첨부파일 아이디
	 */
	private String Bbs_Name="";
	/**
	 * 게시판 아이디
	 */
	private String Bbs_Title="";
	/**
	 * 최초등록자 아이디
	 */
	private String Bbs_Content="";
	/**
	 * 최초등록시점
	 */
	private Date Bbs_Date;
	/**
	 * 최종수정자 아이디
	 */
	private int Bbs_Hit=0;
	/**
	 * 최종수정시점
	 */
	private String searchCnd="";
	private String searchWrd="";
	
	 /** 현재페이지 */
    private int pageIndex = 1;

    /** 페이지갯수 */
    private int pageUnit = 10;

    /** 페이지사이즈 */
    private int pageSize = 10;

    /** firstIndex */
    private int firstIndex = 1;

    /** lastIndex */
    private int lastIndex = 1;

    /** recordCountPerPage */
    private int recordCountPerPage = 10;

    /** rowNo */
    private int rowNo = 0;
	

    private String Bbs_Radio="";
    private String Bbs_Select="";
    private String[] Bbs_Check={};

    private String Bbs_CheckInput="";
    
   
    private String bbs_DateStart="";
  


	private String bbs_DateEnd="";



















    
	public String getBbs_DateStart() {
		return bbs_DateStart;
	}







	public void setBbs_DateStart(String bbs_DateStart) {
		this.bbs_DateStart = bbs_DateStart;
	}







	public String getBbs_DateEnd() {
		return bbs_DateEnd;
	}







	public void setBbs_DateEnd(String bbs_DateEnd) {
		this.bbs_DateEnd = bbs_DateEnd;
	}







	public String getBbs_CheckInput() {
		return Bbs_CheckInput;
	}







	public void setBbs_CheckInput(String bbs_CheckInput) {
		Bbs_CheckInput = bbs_CheckInput;
	}







	public String getBbs_Radio() {
		return Bbs_Radio;
	}







	public void setBbs_Radio(String bbs_Radio) {
		Bbs_Radio = bbs_Radio;
	}







	public String getBbs_Select() {
		return Bbs_Select;
	}







	public void setBbs_Select(String bbs_Select) {
		Bbs_Select = bbs_Select;
	}







	







	






	public String[] getBbs_Check() {
		return Bbs_Check;
	}







	public void setBbs_Check(String[] bbs_Check) {
		Bbs_Check = bbs_Check;
	}







	public int getPageIndex() {
		return pageIndex;
	}







	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}







	public int getPageUnit() {
		return pageUnit;
	}







	public void setPageUnit(int pageUnit) {
		this.pageUnit = pageUnit;
	}







	public int getPageSize() {
		return pageSize;
	}







	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}







	public int getFirstIndex() {
		return firstIndex;
	}







	public void setFirstIndex(int firstIndex) {
		this.firstIndex = firstIndex;
	}







	public int getLastIndex() {
		return lastIndex;
	}







	public void setLastIndex(int lastIndex) {
		this.lastIndex = lastIndex;
	}







	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}







	public void setRecordCountPerPage(int recordCountPerPage) {
		this.recordCountPerPage = recordCountPerPage;
	}







	public int getRowNo() {
		return rowNo;
	}







	public void setRowNo(int rowNo) {
		this.rowNo = rowNo;
	}







	public String getSearchCnd() {
		return searchCnd;
	}







	public void setSearchCnd(String searchCnd) {
		this.searchCnd = searchCnd;
	}







	public String getSearchWrd() {
		return searchWrd;
	}







	public void setSearchWrd(String searchWrd) {
		this.searchWrd = searchWrd;
	}







	/**
	 * toString 메소드를 대치한다.
	 */
	public String toString(){
		return ToStringBuilder.reflectionToString(this);
	}







	public int getBbs_Idx() {
		return Bbs_Idx;
	}







	public void setBbs_Idx(int bbs_Idx) {
		Bbs_Idx = bbs_Idx;
	}







	public String getBbs_Name() {
		return Bbs_Name;
	}







	public void setBbs_Name(String bbs_Name) {
		Bbs_Name = bbs_Name;
	}







	public String getBbs_Title() {
		return Bbs_Title;
	}







	public void setBbs_Title(String bbs_Title) {
		Bbs_Title = bbs_Title;
	}







	public String getBbs_Content() {
		return Bbs_Content;
	}







	public void setBbs_Content(String bbs_Content) {
		Bbs_Content = bbs_Content;
	}







	public Date getBbs_Date() {
		return Bbs_Date;
	}







	public void setBbs_Date(Date bbs_Date) {
		Bbs_Date = bbs_Date;
	}







	public int getBbs_Hit() {
		return Bbs_Hit;
	}







	public void setBbs_Hit(int bbs_Hit) {
		Bbs_Hit = bbs_Hit;
	}







	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
