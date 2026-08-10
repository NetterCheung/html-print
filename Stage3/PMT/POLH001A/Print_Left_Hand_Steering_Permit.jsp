<!DOCTYPE html>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="tdcustom"%>
<%@ page import="hk.gov.valid.util.RequestConstant"%>
<%@ page import="hk.gov.valid.util.CodeTableConstant"%>

<html lang="en">

<head>
<!-- saved from url=(0014)about:internet -->
<meta charset="UTF-8">
<meta name="header" content="">				<!--页眉(默认值:空)-->
<meta name="footer" content="">				<!--页脚(默认值:空)-->
<meta name="margin-top" content="0">			<!--上边距(默认值:19.05)-->
<meta name="margin-bottom" content="15">		<!--下边距(默认值:19.05)-->
<meta name="margin-left" content="0">			<!--左边距(默认值:19.05)-->
<meta name="margin-right" content="0">			<!--右边距(默认值:19.05)-->
<meta name="copies" content="1">				<!--打印份数(默认值:1)-->
<meta name="papersize" content="A5 Plus">		<!--纸张大小(默认值:A4,注意A5请用"A5 Plus")-->
<meta name="orientation" content="0">			<!--打印方向(默认值:0  参数说明:0-纵向 ; 1-横向)-->
<meta name="duplex" content="0">				<!--是否双面(默认值:0 参数说明:0-无 ; 1- 短边翻转; 2-长边翻转)-->

<title>香港特別行政區政府運輸署</title>

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
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";}
h1
	{margin:0cm;
	margin-bottom:.0001pt;
	page-break-after:avoid;
	layout-grid-mode:char;
	font-size:10.0pt;
	font-family:"Times New Roman";}
p.MsoHeader, li.MsoHeader, div.MsoHeader
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";}
p.MsoFooter, li.MsoFooter, div.MsoFooter
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";}
p.MsoBodyText, li.MsoBodyText, div.MsoBodyText
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:center;
	layout-grid-mode:char;
	font-size:12.0pt;
	font-family:"Times New Roman";
	font-weight:bold;}
 /* Page Definitions */
 @page Section1
	{size:421.2pt 595.45pt;
	margin:14.4pt 28.8pt 14.4pt 28.8pt;
	layout-grid:18.0pt;}
div.Section1
	{page:Section1;}
 /* List Definitions */
 ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
	
div.page
	{page-break-before:always;margin-left:8pt; margin-top:5pt;}
div.firstpage
	{margin-left:8pt; margin-top:5pt;}
-->
.win10_bold {
 font-family: "MingLiU_HKSCS";
 font-weight: bold;
 -webkit-text-stroke: 0.3px;
}
p {
 margin-top: auto;
 margin-bottom: auto;
}
</style>

</head>

<c:set var="PLH_PRINT_VALUE_OBJECT"><%=RequestConstant.PAGE_VALUE%></c:set>
<c:set var="leftHandPermitPrintValue" value="${requestScope[PLH_PRINT_VALUE_OBJECT]}"/>
<c:set var="optMandatoryCondValues" value="${leftHandPermitPrintValue.leftOptMandOptCondvalues}" scope="request"/>
<c:set var="permitConditionValues" value="${leftHandPermitPrintValue.leftHandOptCondValues}" scope="request"/>
<c:set var="PERMITDUP"><%=RequestConstant.PERMIT_PRINT_STATUS_DUPLICATE%></c:set>

<c:set var="pageContentHeight" value="670" />
<c:set var="wordCount" value="50" />
<c:set var="counts" value="2" />

<body>
<c:set var="PERMITDUP"><%=RequestConstant.PERMIT_PRINT_STATUS_DUPLICATE%></c:set>
<div class=firstpage style="width: 793px">

<table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 495px; height: 192px;' >
 <tr style="display: none;"><th>col1</th><th>col2</th><th>col3</th></tr>
 <tr>
  <td colspan=3 style='vertical-align: top; width:495px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height: 35px'>
  <p class=MsoNormal style='text-align:right;margin-top: 0.1cm;'><span lang=EN-US
  style='font-size:10.0pt'>No. <b><span style='color:black'><c:out value=
  "${leftHandPermitPrintValue.permitTypeNo}"/></span></b><span
  style='color:black'>&nbsp; </span></span></p>
  <p class=MsoNormal style='text-align:center'><span lang=EN-US
  style='font-size:10.0pt'>&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td colspan=3 style='vertical-align: top; width:495px; padding-left:5.4pt;  padding-top:0cm; padding-bottom:0cm; height: 157px' >
  <p class=MsoNormal style='text-align:center;layout-grid-mode:
  char'><span class="win10_bold"><span lang=EN-US style='font-size:9.0pt;font-family:MingLiU_HKSCS;
  letter-spacing:1.0pt'>&nbsp;</span><span lang=ZH-TW style='font-size:9.0pt;font-family:MingLiU_HKSCS;
  letter-spacing:1.5pt'>香港特別行政區政府運輸署</span></span></p>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:
  char'><b><span lang=EN-US style='font-size:9.0pt'>TRANSPORT DEPARTMENT</span></b></p>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:
  char'><b><span lang=EN-US style='font-size:9.0pt'>THE GOVERNMENT OF THE </span></b><b><span
   lang=EN-US style='font-size:9.0pt'>HONG KONG</span></b><b><span lang=EN-US
  style='font-size:9.0pt'> SPECIAL ADMINISTRATIVE REGION</span></b></p>
  <p class=MsoNormal style='layout-grid-mode:char;line-height:1pt;'><span lang=EN-US
  style='font-size:1.0pt'>&nbsp;</span></p>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:
  char'><span class="win10_bold"><span lang=ZH-TW style='font-size:8.0pt;font-family:MingLiU_HKSCS;
  letter-spacing:1.5pt'>香港法例第三百七十四章道路交通</span></span><span class="win10_bold"><span lang=EN-US
  style='font-size:8.0pt;letter-spacing:1.0pt'>(</span></span><b><span lang=ZH-TW
  style='font-size:8.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.0pt'>車輛構造及保養</span></b><b><span
  lang=EN-US style='font-size:8.0pt;letter-spacing:1.0pt'>)</span></b><span class="win10_bold"><span
  lang=ZH-TW style='font-size:8.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.0pt'>規例</span></span></p>
  <p class=MsoBodyText><span lang=EN-US style='font-size:8.0pt'>ROAD TRAFFIC
  (CONSTRUCTION & MAINTENANCE OF VEHICLES) REGULATIONS (CAP.374)</span></p>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:
  char'><b><span lang=EN-US style='font-size:12.0pt;font-family:MingLiU_HKSCS;
  letter-spacing:1.0pt'>&nbsp;</span></b></p>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:
  char;margin-top: -0.3cm'><span class="win10_bold"><span lang=ZH-TW style='font-size:10.0pt;font-family:MingLiU_HKSCS;
  letter-spacing:1.5pt'>許可證
  
  </span></span></p>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:
  char'><b>
  <span lang=EN-US style='font-size:10.0pt;letter-spacing:1.0pt'>
   PERMIT</span></b></p>
  
  <p class=MsoNormal style='text-align:center;layout-grid-mode:
  char'>&nbsp;</p>
  
  <p class=MsoNormal style='margin-left:22.0pt;text-align:justify;text-justify:
  distribute-all-lines;layout-grid-mode:char'><span lang=ZH-TW
  style='font-size:9.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.0pt'>根據上述規例第&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;條的規定，授權</span></p>
  <p class=MsoNormal style='margin-left:22.0pt;text-align:justify;text-justify:
  distribute-all-lines;layout-grid-mode:char'><span lang=EN-US
  style='font-size:9.0pt'>In accordance with the provisions of regulation&nbsp;&nbsp;&nbsp;<b>26(5)</b>&nbsp;&nbsp;&nbsp;  of the above mentioned Regulations,</span></p>
    </td>
 </tr>
</table>

<p class=MsoNormal style='layout-grid-mode:char; line-height:1pt;'><span lang=EN-US style='font-size:1.0pt'>&nbsp;</span></p>

<table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 493px'>
 <tr style="display: none;"><th>col1</th><th>col2</th></tr>
 <tr>
  <td colspan="2" style='vertical-align: top; width:493px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height:16px'>
  	<p class=MsoNormal ><span lang=ZH-TW style='font-size:9.0pt;font-family:MingLiU_HKSCS;letter-spacing:2.0pt'>(註冊車主姓名)</span><span lang=EN-US style='font-family:Times New Roman;font-size:9.0pt'>&nbsp;(Name of Registered Owner)</span></p>
  </td>  
 </tr>
 <tr>
 <td colspan="2" style='vertical-align: top; width:493px; padding-left:5.4pt; padding-top:0cm; padding-bottom:0cm; height:77px'>
  	<b>
	  <span style='font-size:10.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.0pt;color:black;word-break:normal;word-wrap:normal'>
	      <c:out value="${leftHandPermitPrintValue.nameChi}"/><br>
	  </span>
	</b>
     <b>
	   <span lang=EN-US style='font-size:10.0pt;letter-spacing:0.1pt;font-family:Courier New;color:black;word-break:normal;word-wrap:normal'>
          <c:out value="${leftHandPermitPrintValue.nameEng}"/>
		</span>
	 </b>
  </td>  
 </tr>
</table>

<p class=MsoNormal style='layout-grid-mode:char;line-height: 1pt;'><span lang=EN-US style='font-size:1.0pt'>&nbsp;</span></p>

<table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 499px; height: 60px' >
 <tr>
  <td style='vertical-align: top; width:65px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height: 60px' >
  	<p class=MsoNormal ><span lang=ZH-TW style='font-size:9.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.0pt'>地址</span></p>
  	<p class=MsoNormal ><span lang=EN-US style='font-size:9.0pt'>of (Address)</span></p>
  </td>
  <td  style='text-align: left; vertical-align: top; width:434px; padding-top:0cm; padding-bottom:0cm; height: 60px'>
	<p class=MsoNormal style='layout-grid-mode:char'><b><span lang=EN-US style='font-family:Courier New;font-size:8pt;color:black'><c:out value="${leftHandPermitPrintValue.address1}" /></span></b></p>
	<p class=MsoNormal style='layout-grid-mode:char'><b><span lang=EN-US style='font-family:Courier New;font-size:8pt;color:black'><c:out value="${leftHandPermitPrintValue.address2}" /></span></b></p>
	<p class=MsoNormal style='layout-grid-mode:char'><b><span lang=EN-US style='font-family:Courier New;font-size:8pt;color:black'><c:out value="${leftHandPermitPrintValue.address3}" /></span></b></p>
	<p class=MsoNormal style='layout-grid-mode:char'><b><span lang=EN-US style='font-family:Courier New;font-size:8pt;color:black'><c:out value="${leftHandPermitPrintValue.address4}" /></span></b></p>
  </td>
 </tr>
</table>

<p class=MsoNormal style='layout-grid-mode:char;line-height: 3pt;'><span lang=EN-US style='font-size:1.0pt'>&nbsp;</span></p>

<table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 491px' >
 <tr>
  <td style='vertical-align: top; width:477px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm' >
  <p class=MsoNormal style='layout-grid-mode:char'>
  <span lang=ZH-TW
  style='font-size:9.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.6pt'>使用或致使獲他授權的其他人駕駛或使用</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  layout-grid-mode:char'><span lang=EN-US style='font-size:9.0pt'>is hereby authorised to use or cause to be driven or used vehicle</span></p>
  </td>
 </tr>

</table>

<!--<p class=MsoNormal style='layout-grid-mode:char'><span lang=EN-US style='font-size:7.0pt'>&nbsp;</span></p>-->

<table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 493px; height: 54px'>
 <tr>
  <td style='vertical-align: top; width:170px; padding-left:5.4pt; padding-top:0cm; padding-bottom:0cm; height: 16px'>
  <p class=MsoNormal >
  <span lang=ZH-TW style='font-size:9.0pt;font-family:
  MingLiU_HKSCS;letter-spacing:1.2pt'>車身底盤號碼為</span></p>
  </td>
  <td style='vertical-align: top; padding-left:5.4pt; padding-top:0cm; padding-bottom:0cm; width: 234px; height: 16px'>
  <p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;
  layout-grid-mode:char'><b><span lang=EN-US style='font-size:9.0pt;color:black;
  letter-spacing:3.0pt'>&nbsp;</span></b></p>
  </td>
   <td style='vertical-align: top; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; width: 47px; height: 16px'>
  <p class=MsoNormal >
  <span lang=ZH-TW style='font-size:9.0pt;font-family:
  MingLiU_HKSCS;letter-spacing:1.2pt'>的車輛</span></p>
  </td>
 </tr>
 <tr>
  <td style='vertical-align: top; width:170px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height: 16px'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  layout-grid-mode:char'>
  <span lang=EN-US style='font-size:9.0pt; letter-spacing:0'>with chassis no.</span></p>
  </td>
  <td colspan =2 style='vertical-align: top; width:262px; padding-left:20pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height: 16px'>
  	<p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'>
  		<b><span lang=EN-US style='font-size:10.0pt;color:black'><c:out value="${leftHandPermitPrintValue.chassisNo}"/></span></b>
	</p>
  </td>
 </tr>
  <tr>
   <td colspan =3 style='vertical-align: bottom; width:262px; padding-left:5.4pt;  padding-top:0cm; padding-bottom:0cm; height: 19px'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  layout-grid-mode:char'><b><span lang=EN-US style='font-size:10.0pt;
   color:black'>WITH LEFT HAND DRIVE</span></b></p>
  </td>
 </tr>
</table>

<p class=MsoNormal style='layout-grid-mode:char;line-height: 1pt;'><span lang=EN-US style='font-size:1.0pt'>&nbsp;</span></p>

<table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 492px'>
 <tr>
  <td colspan=2 style='vertical-align: top; width:134px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=ZH-TW
  style='font-size:9.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.0pt'>而其期間為由</span></p>
  </td>
  <td style='vertical-align: top; width:67px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=ZH-TW
  style='font-size:9.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.0pt'>至</span></p>
  </td>
  <td colspan=3 style='vertical-align: top; width:249px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:
  distribute-all-lines;layout-grid-mode:char'>
 <span lang=ZH-TW
  style='font-size:9.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.0pt'>(此證屆滿日期)有效，首尾兩天包括在內</span></p>
  </td>
 </tr>
 <tr>
  <td style='vertical-align: top; width:115px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=EN-US
  style='font-size:9.0pt'>for the period from</span></p>
  </td>
  <td colspan=2 style='vertical-align: top; width:86px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char'><b><span
   lang=EN-US style='font-size:10.0pt;color:black'>
  <fmt:formatDate value="${leftHandPermitPrintValue.startDate}" pattern="dd/MM/yyyy" /></span></b></p>
  </td>
  <td style='vertical-align: top; width:11px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=EN-US
  style='font-size:9.0pt'>to</span></p>
  </td>
  <td style='vertical-align: top; width:82px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char'><b><span
   lang=EN-US style='font-size:10.0pt;color:black'>
  <fmt:formatDate value="${leftHandPermitPrintValue.uptoDate}" pattern="dd/MM/yyyy" /></span></b></p>
  </td>
  <td style='vertical-align: top; width:128px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=EN-US
  style='font-size:9.0pt'>(date of expiry) inclusive.</span></p>
  </td>
 </tr>
 <tr style='height: 0px'>
  <td style='border:none; width:129px;'></td>
  <td style='border:none; width:19px;'></td>
  <td style='border:none; width:81px;'></td>
  <td style='border:none; width:25px;'></td>
  <td style='border:none; width:96px;'></td>
  <td style='border:none; width:142px;'></td>
 </tr>
</table>

<p class=MsoNormal style='layout-grid-mode:char;line-height: 1pt;'><span lang=EN-US style='font-size:1.0pt'>&nbsp;</span></p>

<table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 491px; height: 42px' >
 <tr>
  <td style='vertical-align: top; width:477px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height: 29px'>
  <p class=MsoNormal style='layout-grid-mode:char'>
  <span lang=ZH-TW
  style='font-size:9.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.6pt'>且須遵守後頁及夾附的條件</span></p>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  layout-grid-mode:char'><span lang=EN-US style='font-size:9.0pt'>and subject to the conditions stipulated overleaf and attached.</span></p>
  </td>
 </tr>
</table>

<p class=MsoNormal style='layout-grid-mode:char;line-height: 1pt;'><span lang=EN-US style='font-size:1.0pt'>&nbsp;</span></p>

<table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 493px'>
 <tr>
  <td style='vertical-align: top; width:140px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal ><span lang=ZH-TW style='font-size:9.0pt;font-family:
  MingLiU_HKSCS;letter-spacing:2.0pt'>許可證之屆滿日期︰</span></p>
  </td>
  <td style='vertical-align: top; width:325px; padding-left:10pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  
  <span
  style='font-size:10.0pt;font-family:MingLiU_HKSCS;
  letter-spacing:1.0pt'><c:out value="${COMMON_LEGAL_ENTITY_VALUE.nameChi}"/></span></td>
 </tr>
 <tr>
  <td style='vertical-align: top; width:140px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  layout-grid-mode:char'><span lang=EN-US style='font-size:9.0pt'>Permit Expires: </span></p>
  </td>
  <td style='vertical-align: top; width:325px; padding-left:10pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char'><b><span
   lang=EN-US style='font-size:10.0pt;color:black'>
        <fmt:formatDate value="${leftHandPermitPrintValue.expiresDate}" pattern="dd/MM/yyyy" /></span></b></p>
  </td>
 </tr>
</table>

<p class=MsoNormal style='layout-grid-mode:char;line-height: 1pt;'><span lang=EN-US style='font-size:1.0pt'>&nbsp;</span></p>

<table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 487px'>
 <tr>
  <td style='vertical-align: top; width:72px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  layout-grid-mode:char'><span lang=ZH-TW style='font-size:9.0pt;font-family:
  MingLiU_HKSCS;letter-spacing:1.5pt'>發出日期</span></p>
  </td>
  <td style='vertical-align: top; width:163px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  layout-grid-mode:char'><span lang=EN-US style='font-size:9.0pt'>&nbsp;</span></p>
  </td>
  <td style='vertical-align: top; width:210px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:
  char'><span lang=ZH-TW style='font-size:9.0pt;font-family:MingLiU_HKSCS;
  letter-spacing:1.0pt'>運輸署署長發出</span></p>
  </td>
 </tr>
 <tr>
  <td style='vertical-align: top; width:72px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  layout-grid-mode:char'><span lang=EN-US style='font-size:9.0pt'>Date of
  issue:</span></p>
  </td>
  <td style='vertical-align: top; width:163px; padding-left:0pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  layout-grid-mode:char'><b><span lang=EN-US style='font-size:10.0pt;
   color:black'>
  <fmt:formatDate value="${leftHandPermitPrintValue.issueDate}" pattern="dd/MM/yyyy" /></span></b></p>
  </td>
  <td style='vertical-align: top; width:210px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:
  char'><span lang=EN-US style='font-size:9.0pt'>Issued by Commissioner for
  Transport</span></p>
  </td>
 </tr>
 <tr>
  <td style='vertical-align: top; width:72px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  layout-grid-mode:char;line-height: 1pt;'><span lang=EN-US style='font-size:1.0pt'>&nbsp;</span></p>
  </td>
  <td style='vertical-align: top; width:163px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  layout-grid-mode:char;line-height: 1pt;'><span lang=EN-US style='font-size:1.0pt'>&nbsp;</span></p>
  </td>
  <td style='vertical-align: top; width:210px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:
  char;line-height: 1pt;'><span lang=EN-US style='font-size:1.0pt'>&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td style='vertical-align: top; width:72px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  layout-grid-mode:char'><span lang=ZH-TW style='font-size:9.0pt;font-family:
  MingLiU_HKSCS;letter-spacing:1.5pt'>檔案記錄</span></p>
  </td>
  <td style='vertical-align: top; width:163px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  layout-grid-mode:char'><span lang=EN-US style='font-size:9.0pt'>&nbsp;</span></p>
  </td>
  <td style='vertical-align: top; width:210px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:
  char'><span lang=EN-US style='font-size:9.0pt'>&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td style='vertical-align: top; width:72px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  layout-grid-mode:char'><span lang=EN-US style='font-size:9.0pt'>Transaction:</span></p>
  </td>
  <td style='vertical-align: top; width:163px; padding-left:0pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;
  layout-grid-mode:char'><b><span lang=EN-US style='font-size:10.0pt;
   color:black'><c:out value="${leftHandPermitPrintValue.txnNo}"/></span></b></p>
  </td>
  <td style='vertical-align: top; width:210px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:center;layout-grid-mode:
  char'><span lang=EN-US style='font-size:9.0pt'>&nbsp;</span></p>
  </td>
 </tr>
</table>

<p class=MsoNormal style='layout-grid-mode:char;line-height: 1pt;'><span lang=EN-US style='font-size:1.0pt'>&nbsp;</span></p>

<table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 485px'>
 <tr>
   <td style='vertical-align: top; width:261px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm' >
  <p class=MsoNormal style='text-align:left;layout-grid-mode:char'><span
  lang=EN-US style='font-size:10.0pt'>LEFT HAND STEERING PERMIT</span></p>
  </td>

  <td style='vertical-align: top; width:224px;'  >
  <p class=MsoNormal style='text-align:right;layout-grid-mode:char'><span
  lang=EN-US style='font-size:10.0pt'>No. <b><span style='color:black'><c:out value=
  "${leftHandPermitPrintValue.permitTypeNo}"/></span></b></span></p>
  </td>
 </tr>
</table>
</div>

<div class = "page">
<table class=MsoNormalTable style='margin-left:0pt;border-collapse:collapse; border-spacing: 0px; width: 499px'>
	<THEAD style="display:table-header-group">
		<tr style="transform: translateY(0.1cm);">
			<td style='vertical-align: top; width:499px' colspan="2">
				<table class=MsoNormalTable style='border-collapse:collapse; border-spacing: 0px; width:499px; height:3px'>
				 <tr>
				  <td style='vertical-align: top; width:100px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height:3px'>
				  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><span lang=EN-US style='font-size:8.0pt'>Chassis  No. </span></p>
				  </td>
				  <td style='vertical-align: top; width:116px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height:3px'  >
				  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><span lang=EN-US style='font-size:8.0pt'>Date of issue</span></p>
				  </td>
				  <td style='vertical-align: top; width:101px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height:3px' >
				  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><span lang=EN-US style='font-size:8.0pt'>Transaction</span></p>
				  </td>
				  <td style='vertical-align: top; width:90px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height:3px' >
				  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><span lang=EN-US style='font-size:8.0pt'>No. </span></p>
				  </td>
				 </tr>
				 <tr>
				  <td style='vertical-align: top; width:100px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height:1px'  >
				  <p class=MsoNormal style='text-align:left;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10.0pt;color:black'>
					<script>
						var chassisNo = "<c:out value="${leftHandPermitPrintValue.chassisNo}"/>";
						if (chassisNo.length > 13)
						{
							chassisNo = chassisNo.substring(0,13) + "<br>" + chassisNo.substring(13,chassisNo.length);
						}
						document.write(chassisNo);
					</script>		  
				  </span></b></p>
				  </td>
				  <td style='vertical-align: top; width:116px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height:1px'  >
				  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10.0pt;color:black'>
				  <fmt:formatDate value='${leftHandPermitPrintValue.issueDate}' pattern='dd/MM/yyyy' /> </span></b></p>
				  </td>
				  <td style='vertical-align: top; width:101px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height:1px'>
				  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10.0pt;color:black'><c:out value='${leftHandPermitPrintValue.txnNo}'/></span></b></p>
				  </td>
				  <td style='vertical-align: top; width:90px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm; height:1px' >
				  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'><b><span lang=EN-US style='font-size:10.0pt;color:black'><c:out value='${leftHandPermitPrintValue.permitTypeNo}'/></span></b></p>
				  </td>
				 </tr>
				</table>
				<p class=MsoNormal style='layout-grid-mode:char'><span lang=EN-US style='font-size:10.0pt'>&nbsp;</span></p>
			</td>
		</tr>
	</THEAD>
	
<TBODY>	
 <tr>
  <td style='vertical-align: top; width:497px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm' colspan="2">
  	<p class=MsoNormal style='text-align:center;layout-grid-mode:char'>
  		<span lang=ZH-TW style='font-size:10.0pt;font-family:MingLiU_HKSCS'>許</span><span lang=ZH-TW style='font-size:10.0pt'> </span>
  		<span lang=ZH-TW style='font-size:10.0pt;font-family:MingLiU_HKSCS'>可</span><span lang=ZH-TW style='font-size:10.0pt'> </span>
  		<span lang=ZH-TW style='font-size:10.0pt;font-family:MingLiU_HKSCS'>證</span><span lang=ZH-TW style='font-size:10.0pt'> </span>
  		<span lang=ZH-TW style='font-size:10.0pt;font-family:MingLiU_HKSCS'>條</span><span lang=ZH-TW style='font-size:10.0pt'> </span>
  		<span lang=ZH-TW style='font-size:10.0pt;font-family:MingLiU_HKSCS'>件</span>
  	</p>
	<p class=MsoNormal style='text-align:center;line-height:200%;layout-grid-mode:char;word-break:break-all'>
		<span lang=EN-US style='font-size:10.0pt;line-height:200%'>Conditions of Permit</span></p>
	<p class=MsoNormal style='layout-grid-mode:char;line-height: 1pt;'><span lang=EN-US style='font-size:1.0pt'>&nbsp;</span></p>
  </td>
 </tr>

 <tr>
  <td style='vertical-align: top; width:13px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:right;layout-grid-mode:char'><span
  lang=EN-US style='font-size:8.0pt;color:black'>1.</span></p>
  </td>
  <td style='vertical-align: top; width:482px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=ZH-TW
  style='font-size:8.0pt;font-family:MingLiU_HKSCS;color:black'>此許可證只可行駛以下路線: -</span></p>
  <p class=MsoNormal style='layout-grid-mode:char;line-height: 2pt;'><span lang=EN-US
  style='font-size:8.0pt;color:black'>This permit shall be valid for use during the following specified route(s): -</span></p>
  <p class=MsoNormal style='layout-grid-mode:char;line-height: 1pt;'><span lang=EN-US
  style='font-size:1.0pt;color:black'>&nbsp;</span></p>
  
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=ZH-TW style='font-size:8.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.5pt'>路線一</span>
  <span lang=EN-US style='font-size:8.0pt;letter-spacing:1.5pt'> / </span><span lang=EN-US style='font-size:8.0pt'>Route 1</span></p>

  <p class=MsoNormal style='layout-grid-mode:char'><span lang=EN-US style='font-size:10.0pt;color:black'><b>
  <tdcustom:ReplaceEnter value="${leftHandPermitPrintValue.route1}"/></b></span></p>
  
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=EN-US style='font-size:8.0pt;color:black'>&nbsp;</span></p>
  
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=ZH-TW style='font-size:8.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.5pt'>其他路線</span>
  <span lang=EN-US style='font-size:8.0pt;letter-spacing:1.5pt'> /</span><span lang=EN-US style='font-size:8.0pt'> Other Route(s)</span></p>
  
  <p class=MsoNormal style='layout-grid-mode:char;line-height: 1pt;'><span lang=EN-US style='font-size:1.0pt;color:black'><b>
  <tdcustom:ReplaceEnter value="${leftHandPermitPrintValue.route2}"/></b></span></p>
    
  <p class=MsoNormal style='layout-grid-mode:char;line-height: 1pt;'><span lang=EN-US style='font-size:1.0pt;color:black'>&nbsp;</span></p>
  </td>
 </tr>

 <tr>
  <td style='vertical-align: top; width:13px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:right;layout-grid-mode:char;line-height: 1pt;'><span
  lang=EN-US style='font-size:1.0pt;color:black'>&nbsp;</span></p>
  </td>
  <td style='vertical-align: top; width:482px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char;line-height: 1pt;'><span lang=EN-US
  style='font-size:1.0pt;color:black'>&nbsp;</span></p>
  </td>
 </tr>
 
 <c:forEach var="optMandatoryCondValue" items="${optMandatoryCondValues}">
 <tr>
  <td style='vertical-align: top; width:13px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:right;layout-grid-mode:char'><span
  lang=EN-US style='font-size:8.0pt;color:black'>
  <c:out value="${counts}"/><c:set var="counts" value="${counts+1}" />.
  </span></p>
  </td>
  <td style='vertical-align: top; width:482px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=ZH-TW
  style='font-size:8.0pt;font-family:MingLiU_HKSCS;color:black'>
  <tdcustom:ReplaceEnter value="${optMandatoryCondValue.interpretationChi}"/></span></p>
  </td>
 </tr>

 <tr>
  <td style='vertical-align: top; width:13px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:right;layout-grid-mode:char'><span
  lang=EN-US style='font-size:8.0pt;color:black'>&nbsp;</span></p>
  </td>
  <td style='vertical-align: top; width:482px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=EN-US
  style='font-size:8.0pt;color:black'>
  <tdcustom:ReplaceEnter value="${optMandatoryCondValue.interpretationEng}"/></span></p>
  </td>
 </tr>
 
 <tr>
  <td style='vertical-align: top; width:13px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:right;layout-grid-mode:char;line-height: 1pt;'><span
  lang=EN-US style='font-size:1.0pt;color:black'>&nbsp;</span></p>
  </td>
  <td style='vertical-align: top; width:482px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char;line-height: 1pt;'><span lang=EN-US
  style='font-size:1.0pt;color:black'>&nbsp;</span></p>
  </td>
 </tr>
 </c:forEach>
 
 <c:forEach var="vehPermitOptCondValue" items="${permitConditionValues}">
 <tr>
  <td style='vertical-align: top; width:13px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:right;layout-grid-mode:char'><span
  lang=EN-US style='font-size:8.0pt;color:black'>
  <c:out value="${counts}"/><c:set var="counts" value="${counts+1}" />.
  </span></p>
  </td>
  <td style='vertical-align: top; width:482px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=ZH-TW
  style='font-size:8.0pt;font-family:MingLiU_HKSCS;color:black'>
  <tdcustom:ReplaceEnter value="${vehPermitOptCondValue.conditionChi}"/></span></p>
  </td>
 </tr>
 
 <tr>
  <td style='vertical-align: top; width:13px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:right;layout-grid-mode:char'><span
  lang=EN-US style='font-size:8.0pt;color:black'>&nbsp;</span></p>
  </td>
  <td style='vertical-align: top; width:482px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=EN-US
  style='font-size:8.0pt;color:black'>
  <tdcustom:ReplaceEnter value="${vehPermitOptCondValue.conditionEng}"/></span></p>
  </td>
 </tr>
 
 <tr>
  <td style='vertical-align: top; width:13px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='text-align:right;layout-grid-mode:char'><span
  lang=EN-US style='font-size:8.0pt;color:black'>&nbsp;</span></p>
  </td>
  <td style='vertical-align: top; width:482px; padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
  <p class=MsoNormal style='layout-grid-mode:char'><span lang=EN-US
  style='font-size:8.0pt;color:black'>&nbsp;</span></p>
  </td>
 </tr>
 </c:forEach>
  </TBODY> 
</table>
</div>

</body>

</html>
