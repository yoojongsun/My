<%--
  Class Name : EgovNoticeRegist.jsp
  Description : 게시물  생성 화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2009.03.24   이삼섭          최초 생성
     2009.06.26   한성곤          2단계 기능 추가 (댓글관리, 만족도조사)
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 공통서비스 개발팀 이삼섭
    since    : 2009.03.24  
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="validator"
	uri="http://www.springmodules.org/tags/commons-validator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="content-language" content="ko">
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<link href="<c:url value='/'/>css/common.css" rel="stylesheet"
	type="text/css">
<link href="<c:url value='${brdMstrVO.tmplatCours}' />" rel="stylesheet"
	type="text/css">
<script type="text/javascript" src="<c:url value='/js/EgovBBSMng.js' />"></script>
<script type="text/javascript"
	src="<c:url value='/js/EgovMultiFile.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/js/EgovCalPopup.js'/>"></script>
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="board" staticJavascript="false"
	xhtml="true" cdata="false" />
<c:if test="${anonymous == 'true'}">
	<c:set var="prefix" value="/anonymous" />
</c:if>
<script type="text/javascript">
	$.datepicker.setDefaults({
		dateFormat : 'yy-mm-dd',
		prevText : '이전 달',
		nextText : '다음 달',
		monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월',
				'10월', '11월', '12월' ],
		monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
				'9월', '10월', '11월', '12월' ],
		dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
		dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
		dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
		showMonthAfterYear : true,
		yearSuffix : '년'
	});

	$(function() {
		$("#datepicker1, #datepicker2").datepicker();
	});

	function fn_egov_validateForm(obj) {
		return true;
	}

	function fn_egov_regist_notice() {
		//document.board.onsubmit();

		if (document.board.bbs_Title.value == "") {
			alert("제목을 입력하세요");
			return;
		}
		if (document.board.bbs_Content.value == "") {
			alert("내용을 입력하세요");
			return;
		}

		var test1 = document.getElementsByName("Bbs_Check");
		console.log(test1.length);
		var count = 0;
		for (var i = 0; i < test1.length; i++) {
			if (!test1[i].checked) {
				count++;

			}
		}
		if (count == 5) {
			alert("할일을 선택하세요");
			return;
		}

		//document.board.onsubmit();
		document.board.action = "<c:url value='/cop/bbs/BbsUpdt.do'/>";
		document.board.submit();

	}

	function fn_egov_select_noticeList() {
		document.board.action = "<c:url value='/cop/bbs/BbsList.do'/>";
		document.board.submit();
	}
</script>
<style type="text/css">
.noStyle {
	background: ButtonFace;
	BORDER-TOP: 0px;
	BORDER-bottom: 0px;
	BORDER-left: 0px;
	BORDER-right: 0px;
}

.noStyle th {
	background: ButtonFace;
	padding-left: 0px;
	padding-right: 0px
}

.noStyle td {
	background: ButtonFace;
	padding-left: 0px;
	padding-right: 0px
}
</style>
<title>- 게시글쓰기</title>

<style type="text/css">
h1 {
	font-size: 12px;
}

caption {
	visibility: hidden;
	font-size: 0;
	height: 0;
	margin: 0;
	padding: 0;
	line-height: 0;
}
</style>


</head>

<!-- body onload="javascript:editor_generate('nttCn');"-->
<!-- <body onLoad="HTMLArea.init(); HTMLArea.onload = initEditor; document.board.nttSj.focus();"> -->
<body>
	<noscript class="noScriptTitle">자바스크립트를 지원하지 않는 브라우저에서는 일부
		기능을 사용하실 수 없습니다.</noscript>

	<!-- 전체 레이어 시작 -->
	<div id="wrap">
		<!-- header 시작 -->
		<div id="header_mainsize">
			<c:import url="/EgovPageLink.do?link=main/inc/EgovIncHeader" />
		</div>
		<div id="topnavi">
			<c:import url="/EgovPageLink.do?link=main/inc/EgovIncTopnav" />
		</div>
		<!-- //header 끝 -->
		<!-- container 시작 -->
		<div id="container">
			<!-- 좌측메뉴 시작 -->
			<div id="leftmenu">
				<c:import url="/EgovPageLink.do?link=main/inc/EgovIncLeftmenu" />
			</div>
			<!-- //좌측메뉴 끝 -->
			<!-- 현재위치 네비게이션 시작 -->
			<div id="content">
				<div id="cur_loc">
					<div id="cur_loc_align">
						<ul>
							<li>HOME</li>
							<li>&gt;</li>
							<li>게시판</li>
							<li>&gt;</li>
							<li>게시물 수정</li>
						</ul>
					</div>
				</div>
				<!-- 검색 필드 박스 시작 -->
				<div id="search_field">
					<div id="search_field_loc">
						<h2>
							<strong>게시글 수정</strong>
						</h2>
					</div>
				</div>

				<form:form commandName="board" name="board" method="post"
					enctype="multipart/form-data">
					<input type="hidden" name="bbs_Idx"
						value="<c:out value='${result.bbs_Idx}'/>" />
					<input type="hidden" name="bbs_Date"
						value="<c:out value='${result.bbs_Date}'/>" />
					<input type="hidden" name="bbs_Hit"
						value="<c:out value='${result.bbs_Hit}'/>" />
					<input type="hidden" name="atchFileId"
						value="<c:out value='${result.atchFileId}'/>" />
					<div id="border" class="modify_user">
						<table>
							<tr>
								<th width="20%" height="23" nowrap="nowrap"><label
									for="nttSj"><spring:message code="cop.nttSj" /></label> <img
									src="<c:url value='/images/required.gif' />" width="15"
									height="15" alt="required" /></th>
								<td width="80%" nowrap colspan="3"><input id="nttSj"
									name="bbs_Title" type="text" size="60" maxlength="60"
									value="<c:out value='${result.bbs_Title}'/>" /> <br />
								<form:errors path="nttSj" /></td>
							</tr>
							<tr>
								<th height="23"><label for="nttCn"><spring:message
											code="cop.nttCn" /></label> <img
									src="<c:url value='/images/required.gif' />" width="15"
									height="15" alt="required" /></th>
								<td colspan="3"><textarea id="nttCn" name="bbs_Content"
										class="textarea" cols="75" rows="20" style="width: 99%;"><c:out
											value='${result.bbs_Content}' /></textarea> <form:errors path="nttCn" />
								</td>
							</tr>
							<tr>
								<th width="20%" height="23" class="required_text"><label>
										게시판 속성 </label> <img src="<c:url value='/images/required.gif' />"
									width="15" height="15" alt="required" /></th>
								<td width="30%" nowrap="nowrap"><c:forEach var="results"
										items="${propertyList}" varStatus="status">
										<c:choose>
											<c:when test="${results.codeNm==result.bbs_Radio}">
												<input type="radio" name="Bbs_Radio" checked="checked"
													value="${results.codeNm}">${results.codeNm}
								           </c:when>
											<c:otherwise>
												<input type="radio" name="Bbs_Radio"
													value="${results.codeNm}">${results.codeNm}
								           </c:otherwise>
										</c:choose>
									</c:forEach></td>

								<th height="23"><label for="nttCn">게시판 유형</th>
								<td>
									<%-- <form:select path="bbsAttrbCode" title="게시판속성선택">
					                <form:option value='' label="--선택하세요--" />
					                <form:options items="${typeList}" itemValue="code" itemLabel="codeNm"/>
					            </form:select>  --%> <select name="Bbs_Select"
									class="select" title="검색조건 선택">
										<c:forEach var="results" items="${typeList}"
											varStatus="status">
											<option value="${results.codeNm }"
												<c:if test="${results.codeNm==result.bbs_Select}">selected="selected"</c:if>>${results.codeNm }</option>

										</c:forEach>
								</select>


								</td>

							</tr>
							<tr>
								<th width="20%" height="23" class="required_text"><label>
										오늘 해야할 업무 </label> <img src="<c:url value='/images/required.gif' />"
									height="15" alt="required" /></th>
								<td width="100%" nowrap="nowrap"><c:forEach var="results"
										items="${workList}" varStatus="status">
										<c:set var="testVar" value="Y" />
										<c:forEach var="resultCode" items="${result.bbs_Check}"
											varStatus="status2">
											<c:if test="${testVar eq 'Y'}">
												<c:choose>
													<c:when test="${results.codeNm == resultCode}">
														<input type="checkbox" name="Bbs_Check"
															value="${results.codeNm}" checked="checked"> ${results.codeNm }
											 		<c:set var="testVar" value="N" />
													</c:when>
													<c:otherwise>
														<c:if test="${status2.last}">
															<input type="checkbox" name="Bbs_Check"
																value="${results.codeNm}"> ${results.codeNm }
											 			<c:set var="testVar" value="N" />
														</c:if>

													</c:otherwise>

												</c:choose>

											</c:if>
										</c:forEach>
									</c:forEach></td>
							</tr>
							<tr>
								<th width="20%" height="23" class="required_text"><label>
										조회기간 </label> <img src="<c:url value='/images/required.gif' />"
									height="15" alt="required" /></th>
								<td width="100%" nowrap="nowrap"><input type="text"
									name="bbs_DateStart" id="datepicker1"
									 value="${result.bbs_DateStart }">~ <input type="text"
									name="bbs_DateEnd" id="datepicker2"
									 value="${result.bbs_DateEnd }"></td>


							</tr>
							<tr>
							<tr>
								<th height="23"><spring:message code="cop.atchFileList" /></th>
								<td colspan="3"><c:import
										url="/cop/bbs/selectFileInfsForUpdate.do" charEncoding="utf-8">
										<c:param name="param_atchFileId" value="${result.atchFileId}" />
									</c:import></td>
							</tr>

							<tr>
								<th height="23"><label for="egovComFileUploader"><spring:message
											code="cop.atchFile" /></label></th>
								<td colspan="3">
									<div id="file_upload_posbl" style="display: none;">
										<input name="file_0" id="egovComFileUploader" type="file" />
										<div id="egovComFileList"></div>
									</div>
									<div id="file_upload_imposbl" style="display: none;"></div> <input
									type="hidden" name="fileListCnt" value="0" />

								</td>
							</tr>



						</table>
					</div>

					<!-- 버튼 시작(상세지정 style로 div에 지정) -->
					<div class="buttons"
						style="padding-top: 10px; padding-bottom: 10px;">
						<!-- 목록/저장버튼  -->
						<table border="0" cellspacing="0" cellpadding="0" align="center">
							<tr>

								<td><a href="#LINK"
									onclick="javascript:fn_egov_regist_notice(); return false;"><spring:message
											code="button.update" /></a></td>
								<td width="10"></td>

								<td><a href="#LINK"
									onclick="javascript:fn_egov_select_noticeList(); return fasle;"><spring:message
											code="button.list" /></a></td>
							</tr>
						</table>
					</div>
					<!-- 버튼 끝 -->
				</form:form>

			</div>
			<!-- //content 끝 -->
		</div>
		<!-- //container 끝 -->
		<!-- footer 시작 -->
		<div id="footer">
			<c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" />
		</div>
		<!-- //footer 끝 -->
	</div>
	<script type="text/javascript">
		console.log("${result.bbs_Check[0]}");

		var existFileNum = document.board.fileListCnt.value;
		var maxFileNum = 3;

		if (existFileNum == "undefined" || existFileNum == null) {
			existFileNum = 0;
		}
		if (maxFileNum == "undefined" || maxFileNum == null) {
			maxFileNum = 3;
		}
		var uploadableFileNum = maxFileNum - existFileNum;
		if (uploadableFileNum < 0) {
			uploadableFileNum = 0;
		}
		if (uploadableFileNum != 0) {
			fn_egov_check_file('Y');
			var multi_selector = new MultiSelector(document
					.getElementById('egovComFileList'), uploadableFileNum);
			multi_selector.addElement(document
					.getElementById('egovComFileUploader'));
		} else {
			fn_egov_check_file('N');
		}
	</script>
	</script>



</body>
</html>

