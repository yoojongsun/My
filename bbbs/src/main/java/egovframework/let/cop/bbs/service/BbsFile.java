package egovframework.let.cop.bbs.service;


import java.io.Serializable;

import org.apache.commons.lang3.builder.ToStringBuilder;

/**
 * @Class Name : FileVO.java
 * @Description : 파일정보 처리를 위한 VO 클래스
 * @Modification Information
 *
 *    수정일       수정자         수정내용
 *    -------        -------     -------------------
 *    2009. 3. 25.     이삼섭
 *
 * @author 공통 서비스 개발팀 이삼섭
 * @since 2009. 3. 25.
 * @version
 * @see
 *
 */
public class BbsFile implements Serializable {

    /**
	 *  serialVersion UID
	 */
	private static final long serialVersionUID = -287950405903719128L;
	/**
     * 첨부파일 아이디
     */
    public String AtchFileId = "";
    /**
     * 생성일자
     */
    public String CreatDt = "";
    /**
     * 파일내용
     */
    public String FileCn = "";
    /**
     * 파일확장자
     */
    public String FileExtsn = "";
    /**
     * 파일크기
     */
    public String FileMg = "";
    /**
     * 파일연번
     */
    public String FileSn = "";
    /**
     * 파일저장경로
     */
    public String FileStreCours = "";
    /**
     * 원파일명
     */
    public String OrignlFileNm = "";
    /**
     * 저장파일명
     */
    public String StreFileNm = "";

    /**
     * atchFileId attribute를 리턴한다.
     *
     * @return the atchFileId
     */
  

    /**
     * toString 메소드를 대치한다.
     */
    public String toString() {
	return ToStringBuilder.reflectionToString(this);
    }

	public String getAtchFileId() {
		return AtchFileId;
	}

	public void setAtchFileId(String atchFileId) {
		AtchFileId = atchFileId;
	}

	public String getCreatDt() {
		return CreatDt;
	}

	public void setCreatDt(String creatDt) {
		CreatDt = creatDt;
	}

	public String getFileCn() {
		return FileCn;
	}

	public void setFileCn(String fileCn) {
		FileCn = fileCn;
	}

	public String getFileExtsn() {
		return FileExtsn;
	}

	public void setFileExtsn(String fileExtsn) {
		FileExtsn = fileExtsn;
	}

	public String getFileMg() {
		return FileMg;
	}

	public void setFileMg(String fileMg) {
		FileMg = fileMg;
	}

	public String getFileSn() {
		return FileSn;
	}

	public void setFileSn(String fileSn) {
		FileSn = fileSn;
	}

	public String getFileStreCours() {
		return FileStreCours;
	}

	public void setFileStreCours(String fileStreCours) {
		FileStreCours = fileStreCours;
	}

	public String getOrignlFileNm() {
		return OrignlFileNm;
	}

	public void setOrignlFileNm(String orignlFileNm) {
		OrignlFileNm = orignlFileNm;
	}

	public String getStreFileNm() {
		return StreFileNm;
	}

	public void setStreFileNm(String streFileNm) {
		StreFileNm = streFileNm;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
