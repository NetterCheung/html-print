<!DOCTYPE html>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print"%>
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
<meta name="copies" content="1">				<!--′òó?·Yêy(??è??μ:1)-->
<meta name="papersize" content="A4">           	<!--????′óD?(??è??μ:A4)-->
<meta name="orientation" content="0">          	<!--′òó?·??ò(??è??μ:0  2?êy?μ?÷:0¨C×Y?ò ;1-oá?ò)-->
<meta name="duplex" content="2">               	<!--ê?·?????(??è??μ:0 2?êy?μ?÷:0¨C?T ; 1- ?ì±?·-×a; 2¨C3¤±?·-×a)-->
<meta name="multifunctionind" content="false">
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
	{page-break-before:always;margin-left:0pt; margin-top:0pt;}
div.firstpage
	{margin-left:0pt; margin-top:0pt;}


-->
</style>

</head>

<c:set var="PRINT_DUPLICATE_NON_DELIVERED_MDIC_NOTICE_VALUE"><%=RequestConstant.PRINT_DUPLICATE_NON_DELIVERED_MDIC_NOTICE_VALUE%></c:set>
<c:set var="DUPLICATE_NON_DELIVERED_MDIC_NOTICE_VALUE" value="${requestScope[PRINT_DUPLICATE_NON_DELIVERED_MDIC_NOTICE_VALUE]}" scope="request"/>
<c:set var="MDIC_COVER_NOTICE_VALUE" value="${requestScope[PRINT_DUPLICATE_NON_DELIVERED_MDIC_NOTICE_VALUE].mdicCoverNoteValue}" scope="request"/>
<c:set var="COVER_NOTE_ISSUE_PRINTING_CTL_VALUE" value="${requestScope[PRINT_DUPLICATE_NON_DELIVERED_MDIC_NOTICE_VALUE].coverNoteIssuePrintingCtlValue}" scope="request"/>

<body lang=ZH-CN style='text-justify-trim:punctuation'>
	<c:forEach var="mdicNoticeReportValue" items="${requestScope[PRINT_DUPLICATE_NON_DELIVERED_MDIC_NOTICE_VALUE].mdicNoticeReportValueCollection}">
		<c:set var="MDIC_NOTICE_VALUE" value="${mdicNoticeReportValue.mdicNoticeValue}" scope="request"/>
		<c:set var="MDIC_NOTICE_TICKET_MAP_VALUE_COLLECTION" value="${mdicNoticeReportValue.mdicNoticeTicketMapCollection}" scope="request"/>
		<c:set var="COMMON_LEGAL_ENTITY_VALUE" value="${mdicNoticeReportValue.legalEntityValue}" scope="request"/>
		<c:set var="ISSUE_PRINTING_CTL_VALUE" value="${mdicNoticeReportValue.noticeIssuePrintingCtlValue}" scope="request"/>
<!-- 1.  MDIC Report AOMD037A -->
		<div class= firstpage>
			<jsp:include page="Print_MDIC_AOMD037A_Cover_Note.jsp"/>
		</div>

<!-- 2. Blank Page -->


		<div class= page><span style="visibility: hidden;">&nbsp;</span>
			<table>
			<tr>
			<td>
			<p class=MsoNormal style='text-align:right;word-break:break-all'><span lang=EN-US style='font-size:10pt'></span></p><br>
			</td>
			</tr>
			</table>
		</div>
<!-- 3. MDIC Notice -->


		<div class= page><span style="visibility: hidden;">&nbsp;</span>
			<c:if test="${MDIC_NOTICE_VALUE.type == 'F'}">
				<jsp:include page="Print_MDIC_AOMD003D.jsp"/>
			</c:if>

			<c:if test="${MDIC_NOTICE_VALUE.type == 'M'}">
				<jsp:include page="Print_MDIC_AOMD010D.jsp"/>
			</c:if>

			<c:if test="${MDIC_NOTICE_VALUE.type == 'R'}">
				<jsp:include page="Print_MDIC_AOMD023A.jsp"/>
			</c:if>

		</div>

<!-- 4. Leave a blank page for duplex-printing by Alison for CR-2013-021 on 30 Oct 2013
	<DIV style="PAGE-BREAK-AFTER: always">&nbsp;</DIV> -->
	<div class= page>
    <table>
	    <tr>
		    <td>
			    <p class=MsoNormal style='text-align:right;word-break:break-all'><span lang=EN-US style='font-size:10pt'></span></p><br>
			</td>
		</tr>
	</table>
</div>
<!-- 5. DOP Table -->

		<div class=page><span style="visibility: hidden;">&nbsp;</span>
			<jsp:include  page="../common/Common_MDIC_Notice_Offence_Table.html"/>
		</div>

	</c:forEach>
</body>
</html>