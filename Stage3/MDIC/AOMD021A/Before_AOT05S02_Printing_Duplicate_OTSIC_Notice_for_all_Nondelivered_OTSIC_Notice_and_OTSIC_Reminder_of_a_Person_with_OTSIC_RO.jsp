<!DOCTYPE html>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="tdcustom"%>
<%@ page import="hk.gov.valid.util.RequestConstant"%>
<%@ page import="hk.gov.valid.util.SessionConstant"%>
<%@ page import="hk.gov.valid.util.CodeTableConstant"%>
<%@ page import="hk.gov.valid.driver.util.DriverConstant"%>

<html lang="en">

<head>
<!-- saved from url=(0014)about:internet -->
<meta charset="UTF-8">
<meta name="margin-top" content="0">
<meta name="margin-bottom" content="0">
<meta name="margin-left" content="0">
<meta name="margin-right" content="0">
<meta name="header" content="">
<meta name="copies" content="1">				<!--´òÓ¡·ÝÊý(Ä¬ÈÏÖµ:1)-->
<meta name="papersize" content="A4">           	<!--Ö½ÕÅ´óÐ¡(Ä¬ÈÏÖµ:A4)-->
<meta name="orientation" content="0">          	<!--´òÓ¡·½Ïò(Ä¬ÈÏÖµ:0  ²ÎÊýËµÃ÷:0¨C×ÝÏò ;1-ºáÏò)-->
<meta name="duplex" content="2">               	<!--ÊÇ·ñË«Ãæ(Ä¬ÈÏÖµ:0 ²ÎÊýËµÃ÷:0¨CÎÞ ; 1- ¶Ì±ß·­×ª; 2¨C³¤±ß·­×ª)-->

<title>&nbsp;</title>

<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:MingLiU_HKSCS;
	panose-1:2 2 3 0 0 0 0 0 0 0;}
@font-face
	{font-family:"\@MingLiU_HKSCS";
	panose-1:2 2 3 0 0 0 0 0 0 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0000pt;
	font-size:10pt;
	font-family:"Times New Roman";}
h1
	{margin:0cm;
	margin-bottom:.0000pt;
	text-align:center;
	page-break-after:avoid;layout-grid-mode:char;
	font-size:10pt;
	font-family:"Times New Roman";}
p.MsoDocumentMap, li.MsoDocumentMap, div.MsoDocumentMap
	{margin:0cm;
	margin-bottom:.0000pt;
	background:navy;
	font-size:12pt;
	font-family:"Times New Roman";}
 /* Page Definitions */
 @page Section1
	{size:595.3pt 841.9pt;
	margin:22.7pt 46.3pt 22.7pt 36pt;
	layout-grid:16pt;}
div.Section1
	{page:Section1;}
 /* List Definitions */
 ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
div.page
	{margin-left:0pt; margin-top:0pt;}
div.firstpage
	{margin-left:0pt; margin-top:0pt;}
-->
</style>

</head>


<c:set var="nondeliveredOtsicNoticeAndReminderValue" value="${requestScope.nondeliveredOtsicNoticeAndReminderValue}" scope="request" />
<c:set var="LEGAL_ENTITY_VALUE" value="${nondeliveredOtsicNoticeAndReminderValue.legalEntityValue}" scope="request"/>
<c:set var="OTSIC_NOTICE_REPORT_VALUE_COLLECTION" value="${nondeliveredOtsicNoticeAndReminderValue.otsicNoticeReportValueCollection}" scope="request"/>
<c:set var="OTSIC_COVER_NOTE_VALUE" value="${nondeliveredOtsicNoticeAndReminderValue.otsicCoverNoteValue}" scope="request"/>

<c:set var="pageContentHeight" value="950" />
<c:set var="countNo" value="0" />
<c:set var="currNo" value="0" />
<body lang=ZH-CN style='text-justify-trim:punctuation'>
<div class="firstpage">
    <jsp:include page="Print_OTSIC_AOOT021A.jsp" />
</div>

<c:forEach var="otsicNoticeValue" items="${nondeliveredOtsicNoticeAndReminderValue.otsicNoticeCollection}" >
	<c:set var="countNo" value="${countNo+1}" />
</c:forEach>

<c:if test="${countNo < 32}">
<div class="page" style="PAGE-BREAK-AFTER: always">
   <table>
	    <tr>
		    <td>
			    <p class=MsoNormal style='text-align:right;word-break:break-all;text-align:right'><span lang=EN-US style='font-size:10pt'></span></p><br>
			</td>
		</tr>
	</table>
	
</div>
</c:if>


<c:forEach var="OTSIC_NOTICE_REPORT_VALUE" items="${OTSIC_NOTICE_REPORT_VALUE_COLLECTION}" >
	<c:set var="OTSIC_NOTICE_VALUE" value="${OTSIC_NOTICE_REPORT_VALUE.otsicNoticeValue}" scope="request"/>
	<c:set var="ISSUE_PRINTING_CTL_VALUE" value="${OTSIC_NOTICE_REPORT_VALUE.noticeIssuePrintingCtlValue}" scope="request"/>
	<c:set var="OTSIC_COVER_NOTICE_VALUE" value="${nondeliveredOtsicNoticeAndReminderValue.otsicCoverNoteValue}" scope="request" />
	<c:set var="OTSIC_NOTICE_TICKET_MAP_VALUE_COLLECTION" value="${OTSIC_NOTICE_REPORT_VALUE.otsicNoticeTicketMapCollection}" scope="request" />
	<div class="page">
		<c:if test="${OTSIC_NOTICE_VALUE.type == 'F'}">
			<jsp:include page="Print_OTSIC_AOOT003D.jsp"/>
		</c:if>

		<c:if test="${OTSIC_NOTICE_VALUE.type == 'M'}">
			<jsp:include page="Print_OTSIC_AOOT010D.jsp"/>
		</c:if>

		<c:if test="${OTSIC_NOTICE_VALUE.type == 'R'}">
			<jsp:include page="Print_OTSIC_AOOT023A.jsp"/>
		</c:if>
	</div>

<!-- 4. Leave a blank page for duplex-printing by Alison for CR-2013-021 on 30 Oct 2013 
<DIV style="PAGE-BREAK-AFTER: always">&nbsp;</DIV> -->	
<div class=page>
    <table>
	    <tr>
		    <td>
			    <p class=MsoNormal style='text-align:right;word-break:break-all;text-align:right'><span lang=EN-US style='font-size:10pt'></span></p><br>
			</td>
		</tr>
	</table>
</div>




<!-- 5. TDOP Table -->

		<div class=page>
		
			<jsp:include  page="../common/Common_OTSIC_Notice_Offence_Table.html"/>
		</div>

		   
<!--	<c:if test="${!status.last}"><DIV style="PAGE-BREAK-AFTER: always">&nbsp;</DIV></c:if>	   --> 



	<div>
		
		<c:set var="currNo" value="${currNo+1}" />
		<c:if test="${currNo != countNo}">
		<DIV style="PAGE-BREAK-AFTER: always">&nbsp;</DIV>
		</c:if>
	</div>	
</c:forEach>
</body>
</html>