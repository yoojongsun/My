<%--
  Class Name : EgovNoticeInqire.jsp
  Description : 게시물 조회 화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2009.03.23   이삼섭          최초 생성
     2009.06.26   한성곤          2단계 기능 추가 (댓글관리, 만족도조사)
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 공통서비스 개발팀 이삼섭
    since    : 2009.03.23 
--%>


<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import ="egovframework.com.cmm.LoginVO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<link href="<c:url value='/'/>css/common.css" rel="stylesheet" type="text/css" >
<link href="<c:url value='${brdMstrVO.tmplatCours}' />" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<c:url value='/js/EgovBBSMng.js' />"></script>
<c:if test="${anonymous == 'true'}"><c:set var="prefix" value="/anonymous"/></c:if>
<script type="text/javascript">
    function onloading() {
        if ("<c:out value='${msg}'/>" != "") {
            alert("<c:out value='${msg}'/>");
        }
    }
    
    function fn_egov_select_noticeList(pageNo) {
   
        document.frm.action = "<c:url value='/cop/bbs${prefix}/BbsList.do'/>";
        document.frm.submit();  
    }
    
    function fn_egov_delete_notice() {
     
        
        if (confirm('<spring:message code="common.delete.msg" />')) {
            document.frm.action = "<c:url value='/cop/bbs${prefix}/BbsDelete.do'/>";
            document.frm.submit();
        }   
    }
    
    function fn_egov_moveUpdt_notice() {
        document.frm.action = "<c:url value='/cop/bbs${prefix}/BbsUpdtPage.do'/>";
        document.frm.submit();          
    }
    
    function fn_egov_addReply() {
        document.frm.action = "<c:url value='/cop/bbs${prefix}/addReplyBoardArticle.do'/>";
        document.frm.submit();          
    }   
</script>
<!-- 2009.06.29 : 2단계 기능 추가  -->
<c:if test="${useComment == 'true'}">
<c:import url="/cop/bbs/selectCommentList.do" charEncoding="utf-8">
    <c:param name="type" value="head" />
</c:import>
</c:if>
<c:if test="${useSatisfaction == 'true'}">
<c:import url="/cop/bbs/selectSatisfactionList.do" charEncoding="utf-8">
    <c:param name="type" value="head" />
</c:import>
</c:if>
<c:if test="${useScrap == 'true'}">
<script type="text/javascript">
    function fn_egov_addScrap() {
        document.frm.action = "<c:url value='/cop/bbs/addScrap.do'/>";
        document.frm.submit();          
    }
</script>
</c:if>
<!-- 2009.06.29 : 2단계 기능 추가  -->
<title>글조회</title>

<style type="text/css">
    h1 {font-size:12px;}
    caption {visibility:hidden; font-size:0; height:0; margin:0; padding:0; line-height:0;}
</style>

</head>
<body onload="onloading();">
<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>    
<!-- 전체 레이어 시작 -->
<div id="wrap">
    <!-- header 시작 -->
    <div id="header_mainsize"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncHeader" /></div>
    <div id="topnavi"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncTopnav" /></div>        
    <!-- //header 끝 --> 
    <!-- container 시작 -->
    <div id="container">
        <!-- 좌측메뉴 시작 -->
        <div id="leftmenu"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncLeftmenu" /></div>
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
                            <li><strong>게시물 상세보기</strong></li>
                        </ul>
                    </div>
                </div>
                <!-- 검색 필드 박스 시작 -->
                <div id="search_field">
                    <div id="search_field_loc"><h2><strong>글조회</strong></h2></div>
                </div>
				<form name="frm" method="post" action="<c:url value='/cop/bbs${prefix}/BbsInqire.do'/>">
						<input type="hidden" name="bbs_Idx" value="<c:out value='${result.bbs_Idx}'/>" />
						<input type="hidden" name="atchFileId" value="<c:out value='${result.atchFileId}'/>" />
                    <div class="modify_user" >
                        <table>
                          <tr> 
                          
					        <th width="15%" height="23" nowrap >제목</th>
					        <td width="85%" colspan="5" nowrap="nowrap">
					         <input style="border:none;" type="text" name="bbs_Title" value="<c:out value="${result.bbs_Title}" />" readonly/>
					        </td>
					      </tr>
					      <tr> 
					        <th width="15%" height="23" nowrap >작성자</th>
					        <td width="15%" nowrap="nowrap">
					         <input style="border:none;" type="text" name="bbs_Name" value="<c:out value="${result.bbs_Name}" />" readonly/>
					        </td>
					        <th width="15%" height="23" nowrap >작성시간</th>
					         <td width="15%" nowrap="nowrap">
					        <input style="border:none;" type="text" name="bbs_Date" value="<c:out value="${result.bbs_Date}" />" readonly/>
					        </td>
					        <th width="15%" height="23" nowrap >조회수</th>
					        <td width="15%" nowrap="nowrap">
					           <input style="border:none;" type="text" name="bbs_Hit" value="<c:out value="${result.bbs_Hit}" />" readonly/>
					        </td>
					      </tr>    
					      <tr> 
					        <th height="23" >글내용</th>
					        <td colspan="5">
					         <div id="bbs_cn">
					           <textarea id="nttCn" name="bbs_Content"  cols="75" rows="20"  style="width:99%" readonly="readonly" title="글내용"><c:out value="${result.bbs_Content}" escapeXml="true" /></textarea>
					         </div>
					        </td>
					      </tr>
					     <tr> 
					        <th width="15%" height="23" nowrap >게시판 속성 </th>
					        <td width="15%" nowrap="nowrap">
					         <input style="border:none;" type="text" name="bbs_Radio" value="<c:out value="${result.bbs_Radio}" />" readonly/>
					        </td>
					        <th width="15%" height="23" nowrap >게시판 유형</th>
					         <td width="15%" nowrap="nowrap">
					        <input style="border:none;" type="text" name="bbs_Select" value="<c:out value="${result.bbs_Select}" />" readonly/>
					        </td>
					      </tr>
					      <tr> 
					        <th width="15%" height="23" nowrap >오늘 해야할 업무 </th>
					        <td width="15%" nowrap="nowrap">
					         <c:forEach  var="results" items="${chk}" varStatus="status">    		
					           		<input style="border:none;width:40px;" name="Bbs_Check" type="text"  value="<c:out value="${results.bbs_CodeNm}"/>" readonly/>				
                               </c:forEach>
					        </td>
					       </tr>
					       <tr>
								<th width="20%" height="23" class="required_text"><label>
										조회기간
								</label> <img src="<c:url value='/images/required.gif' />" 
									height="15" alt="required" /></th>
								<td width="100%" nowrap="nowrap">
								
									  <input type="text" name="bbs_DateStart" id="datepicker1" value="${result.bbs_DateStart }" readonly/>~
									  <input type="text" name="bbs_DateEnd" id="datepicker2" value="${result.bbs_DateEnd }" readonly/>
									
								</td>
								
								
							</tr>
					     <c:if test="${not empty result.atchFileId}">

					          <tr> 
					            <th height="23">첨부파일 목록</th>
					            <td colspan="5">
					                <c:import url="/cop/bbs/selectFileLists.do" charEncoding="utf-8">
					                    <c:param name="param_atchFileId" value="${result.atchFileId}" />
					                    
					                </c:import>
					            </td>
					          </tr>
					      </c:if>
					      <c:if test="${anonymous == 'true'}">
					      <tr> 
					        <th height="23"><label for="password"><spring:message code="cop.password" /></label></th>
					        <td colspan="5">
					            <input name="password" title="암호" type="password" size="20" value="" maxlength="20" >
					        </td>
					      </tr>
					      </c:if>   
                        </table>
                    </div>

                    <!-- 버튼 시작(상세지정 style로 div에 지정) -->
                    <div class="buttons" style="padding-top:10px;padding-bottom:10px;">
                      <!-- 목록/저장버튼  -->
                      <table border="0" cellspacing="0" cellpadding="0" align="center">
                        <tr>
                          <%  
                         LoginVO loginVO = (LoginVO)session.getAttribute("LoginVO"); 
                         
                         if(loginVO != null){
                        	
                   
                        	%> 
                                         	
                         	
			               <c:if test="${result.bbs_Name == sessionScope.LoginVO_Id}">        
			           		
			                  <td>
			                     <a href="#LINK" onclick="javascript:fn_egov_moveUpdt_notice(); return false;">수정</a> 
			                  </td>
			                  
			                  <td width="10"></td>
			                  <td>
			                     <a href="#LINK" onclick="javascript:fn_egov_delete_notice(); return false;">삭제</a> 
			                  </td>
			                   
			            	 </c:if>
			            <% } %>   
			           <%--   <c:if test="${result.replyPosblAt == 'Y'}">     
			                  <td width="10"></td>
			                  <td>
			                     <a href="#LINK" onclick="javascript:fn_egov_addReply(); return false;">답글작성</a> 
			                  </td>
			              </c:if> --%>
			               <%--<% } --%>
			              <td width="10"></td>
                          <td>
                              <a href="#LINK" onclick="javascript:fn_egov_select_noticeList('1'); return false;">목록 </a> 
                          </td>
			            </tr>
                      </table>
                    </div>
                    <!-- 버튼 끝 -->                           
                </form>

            </div>  
            <!-- //content 끝 -->    
    </div>  
    <!-- //container 끝 -->
    <!-- footer 시작 -->
    <div id="footer"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" /></div>
    <!-- //footer 끝 -->
</div>
<!-- //전체 레이어 끝 -->
</body>
</html>

