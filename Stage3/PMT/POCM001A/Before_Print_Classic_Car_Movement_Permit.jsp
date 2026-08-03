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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- saved from url=(0014)about:internet -->
<meta charset="UTF-8">
<meta name="margin-top" content="0">
<meta name="margin-bottom" content="0">
<meta name="margin-left" content="0">
<meta name="margin-right" content="10">
<meta name="header" content=""> 
<meta name="footer" content="&bPage &p of &P"> 
<meta name="copies" content="1">				<!--打印份数(默认值:1)-->
<meta name="papersize" content="A4">           	<!--纸张大小(默认值:A4)-->
<meta name="orientation" content="0">          	<!--打印方向(默认值:0  参数说明:0–纵向 ;1-横向)-->
<meta name="duplex" content="2">               	<!--是否双面(默认值:0 参数说明:0–无 ; 1- 短边翻转; 2–长边翻转)-->

<title>香港特別行政區政府運輸署</title>

<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:PMingLiU;
	panose-1:2 2 3 0 0 0 0 0 0 0;}
@font-face
	{font-family:"\@PMingLiU";
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
	{margin-left:15pt; margin-top:0pt;}
div.firstpage
	{margin-left:15pt; margin-top:0pt;}
-->
</style>

</head>


<c:set var="movClassCarPermitPrint" value="${requestScope.movClassCarPermitPrint}"/>
<c:set var="permitConditionValues" value="${movClassCarPermitPrint.vehPermitOptCondValues}" scope="request"/>
<c:set var="optMandatoryCondValues" value="${movClassCarPermitPrint.optMandatoryCondValues}" scope="request"/>
<c:set var="COMMON_LEGAL_ENTITY_VALUE" value="${movClassCarPermitPrint.legalEntityValue}"/> 

<c:set var="pageContentHeight" value="950" />
<c:set var="countNo" value="1" />
<body lang=ZH-CN style='text-justify-trim:punctuation'>
<div class= firstpage>
<table style="margin: 0 auto; width: 670px;">
  <tr style="display: none;"><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th></tr>
 <tr>
 <td style="text-align: center;">
<table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 100%; margin: 0 auto;'>
 <tr>
  <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:right;word-break:break-all'><span lang=EN-US style='font-size:10pt'>No. <b><span style='color:black'><c:out value="${movClassCarPermitPrint.permitNo}"/></span></b></span>
  </td>
 </tr>
 <tr>
  <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><b><span lang=ZH-TW style='font-size:11pt;font-family:PMingLiU;letter-spacing:0pt'>香港特別行政區政府運輸署</span></b></p>
  <h1><span lang=EN-US style='font-size:11pt'>TRANSPORT DEPARTMENT</span></h1>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><b><span lang=EN-US style='font-size:11pt'>THE GOVERNMENT OF THE </span></b><b><span lang=EN-US style='font-size:11pt'>HONG KONG</span></b><b><span lang=EN-US style='font-size:11pt'> SPECIAL ADMINISTRATIVE REGION</span></b></p>
  <p class=MsoNormal style='layout-grid-mode:char'><b><span lang=EN-US style='font-size:11pt'>&nbsp;</span></b></p>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><b><span lang=ZH-TW style='font-size:11pt;font-family:PMingLiU;letter-spacing:0pt'>香港法例第</span></b><b><span lang=EN-US style='font-size:11pt;letter-spacing:0pt'>374</span></b><b><span lang=ZH-TW style='font-size:11pt;font-family:PMingLiU;letter-spacing:0pt'>章道路交通</span></b><b><span lang=EN-US style='font-size:11pt;letter-spacing:0pt'>(</span></b><b><span lang=ZH-TW style='font-size:11pt;font-family:PMingLiU;letter-spacing:0pt'>車輛登記及領牌</span></b><b><span lang=EN-US style='font-size:11pt;letter-spacing:0pt'>)</span></b><b><span lang=ZH-TW style='font-size:11pt;
  font-family:PMingLiU;letter-spacing:0pt'>規例</span></b></p>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><b><span lang=EN-US style='font-size:11pt'>ROAD TRAFFIC (REGISTRATION
  &amp; LICENSING OF VEHICLES) REGULATIONS (CAP. 374)</span></b></p>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><b><span lang=EN-US style='font-size:11pt'>&nbsp;</span></b></p>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><b><span lang=ZH-TW style='font-size:11pt;font-family:PMingLiU;letter-spacing:0pt'>老爺車行駛許可證<c:set var="PERMITDUP"><%=RequestConstant.PERMIT_PRINT_STATUS_DUPLICATE%></c:set><c:if test="${movClassCarPermitPrint.permitStatus == PERMITDUP}">複本</c:if></span></b></p>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><b><span lang=EN-US style='font-size:11pt;letter-spacing:0pt'>  
  <c:if test="${movClassCarPermitPrint.permitStatus == PERMITDUP}">
  DUPLICATE
  </c:if>
  MOVEMENT PERMIT FOR CLASSIC CARS</span></b></p>
  </td>
 </tr>
 <tr><td style="width: 50px;">&nbsp;</td><td style="width: 20px;">&nbsp;</td><td style="width: 50px;">&nbsp;</td><td style="width: 50px;">&nbsp;</td><td style="width: 50px;">&nbsp;</td><td style="width: 50px;">&nbsp;</td><td style="width: 50px;">&nbsp;</td><td style="width: 50px;">&nbsp;</td><td style="width: 50px;">&nbsp;</td><td style="width: 50px;">&nbsp;</td><td style="width: 50px;">&nbsp;</td><td style="width: 50px;">&nbsp;</td><td style="width: 50px;">&nbsp;</td><td style="width: 50px;">&nbsp;</td></tr>
 <tr>
  <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='margin-left:54pt;text-align:justify;text-justify:distribute-all-lines;layout-grid-mode:char'><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU;letter-spacing:0pt'>根&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;據&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;上&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;述&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;規&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;例&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第&nbsp;&nbsp;&nbsp;&nbsp;</span><span lang=EN-US style='font-size:10pt;text-justify:justify;letter-spacing:0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU;letter-spacing:0pt'>&nbsp;&nbsp;&nbsp;&nbsp;條&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;的&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;規&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;定&nbsp;&nbsp;&nbsp;，&nbsp;&nbsp;&nbsp;&nbsp;</span></p>
  <p class=MsoNormal style='margin-left:54pt;text-align:justify;text-justify:
  distribute-all-lines;layout-grid-mode:char'><span lang=EN-US style='font-size:10pt'>In accordance with the provisions of Regulation 53 of the above-mentioned regulations.</span></p>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10pt;font-family:PMingLiU;letter-spacing:0pt'>&nbsp;</span></b></p>
  </td>
 </tr>
 <tr>
 	<td colspan=14 style="text-align: left;">
 		<table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 640px;'>
 			<tr>
		  <td style='vertical-align: top; width: 120px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm; height: 77px;'>
		  <p class=MsoNormal style='layout-grid-mode:char'><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU;letter-spacing:0pt'>(車主姓名)</span><br><span lang=EN-US style='font-size:10pt'>(Name of Owner)</span></p>
		  </td>
		  <td  style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
		  <p class=MsoNormal style='layout-grid-mode:char'><b><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU;color:black;letter-spacing:0pt;word-break:normal;word-wrap:normal'>
			  <c:out value="${movClassCarPermitPrint.nameChi}"/></span></b>
			  <br>
			  <b><span lang=EN-US style='font-size:10pt;font-family:Courier New;color:black;word-break:normal;word-wrap:normal'>	    
				<c:out value="${movClassCarPermitPrint.nameEng}"/>
			     </span>
			  </b>
		  </p>
		  </td>
		 </tr>
		</table>
	</td>
</tr>

 <tr>
  <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'>
  <%--<span lang=ZH-TW style='font-size:10pt;font-family: PMingLiU;letter-spacing:0pt'>(香港身分證</span><span lang=EN-US style='font-size:10pt;letter-spacing:0pt'>/ </span><span lang=ZH-TW style='font-size:10pt; font-family:PMingLiU;letter-spacing:0pt'>公司註冊證號碼)</span> --%>
  </p>
  </td>
 </tr>
 <tr>
  <td colspan=7 style="vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm">
  <p class=MsoNormal style='text-align:justify;text-justify:layout-grid-mode:char'>
  <%-- <span lang=EN-US style='font-size:10pt'>(Hong Kong</span><span lang=EN-US style='font-size:10pt'> Identity Card/ Certificate of Incorporation)</span>  --%>
  </p>
  </td>
  <td colspan=7 style="vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm">
  <p class=MsoNormal style='text-align:justify;text-justify:layout-grid-mode:char'><b><span lang=EN-US style='font-size:10pt;color:black'>
        <!--
		<c:if test="${!empty COMMON_LEGAL_ENTITY_VALUE}">
			<c:choose>
			<c:when test="${(COMMON_LEGAL_ENTITY_VALUE.idType == ' ') || (COMMON_LEGAL_ENTITY_VALUE.idType == '')}">
				<SCRIPT LANGUAGE="JavaScript">
					var idNo = "<c:out value="${COMMON_LEGAL_ENTITY_VALUE.idNo}"/>";
					document.write(idNo.substr(0,idNo.length - 1) + "(" + idNo.substr(idNo.length - 1,idNo.length) + ")");
				</SCRIPT>
			</c:when>
			<c:otherwise>
				<c:out value="${COMMON_LEGAL_ENTITY_VALUE.idNo}"/>
			</c:otherwise>
			</c:choose>
		</c:if>
		-->
</span></b></p>
  </td>
 </tr>
 <tr>
  <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=EN-US style='font-size:9pt'>&nbsp;</span></p>
  </td>
 </tr>
 
 <tr>
  <td colspan=2 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU'>(地址)</span></p>
  </td>
  <td colspan=12 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal><b><span lang=EN-US style='font-family:Courier New;font-size:12pt;color:black'><c:out value="${movClassCarPermitPrint.address1}"/></span></b></p>
  </td>
 </tr>
 <tr>
  <td colspan=2 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal><span lang=EN-US style='font-size:10pt'>(Address)</span></p>
  </td>
  <td colspan=12 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal><b><span lang=EN-US style='font-family:Courier New;font-size:12pt;color:black'><c:out value="${movClassCarPermitPrint.address2}"/></span></b></p>
  <p class=MsoNormal><b><span lang=EN-US style='font-family:Courier New;font-size:12pt;color:black'><c:out value="${movClassCarPermitPrint.address3}"/></span></b></p>
  <p class=MsoNormal><b><span lang=EN-US style='font-family:Courier New;font-size:12pt;color:black'><c:out value="${movClassCarPermitPrint.address4}"/></span></b></p>
  </td>
 </tr>
 <tr>
  <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><b><span lang=EN-US style='font-size:9pt;color:black;letter-spacing:0pt'>&nbsp;</span></b></p>
  </td>
 </tr>
<tr>
  <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=ZH-TW style='font-size:10pt;font-family:
  PMingLiU;letter-spacing:0pt'>獲准使用以下所指的老爺車︰</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=EN-US style='font-size:10pt'>is hereby authorised
  to use or cause to be driven or used the classic car described hereunder:</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><b><span lang=EN-US style='font-size:7pt;color:black;letter-spacing:0pt'>&nbsp;</span></b></p>
  </td>
 </tr>
 </table>
  </td>
 <td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td>
 </tr>

 <tr>
  <td>
 <table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 670px;'>
  <tr>
  <td  style='vertical-align: top; width: 300px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=EN-US style='font-size:10pt;letter-spacing:
  0pt'> (a)</span><span lang=EN-US style='font-size:10pt;font-family:PMingLiU;letter-spacing:0pt'> </span><span lang=ZH-TW style='font-size:10pt;
  font-family:PMingLiU;letter-spacing:0pt'>引擎號碼 </span><span lang=EN-US style='font-size:10pt'>Engine Number</span></p>
  </td>
  <td  style='vertical-align: top; width: 370px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10pt;color:black'>
	<c:if test="${movClassCarPermitPrint.engineNo== null}">****</c:if>
	<c:if test="${movClassCarPermitPrint.engineNo!= null}"><c:out value="${movClassCarPermitPrint.engineNo}"/></c:if>
  </span></b></p>
  </td>
 </tr>
 <tr>
  <td style='vertical-align: top; width: 300px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=EN-US style='font-size:7pt;letter-spacing:0pt'>&nbsp;</span></p>
  </td>
  <td  style='vertical-align: top; width: 370px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><b><span lang=EN-US style='font-size:7pt;color:black'>&nbsp;</span></b></p>
  </td>
 </tr>
 <tr>
  <td  style='vertical-align: top; width: 300px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=EN-US style='font-size:10pt;letter-spacing:
  0pt'> (b)</span><span lang=EN-US style='font-size:10pt'> </span><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU'>車身底盤號碼</span><span lang=EN-US style='font-size:10pt'> Chassis Number</span></p>
  </td>
  <td  style='vertical-align: top; width: 370px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10pt;color:black'><c:out value="${movClassCarPermitPrint.chassisNo}"/></span></b></p>
  </td>
 </tr>
 <tr>
  <td  style='vertical-align: top; width: 300px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=EN-US style='font-size:7pt;letter-spacing:0pt'>&nbsp;</span></p>
  </td>
  <td style='vertical-align: top; width: 370px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><b><span lang=EN-US style='font-size:7pt;color:black'>&nbsp;</span></b></p>
  </td>
 </tr>
 <tr>
  <td  style='vertical-align: top; width: 300px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=EN-US style='font-size:10pt;letter-spacing:
  0pt'> (c)</span><span lang=EN-US style='font-size:10pt;font-family:PMingLiU;letter-spacing:0pt'> </span><span lang=ZH-TW style='font-size:10pt;
  font-family:PMingLiU;letter-spacing:0pt'>車身種類或型號 </span><span lang=EN-US style='font-size:10pt'>Type of Body or Model</span></p>
  </td>
  <td  style='vertical-align: top; width: 370px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10pt;color:black'><c:out value="${movClassCarPermitPrint.bodyTypeDescEng}"/></span></b></p>
  </td>
 </tr>
 <tr>
  <td  style='vertical-align: top; width: 300px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=EN-US style='font-size:6pt;letter-spacing:
  0pt'>&nbsp;</span></p>
  </td>
  <td style='vertical-align: top; width: 370px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><b><span lang=EN-US style='font-size:6pt;color:black'>&nbsp;</span></b></p>
  </td>
 </tr>
 </table>
  </td>
 <td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td>
 </tr>

 <tr>
  <td>
 <table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 670px;'>
 <tr>
  <td  colspan=2 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=EN-US style='font-size:10pt;letter-spacing:
  0pt'> (d)</span><span lang=EN-US style='font-size:10pt;font-family:PMingLiU;letter-spacing:0pt'> </span><span lang=ZH-TW style='font-size:10pt;
  font-family:PMingLiU;letter-spacing:0pt'>車輛最快速度是每小時</span><span lang=EN-US style='font-size:10pt;font-family:PMingLiU;letter-spacing:0pt'>         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p>
  </td>
  <td><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU;letter-spacing:0pt'>公里</span>
</td>
 </tr>
 <tr>
  <td style='vertical-align: top; width: 219px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;text-indent:17pt;layout-grid-mode:char'><span lang=EN-US style='font-size:10pt'>Maximum speed of vehicle</span></p>
  </td>
  <td style='vertical-align: top; width: 51px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10pt;color:black'>
  <fmt:formatNumber pattern="######" value="${movClassCarPermitPrint.maxSpeed}"/></span></b></p>
  </td>
  <td style='vertical-align: top; width: 390px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=EN-US style='font-size:10pt'>km. p.h.</span></p>
  </td>
 </tr>
 <tr>
  <td style='vertical-align: top; width: 219px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;text-indent:35pt;layout-grid-mode:char'><span lang=EN-US style='font-size:9pt'>&nbsp;</span></p>
  </td>
  <td style='vertical-align: top; width: 51px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><b><span lang=EN-US style='font-size:9pt;color:black'>&nbsp;</span></b></p>
  </td>
  <td style='vertical-align: top; width: 390px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=EN-US style='font-size:9pt'>&nbsp;</span></p>
  </td>
 </tr>
 </table>
  </td>
  <td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td>
 </tr>

 <tr>
  <td>
 <table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 670px;'>
 <tr>
  <td style='vertical-align: top; border-left:medium none; border-right:medium none; border-top:medium none; border-bottom:medium none;padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='margin-left:0pt;layout-grid-mode:char'><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU;letter-spacing:0pt'>這老爺車可在所有道路上行駛，惟須遵守背頁所列明的條件，而且只可在以下獲批准的日期由</span><span lang=ZH-TW style='font-size:10pt;letter-spacing:0pt'> </span><span lang=EN-US style='font-size:10pt;letter-spacing:0pt'>0 </span><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU;letter-spacing:0pt'>時</span><span lang=EN-US style='font-size:10pt;letter-spacing:0pt'> 0 </span><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU;letter-spacing:0pt'>分至</span><span lang=EN-US style='font-size:10pt;letter-spacing:0pt'> 23 </span><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU;letter-spacing:0pt'>時</span><span lang=EN-US style='font-size:10pt;letter-spacing:0pt'> 59 </span><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU;letter-spacing:0pt'>分行駛︰</span></p>
        <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=EN-US style='font-size:10pt'>in the manner 
          described overleaf on all roads from </span><span style='letter-spacing:0pt'><span lang=EN-US style='font-size:10pt'>00:00</span></span><span lang=EN-US style='font-size:10pt;letter-spacing:0pt'> </span><span lang=EN-US style='font-size:10pt'>hours to<span style='letter-spacing:0pt'> 
          23:59 </span>hours on the dates as endorsed below:-</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=EN-US style='font-size:8pt'>&nbsp;</span></p>
  </td>
 </tr>
 </table>
   </td>
  <td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td>
 </tr>

 <tr>
  <td>
 <table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 670px; height: 128px;'>
 <tr>
  <td style='vertical-align: top; width: 223px; border-left:1pt solid windowtext; border-right:1pt solid windowtext; border-bottom:1pt solid windowtext; border-top:1pt solid windowtext;height:27px; padding-left:1pt; padding-right:1pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-indent:70pt;layout-grid-mode:char'><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU'>日期</span></p>
  <p class=MsoNormal style='margin-left:0pt;text-indent:70pt;layout-grid-mode:char'><span lang=EN-US style='font-size:10pt'>Date</span></p>
  </td>
  <td  style='vertical-align: top; width: 223px; border-left:1pt solid windowtext; border-right:1pt solid windowtext; border-bottom:1pt solid windowtext; border-top:1pt solid windowtext;height:27px; padding-left:1pt; padding-right:1pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-indent:70pt;layout-grid-mode:char'><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU'>日期</span></p>
  <p class=MsoNormal style='margin-left:0pt;text-indent:70pt;layout-grid-mode:char'><span lang=EN-US style='font-size:10pt'>Date</span></p>
  </td>
  <td style='vertical-align: top; width: 223px; border-left:1pt solid windowtext; border-right:1pt solid windowtext; border-bottom:1pt solid windowtext; border-top:1pt solid windowtext;height:27px; padding-left:1pt; padding-right:1pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-indent:70pt;layout-grid-mode:char'><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU'>日期</span></p>
  <p class=MsoNormal style='margin-left:0pt;text-indent:70pt;layout-grid-mode:char'><span lang=EN-US style='font-size:10pt'>Date</span></p>
  </td>
 </tr>
 <tr>
  <td  style='vertical-align: top; width: 223px; border-left:1pt solid windowtext; border-right:1pt solid windowtext; border-bottom:1pt solid windowtext;border-top:medium none;height:43px; padding-left:1pt; padding-right:1pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><b><span lang=EN-US style='font-size:8pt;color:black'>&nbsp;</span></b></p>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10pt;color:black'>
  &nbsp;<fmt:formatDate value="${movClassCarPermitPrint.movementDate01}" pattern="dd/MM/yyyy" />&nbsp;</span></b></p>
  <p class=MsoNormal style='margin-left:0pt;layout-grid-mode:char'><span lang=EN-US style='font-size:6pt;letter-spacing:0pt'>&nbsp;</span></p>
  </td>
  <td  style='vertical-align: top; width: 223px; border-top:medium none;border-left:medium none;border-bottom:1pt solid windowtext;border-right:1pt solid windowtext;height:43px; padding-left:1pt; padding-right:1pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='margin-left:0pt;text-indent:59pt;layout-grid-mode:char'><b><span lang=EN-US style='font-size:8pt;color:black'>&nbsp;</span></b></p>
  <p class=MsoNormal style='margin-left:0pt;text-indent:58.85pt;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10pt;color:black'>
  <fmt:formatDate value="${movClassCarPermitPrint.movementDate02}" pattern="dd/MM/yyyy" /></span></b></p>
  <p class=MsoNormal style='margin-left:0pt;text-indent:70.55pt;layout-grid-mode:char'><span lang=EN-US style='font-size:6pt;letter-spacing:0pt'>&nbsp;</span></p>
  </td>
  <td style='vertical-align: top; width: 223px; border-top:medium none;border-left:medium none;border-bottom:1pt solid windowtext;border-right:1pt solid windowtext;height:43px; padding-left:1pt; padding-right:1pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='margin-left:0pt;text-indent:58.45pt;layout-grid-mode:char'><b><span lang=EN-US style='font-size:8pt;color:black'>&nbsp;</span></b></p>
  <p class=MsoNormal style='text-indent:58.85pt;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10pt;color:black'>
  <fmt:formatDate value="${movClassCarPermitPrint.movementDate03}" pattern="dd/MM/yyyy" /></span></b></p>
  <p class=MsoNormal style='margin-left:0pt;layout-grid-mode:char'><span lang=EN-US style='font-size:6pt;letter-spacing:0pt'>&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td style='vertical-align: top; width: 223px; border-left:1pt solid windowtext; border-right:1pt solid windowtext; border-bottom:1pt solid windowtext;border-top:medium none;height:43px; padding-left:1pt; padding-right:1pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><b><span lang=EN-US style='font-size:8pt;color:black'>&nbsp;</span></b></p>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10pt;color:black'>
  &nbsp;<fmt:formatDate value="${movClassCarPermitPrint.movementDate04}" pattern="dd/MM/yyyy" />&nbsp;</span></b></p>
  <p class=MsoNormal style='margin-left:0pt;layout-grid-mode:char'><span lang=EN-US style='font-size:6pt;letter-spacing:0pt'>&nbsp;</span></p>
  </td>
  <td  style='vertical-align: top; width: 223px; border-top:medium none;border-left:medium none;border-bottom:1pt solid windowtext;border-right:1pt solid windowtext;height:43px; padding-left:1pt; padding-right:1pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='margin-left:0pt;layout-grid-mode:char'><b><span lang=EN-US style='font-size:8pt;color:black'>&nbsp;</span></b></p>
  <p class=MsoNormal style='margin-left:0pt;text-indent:58.85pt;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10pt;color:black'>
  <fmt:formatDate value="${movClassCarPermitPrint.movementDate05}" pattern="dd/MM/yyyy" /></span></b></p>
  <p class=MsoNormal style='margin-left:0pt;layout-grid-mode:char'><span lang=EN-US style='font-size:10pt;letter-spacing:0pt'>&nbsp;</span><span style='font-size:6pt;letter-spacing:0pt'>&nbsp;&nbsp; </span></p>
  </td>
  <td style='vertical-align: top; width: 223px; border-top:medium none;border-left:medium none;border-bottom:1pt solid windowtext;border-right:1pt solid windowtext;height:43px; padding-left:1pt; padding-right:1pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='margin-left:0pt;layout-grid-mode:char'><b><span lang=EN-US style='font-size:8pt;color:black'>&nbsp;</span></b></p>
  <p class=MsoNormal style='margin-left:0pt;text-indent:58.85pt;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10pt;color:black'>
  <fmt:formatDate value="${movClassCarPermitPrint.movementDate06}" pattern="dd/MM/yyyy" /></span></b></p>
  <p class=MsoNormal style='margin-left:0pt;layout-grid-mode:char'><span lang=EN-US style='font-size:6pt;letter-spacing:0pt'>&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td  style='vertical-align: top; width: 223px; border-left:1pt solid windowtext; border-right:1pt solid windowtext; border-bottom:1pt solid windowtext;border-top:medium none;height:43px; padding-left:1pt; padding-right:1pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><b><span lang=EN-US style='font-size:8pt;color:black'>&nbsp;</span></b></p>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10pt;color:black'>
  &nbsp;<fmt:formatDate value="${movClassCarPermitPrint.movementDate07}" pattern="dd/MM/yyyy" />&nbsp;</span></b></p>
  <p class=MsoNormal style='margin-left:0pt;layout-grid-mode:char'><span lang=EN-US style='font-size:6pt;letter-spacing:0pt'>&nbsp;</span></p>
  </td>
  <td  style='vertical-align: top; width: 223px; border-top:medium none;border-left:medium none;border-bottom:1pt solid windowtext;border-right:1pt solid windowtext;height:43px; padding-left:1pt; padding-right:1pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='margin-left:0pt;layout-grid-mode:char'><b><span lang=EN-US style='font-size:8pt;color:black'>&nbsp;</span></b></p>
  <p class=MsoNormal style='margin-left:0pt;text-indent:58.65pt;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10pt;color:black'>
  <fmt:formatDate value="${movClassCarPermitPrint.movementDate08}" pattern="dd/MM/yyyy" /></span></b></p>
  <p class=MsoNormal style='margin-left:0pt;layout-grid-mode:char'><span lang=EN-US style='font-size:6pt;letter-spacing:0pt'>&nbsp;</span></p>
  </td>
  <td style='vertical-align: top; width: 223px; border-top:medium none;border-left:medium none;border-bottom:1pt solid windowtext;border-right:1pt solid windowtext;height:43px; padding-left:1pt; padding-right:1pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='margin-left:0pt;text-indent:59pt;layout-grid-mode:char'><b><span lang=EN-US style='font-size:8pt;color:black'>&nbsp;</span></b></p>
  <p class=MsoNormal style='margin-left:0pt;text-indent:58.85pt;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10pt;color:black'>
  <fmt:formatDate value="${movClassCarPermitPrint.movementDate09}" pattern="dd/MM/yyyy" /></span></b></p>
  <p class=MsoNormal style='margin-left:0pt;text-indent:70.55pt;layout-grid-mode:char'><span lang=EN-US style='font-size:6pt;letter-spacing:0pt'>&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td  style='vertical-align: top; width: 223px; border-left:1pt solid windowtext; border-right:1pt solid windowtext; border-bottom:1pt solid windowtext;border-top:medium none;height:43px; padding-left:1pt; padding-right:1pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><b><span lang=EN-US style='font-size:8pt;color:black'>&nbsp;</span></b></p>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10pt;color:black'>
  &nbsp;<fmt:formatDate value="${movClassCarPermitPrint.movementDate10}" pattern="dd/MM/yyyy" />&nbsp;</span></b></p>
  <p class=MsoNormal style='margin-left:0pt;layout-grid-mode:char'><span lang=EN-US style='font-size:6pt;letter-spacing:0pt'>&nbsp;</span></p>
  </td>
  <td  style='vertical-align: top; width: 223px; border-top:medium none;border-left:medium none;border-bottom:1pt solid windowtext;border-right:1pt solid windowtext;height:43px; padding-left:1pt; padding-right:1pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='margin-left:0pt;text-indent:59pt;layout-grid-mode:char'><b><span lang=EN-US style='font-size:8pt;color:black'>&nbsp;</span></b></p>
  <p class=MsoNormal style='margin-left:0pt;text-indent:58.85pt;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10pt;color:black'>
  <fmt:formatDate value="${movClassCarPermitPrint.movementDate11}" pattern="dd/MM/yyyy" /></span></b></p>
  <p class=MsoNormal style='margin-left:0pt;text-indent:70.55pt;layout-grid-mode:char'><span lang=EN-US style='font-size:6pt;letter-spacing:0pt'>&nbsp;</span></p>
  </td>
  <td style='vertical-align: top; width: 223px; border-top:medium none;border-left:medium none;border-bottom:1pt solid windowtext;border-right:1pt solid windowtext;height:43px; padding-left:1pt; padding-right:1pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='margin-left:0pt;text-indent:59pt;layout-grid-mode:char'><b><span lang=EN-US style='font-size:8pt;color:black'>&nbsp;</span></b></p>
  <p class=MsoNormal style='margin-left:0pt;text-indent:58.85pt;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10pt;color:black'>
  <fmt:formatDate value="${movClassCarPermitPrint.movementDate12}" pattern="dd/MM/yyyy" /></span></b></p>
  <p class=MsoNormal style='margin-left:0pt;text-indent:70.55pt;layout-grid-mode:char'><span lang=EN-US style='font-size:6pt;letter-spacing:0pt'>&nbsp;</span></p>
  </td>
 </tr>
 
  </table>
   </td>
 <td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td>
 </tr>
  
 <tr>
  <td style='vertical-align: top; height: 36px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
 <table style="border-collapse: collapse; border-spacing: 0px; border-color: #111111; width: 670px; height: 42px;" id="AutoNumber1">
  <tr style="display: none;"><th></th><th></th><th></th><th></th><th></th><th></th><th></th></tr>
   <tr>
	  <td colspan=5 style="vertical-align: top;"><p class=MsoNormal style='margin-left:0pt;layout-grid-mode:char'>&nbsp;</p></td>
	  <td style="display: none"></td><td style="display: none"></td>
   </tr>
   <tr>
     <td style="width: 136px; height: 14px; vertical-align: middle;"><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU;letter-spacing:0pt'>此許可證由</span></td>
     <td style="width: 97px; height: 14px; vertical-align: middle;"></td>
     <td style="width: 14px; height: 14px; vertical-align: middle;"><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU;letter-spacing:0pt'>至</span><span lang=EN-US style='font-size:10pt;letter-spacing:0pt'> </span></td>
     <td style="width: 94px; height: 14px; vertical-align: middle;"></td>
     <td style="width: 298px; height: 14px; vertical-align: middle;"><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU;letter-spacing:0pt'>有效，並須受背頁所列明的條件限制。</span></td>
     <td style="display: none"></td><td style="display: none"></td>
   </tr>
   <tr>
     <td style="width: 136px; height: 22px; vertical-align: middle;"><span lang=EN-US style='font-size:10pt'>The permit is valid from</span></td>
     <td style="width: 97px; height: 22px; text-align: center; vertical-align: middle;">
     <p class=MsoNormal style='margin-left:05pt;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10pt;color:black'>
  <fmt:formatDate value="${movClassCarPermitPrint.startDate}" pattern="dd/MM/yyyy" /></span></b></p>
</td>
     <td style="width: 14px; height: 22px; vertical-align: middle;"><span lang=EN-US style='font-size:10pt'>to</span></td>
     <td style="width: 94px; height: 22px; text-align: center; vertical-align: middle;">
     <p class=MsoNormal style='margin-left:0pt;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10pt;color:black'>
  <fmt:formatDate value="${movClassCarPermitPrint.uptoDate}" pattern="dd/MM/yyyy" /></span></b></p></td>
     <td style="width: 298px; height: 22px; vertical-align: middle;"><span lang=EN-US style='font-size:10pt'>and is subject to the conditions
  stipulated overleaf.</span></td>
     <td style="display: none"></td><td style="display: none"></td>
   </tr>
 </table>
  </td>
 <td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td>
 </tr>

 <tr>
  <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
 <table style="border-collapse: collapse; border-spacing: 0px; border-color: #111111; width: 670px; height: 46px;" id="AutoNumber2">
   <tr>
     <td style="width: 77px; vertical-align: middle; height: 14px;"><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU;letter-spacing:1.5pt'>發出日期</span></td>
     <td style="width: 160px; vertical-align: middle; height: 14px;">&nbsp;</td>
     <td style="width: 183px; vertical-align: middle; height: 14px;">&nbsp;</td>
     <td style="width: 250px; vertical-align: middle; height: 14px;">
     <p style='text-align: center;'><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU;letter-spacing:0pt'>運輸署署長發出</span></p></td>
   </tr>
   <tr>
     <td style="width: 77px; vertical-align: middle; height: 22px;"><span lang=EN-US style='font-size:10pt'>Date of issue:</span></td>
     <td style="width: 160px; text-align: center; vertical-align: middle; height: 22px;">
      <p class=MsoNormal style='margin-left:0pt; text-align: left;'><b><span lang=EN-US style='font-size:10pt;color:black'>
  <fmt:formatDate value="${movClassCarPermitPrint.issueDate}" pattern="dd/MM/yyyy" /></span></b></p></td>
     <td style="width: 183px; vertical-align: middle; height: 22px;">&nbsp;</td>
     <td style="width: 250px; vertical-align: middle; height: 22px;"> <p style='text-align: center;'>&nbsp;</p> </td>
   </tr>
   
    <tr>
     <td style="width: 77px; vertical-align: middle; height: 14px;"><span lang=ZH-TW style='font-size:10pt;font-family:PMingLiU;letter-spacing:1.5pt'>檔案記錄</span></td>
     <td style="width: 160px; vertical-align: middle; height: 14px;">&nbsp;</td>
     <td style="width: 183px; vertical-align: middle; height: 14px;">&nbsp;</td>
     <td style="width: 250px; vertical-align: middle; height: 14px;">
     <p style='text-align: center;'><span lang=EN-US style='font-size:10pt'>Issued by Commissioner for Transport</span></p></td>
   </tr>
   <tr>
     <td style="width: 77px; vertical-align: middle; height: 22px;"><span lang=EN-US style='font-size:10pt'>Transaction:</span></td>
     <td style="width: 160px; text-align: center; vertical-align: middle; height: 22px;">
      <p class=MsoNormal style='margin-left:0pt; text-align: left;'><b><span lang=EN-US style='font-size:10pt;color:black'><c:out value="${movClassCarPermitPrint.txnNo}"/></span></b></p>
</td>
     <td style="width: 183px; vertical-align: middle; height: 22px;">&nbsp;</td>
     <td style="width: 250px; vertical-align: middle; height: 22px;">
     <p class=MsoNormal style='margin-left:0pt;text-indent:10pt;layout-grid-mode:char; text-align: right;'><span lang=EN-US style='font-size:10pt'>No.&nbsp;<b><span style='color:black'><c:out value="${movClassCarPermitPrint.permitNo}"/></span></b></span></p>
</td>
   </tr>
 </table>
  </td>
 </tr> 
</table>
</div>
<br><br><br>
<div class =page>
<table class=MsoNormalTable style='margin-left:0pt;border-collapse:collapse; border-spacing: 0px; margin: 0 auto;'>
    <THEAD style="display:table-header-group">
  <tr style="display: none;"><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th></tr>

	<TR><TD colspan=8>
	<table class=MsoNormalTable style='width:670; border-spacing: 0px; margin: 0 auto;'>
		<tr>
		<td><span lang=EN-US style='font-size:11pt'>Chassis</span></td><td> </td><td><span lang=EN-US style='font-size:11pt'>No</span></td><td><span lang=EN-US style='font-size:11pt'>.</span></td><td>&nbsp;</td>			 
		<td style='width: 140px;'><b><span lang=EN-US style='font-size:11pt;color:black'><c:out value="${movClassCarPermitPrint.chassisNoSplitA}"/></span></b></td><td>&nbsp;</td><td>&nbsp;</td>				
		<td><span lang=EN-US style='font-size:11pt'>Date</span></td><td>&nbsp;</td><td><span lang=EN-US style='font-size:11pt'>of</span></td><td>&nbsp;</td><td><span lang=EN-US style='font-size:11pt'>issue</span></td><td>&nbsp;</td>			  
		<td style='width: 70px;'><b><span lang=EN-US style='font-size:11pt;color:black'>
		<fmt:formatDate value="${movClassCarPermitPrint.issueDate}" pattern="dd/MM/yyyy" /></span></b></td><td>&nbsp;</td><td>&nbsp;</td>  		
		<td><span lang=EN-US style='font-size:11pt'>Transaction</span></td><td>&nbsp;</td>
		<td style='width: 80px;'><b><span style='font-size:11pt;color:black'><c:out value="${movClassCarPermitPrint.txnNo}"/></span></b></td>
		<td>&nbsp;</td><td>&nbsp;</td>
		<td><span lang=EN-US style='font-size:11pt'>No</span></td><td><span lang=EN-US style='font-size:11pt'>.</span></td><td>&nbsp;</td><td><b><span lang=EN-US style='font-size:11pt;color:black'><c:out value="${movClassCarPermitPrint.permitNo}"/></span></b></td><td>&nbsp;</td><td>&nbsp;</td>
		</tr>
		<c:if test="${!empty movClassCarPermitPrint.chassisNoSplitB && movClassCarPermitPrint.chassisNoSplitB != ''}">
			<tr><td colspan='5'>&nbsp;</td><td style='width: 155px;'><b><span lang=EN-US style='font-size:11pt;color:black'><c:out value="${movClassCarPermitPrint.chassisNoSplitB}"/></span></b></td><td colspan='22'>&nbsp;</td></tr>
		</c:if>
	</table>
	<p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=EN-US style='font-size:12pt'>&nbsp;</span></p>
	</TD>
	</TR>
</THEAD>

<tr>
  <td colspan=8 style='width: 667px; vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><span lang=ZH-TW style='font-size:11pt;font-family:PMingLiU'>許 可 證 條 件</span></p>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><span lang=EN-US style='font-size:11pt'>Conditions of Permit</span></p>
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=EN-US style='font-size:11pt;color:black'>&nbsp;</span></p>
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=ZH-TW style='font-size:8pt;font-family:PMingLiU;color:black'>&nbsp;</span></p>
  </td>
</tr>

<TBODY>
<c:forEach var="optMandatoryCondValue" items="${optMandatoryCondValues}">
 <tr>
  <td style='width: 30px; vertical-align: top; padding:0cm 0pt 0cm 0pt'>
  <p class=MsoNormal style='text-align:left;layout-grid-mode:char'><span lang=EN-US style='font-size:11pt;color:black'>
  <c:out value="${countNo}" />
  <c:set var="countNo" value="${countNo+1}" />.</span></p>
  </td>
  <td colspan=7 style='width: 640px; vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=ZH-TW style='font-size:11pt;font-family:PMingLiU;color:black'>
  <tdcustom:ReplaceEnter value="${optMandatoryCondValue.interpretationChi}"/></span></p>
  </td>
 </tr>
 <tr>
  <td style='width: 30px; vertical-align: top; padding:0cm 0pt 0cm 0pt'>
  <p class=MsoNormal style='text-align:right;layout-grid-mode:char'><span lang=EN-US style='font-size:11pt;color:black'>&nbsp;</span></p>
  </td>
  <td colspan=7 style='width: 640px; vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=EN-US style='font-size:11pt;color:black'>
  <tdcustom:ReplaceEnter value="${optMandatoryCondValue.interpretationEng}"/></span></p>
  </td>
 </tr>
 
 <tr>
  <td style='width: 30px; vertical-align: top; padding:0cm 0pt 0cm 0pt'>
  <p class=MsoNormal style='text-align:right;layout-grid-mode:char'><span lang=EN-US style='font-size:11pt;color:black'>&nbsp;</span></p>
  </td>
  <td colspan=7 style='width: 640px; vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=EN-US style='font-size:10pt;color:black'>&nbsp;</span></p>
  </td>
 </tr>
 </c:forEach>
 
 <c:forEach var="vehPermitOptCondValue" items="${permitConditionValues}">
 <tr>
  <td style='width: 30px; vertical-align: top; padding:0cm 0pt 0cm 0pt'>
  <p class=MsoNormal style='text-align:left;layout-grid-mode:char'><span lang=EN-US style='font-size:11pt;color:black'>
  <c:out value="${countNo}" />
  <c:set var="countNo" value="${countNo+1}" />.</span></p>
  </td>
  <td colspan=7 style='width: 640px; vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=ZH-TW style='font-size:11pt;font-family:PMingLiU;color:black'>
  <tdcustom:ReplaceEnter value="${vehPermitOptCondValue.conditionChi}"/></span></p>
  </td>
 </tr>
 <tr>
  <td style='width: 30px; vertical-align: top; padding:0cm 0pt 0cm 0pt'>
  <p class=MsoNormal style='text-align:right;layout-grid-mode:char'><span lang=EN-US style='font-size:11pt;color:black'>&nbsp;</span></p>
  </td>
  <td colspan=7 style='width: 640px; vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=EN-US style='font-size:11pt;color:black'>
  <tdcustom:ReplaceEnter value="${vehPermitOptCondValue.conditionEng}"/></span></p>
  </td>
 </tr>
 <tr>
  <td style='width: 30px; vertical-align: top; 0padding:0cm 0pt 0cm 0pt'>
  <p class=MsoNormal style='text-align:right;layout-grid-mode:char'><span lang=EN-US style='font-size:11pt;color:black'>&nbsp;</span></p>
  </td>
  <td colspan=7 style='width: 640px; vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=EN-US style='font-size:11pt;color:black'>&nbsp;</span></p>
  </td>
 </tr>
  </c:forEach>
  </TBODY>
</table>
</div>
</body>
</html>
