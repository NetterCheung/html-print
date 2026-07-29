<!DOCTYPE html>
<%--
 * <p>Title: Print_PDI_AOPI071A_Letter2022.jsp</p>
 * <p>Project: VALID IV</p>
 * <p>Description: Common page</p>
 * <p>Copyright: Copyright (c) 2003</p>
 * <p>Company: HEWLETT PACKARD</p>
 *
 * @author Joy Xu
 * @version 1.0
 *          Date: 2022-02-21
 *          Time: 16:00:00
--%>
<%@ page import="hk.gov.valid.util.RequestConstant"%>
<%@ page import="hk.gov.valid.util.CodeTableConstant"%> 
<%@ page contentType="text/html;charset=UTF-8"%> 
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print"%>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="tdcustom"%>

<c:set var="PDI_PRINT_VALUE"><%=RequestConstant.PDI_PRINT_VALUE%></c:set>
<c:set var="pdiPrintValue" value="${requestScope[PDI_PRINT_VALUE]}" scope="request"/>
<c:set var="pdiGroup" value="${pdiPrintValue.pdiGroup}" />
<c:set var="issuePrintingCtlValue" value="${requestScope[PDI_PRINT_VALUE].issuePrintingCtlValue}" scope="request"/>
<c:set var="PDIAppointmentPageValue" value="${requestScope.PDIAppointmentPageValue}" scope="request"/>
<html lang="en">
<head>
    <title>Document</title>
<!-- saved from url=(0014)about:internet -->
<meta charset="UTF-8">
<meta name="margin-top" content="0">
<meta name="margin-bottom" content="0">
<meta name="margin-left" content="0">
<meta name="margin-right" content="0">
<meta name="copies" content="1">
<meta name="papersize" content="A4">
<meta name="orientation" content="0">
<meta name="duplex" content="2">

<style>
<!--
p, div {
	line-height: 25px;
	font-size: 12pt;
}

.STYLE1 {
	font-family: Times New Roman;
	font-size: 11pt;
	text-align: left;
	vertical-align: top;
}

.STYLE2 {
	font-family: MingLiU_HKSCS;
	font-size: 11pt;
}

.STYLE3 {
	font-family: Times New Roman;
	font-size: 12pt;
}

.STYLE4 {
	font-family: MingLiU_HKSCS;
	font-size: 14pt;
}

.addressEng {
	font-family: Times New Roman;
	font-size: 11pt;
}

.addressChi {
	font-family:  MingLiU_HKSCS;
	font-size: 11pt;
}

.STYLE7 {
	font-family: MingLiU_HKSCS;
	font-size: 10pt;
}

.STYLE8 {
	font-family: Times New Roman;
	font-size: 10pt;
}

.STYLE10 {
	font-family: Times New Roman;
	font-size: 6pt;
}

.nameChi {
	font-family: MingLiU_HKSCS;
	font-size: 11pt;
}

.nameEng {
	font-family: Times New Roman;
	font-size: 11pt;
}

div.page
	{page-break-before:always}

-->
</style>
</head>
<body>
<c:if test="${PDIAppointmentPageValue.languageType == 'C'}">
  <table style="margin:0 auto;height:100%;width:550px">
 <tr style="vertical-align:top">
 <td  style="text-align:center;border:0">
  <table class="MsoTableGrid cellpadding-0" style='border-collapse:collapse;margin:0 auto;border-spacing:0'><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th></tr>
    <tr>
            <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'> 
             <p style="text-align:justify"><span class="STYLE_ENG"><!-- ========================================================================== --></span></p>
     </td>
  	</tr>
			<tr>
				<td style="vertical-align:top;width:50%;border:0;padding:0px">
						   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   						<span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>	  			  
					<img style="border:0" alt="" src="<print:BlankFormPrint imageName='logo.gif'/>" />
                </td>
        <td style="vertical-align:bottom;width:20%;border:0;padding:0px">

                </td>
				<td style="text-align:right;vertical-align:bottom;width:30%;border:0;padding:0px">  
					<p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   						<span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p> 
	   				<table style="border-spacing:0;width:150px"><tr><td style="border:1px solid;padding:0px"> 	
								<p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   						<span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>	   						  
					   <p  style="text-align:center">
							<span lang=EN-US style='font-family:Times New Roman;font-size:30pt'>G<c:out value="${pdiGroup}"/></span>
					   </p>
					   <p style="text-align:center">				
					   	<c:if test="${pdiGroup=='1'}">
								<span class="STYLE4">(第一組別)</span>
							</c:if>
							<c:if test="${pdiGroup=='2'}">
								<span class="STYLE4">(第二組別)</span>
							</c:if>
					   	<c:if test="${pdiGroup=='3'}">
								<span class="STYLE4">(第三組別)</span>
							</c:if>
					   </p>	
				  </td></tr></table>
				</td>
				<td style="display: none;" colspan="11"></td>
			</tr>
			<tr>
			<td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
			   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
			   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>	
			</td>
		   </tr>
			<tr>
				<td style="vertical-align:middle;width:50%;border:0;padding:0px"><p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
		   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>
                </td>
				<td style="vertical-align:middle;width:20%;border:0;padding:0px">
				<p style='line-height:12pt;text-align:right'><span class="STYLE7" >申請編號</span></p>
				</td>
				<td style="text-align:right;vertical-align:middle;width:30%;border:0;padding:0px">
				   <table style="border-spacing:0;width:150px"><tr><td style="text-align:right;border:1px solid;padding:0px">
				   		<p  style="text-align:center"><span class="STYLE3"><b><c:out value="${pdiPrintValue.pdiApplNo}"/></b></span> 
            	</p>
            </td></tr></table>
				</td>
				<td style="display: none;" colspan="11"></td>
			</tr>
			<tr>
				<td colspan="3" style="width:100%;border:0;padding:0px"><table style="width:100%">
					<tr>
						<td style="width:20%;border:0;padding:0px"><p style="text-align:justify"><span class="STYLE2">本署檔號 :</span></p></td>
						<td style="width:80%;border:0;padding:0px"><p style="text-align:justify"><span class="STYLE2"><!-- in L/M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  to -->TD DT 47/90/21/<!-- Ⅱ --><c:if test="${pdiGroup=='1'}">19</c:if><c:if test="${pdiGroup=='2'}">8</c:if><c:if test="${pdiGroup=='3'}">9</c:if></span></p></td>
					</tr>
				</table></td>
				<td style="display: none;" colspan="11"></td>
			</tr>
	<tr>
		<td colspan="14" style="border:0;padding:0px"><table style="width:100%"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th></tr><tr><td style="width:20%;border:0;padding:0px"></td>
   	  <td  colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;text-align:center;vertical-align:top;border:0;padding:0px'  >
	  	 <p style='line-height:14pt;text-align:justify'>
			<c:choose>				
				<c:when test="${!empty pdiPrintValue.nameChi}">
					<span class="nameChi"><c:out value="${pdiPrintValue.nameChi}"/></span>
				</c:when>
				<c:otherwise>
						<span class="nameEng"><c:out value="${pdiPrintValue.nameEng}"/></span>
				</c:otherwise>
			</c:choose>
		</p>
	  </td>
		</tr></table></td>
   </tr>
   <tr>
   	<td colspan="14" style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'><table style="width:100%"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th></tr><tr><td style="width:20%;border:0;padding:0px"></td>
	  <td  colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	     <p style='line-height:12pt;text-align:justify'>
		 	<c:choose>
				<c:when test="${!empty pdiPrintValue.addressChi1 || !empty pdiPrintValue.addressChi2 || !empty pdiPrintValue.addressChi3}">
		 			<span class="addressChi"><c:out value="${pdiPrintValue.addressChi1}"/></span>
				</c:when>
			<c:otherwise>
				<span class="addressEng"><c:out value="${pdiPrintValue.addressEng1}"/></span>
			</c:otherwise>
			</c:choose>
		</p>
	  </td>
	  </tr></table></td>
   </tr>
   
   <tr><td colspan="14" style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'><table style="width:100%"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th></tr><tr><td style="width:20%;border:0;padding:0px"></td>
	  <td  colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	     <p style='line-height:12pt;text-align:justify'>
		 	<c:choose>
				<c:when test="${!empty pdiPrintValue.addressChi1 || !empty pdiPrintValue.addressChi2 || !empty pdiPrintValue.addressChi3}">
		 			<span class="addressChi"><c:out value="${pdiPrintValue.addressChi2}"/></span>
				</c:when>
			<c:otherwise>
				<span class="addressEng"><c:out value="${pdiPrintValue.addressEng2}"/></span>
			</c:otherwise>
			</c:choose>
		</p>
	  </td></tr></table></td>
   </tr>
   
   <tr><td colspan="14" style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'><table style="width:100%"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th></tr><tr><td style="width:20%;border:0;padding:0px"></td>
	  <td  colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	     <p style='line-height:12pt;text-align:justify'>
		 	<c:choose>
				<c:when test="${!empty pdiPrintValue.addressChi1 || !empty pdiPrintValue.addressChi2 || !empty pdiPrintValue.addressChi3}">
		 			<span class="addressChi"><c:out value="${pdiPrintValue.addressChi3}"/></span>
				</c:when>
			<c:otherwise>
				<span class="addressEng"><c:out value="${pdiPrintValue.addressEng3}"/></span>
			</c:otherwise>
			</c:choose>
		</p>
	  </td></tr></table></td>
   </tr>
   
   <tr>
  	<td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p style="text-align:justify"><span class="STYLE2">&nbsp;</span></p>
    </td>
   </tr>
   
    <tr>
          <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'> 
             <p style="text-align:justify"><span class="nameChi"><c:out value="${pdiPrintValue.nameChi}"/>
             	<codetable:out value = "<%=CodeTableConstant.TITLE_CODE%>" language="<%=CodeTableConstant.CHINESE%>" selected = "${pdiPrintValue.titleCode}" >
             		<codetable:column codeColumn="<%=CodeTableConstant.TITLE_CODE%>" interpretationColumn="<%=CodeTableConstant.INTERPRETATION_CHI_COLUMN%>"/></codetable:out>
             		：</span></p>
     </td>
   </tr>
    <tr>
  	<td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p style="text-align:justify"><span class="STYLE2">&nbsp;</span></p>
    </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	  <p style="text-align:center">
		<span class="STYLE2"><u><b>第<c:if test="${pdiGroup=='1'}"><span class="STYLE2">一</span></c:if><c:if test="${pdiGroup=='2'}"><span class="STYLE2">二</span></c:if><c:if test="${pdiGroup=='3'}"><span class="STYLE2">三</span></c:if>組別私人駕駛教師考試（指明人士配額） - <c:if test="${PDIAppointmentPageValue.testType == '6'}">路試</c:if><c:if test="${PDIAppointmentPageValue.testType == '5'}">電腦化筆試</c:if></b></u></span>
	  </p>
   </td>
  </tr> 
   <tr>
   <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p style="text-align:justify"><span class="STYLE2">&nbsp;</span></p>
    </td>
   </tr>
   <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
       <p style="text-indent: 2em; text-align: justify;">
	   		<span class="STYLE2">就你申請上述私人駕駛教師考試（指明人士配額），本署現安排有關<c:if test="${PDIAppointmentPageValue.testType == '6'}">路試</c:if><c:if test="${PDIAppointmentPageValue.testType == '5'}">筆試</c:if>，詳情如下：</span>
	   </p>
     </td>
   </tr>
   <tr>
   <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p style="text-align:justify"><span class="STYLE2">&nbsp;</span></p>
    </td>
   </tr>
   <tr>
   	<td colspan=14 style="border:0;padding:0px"><table style="width:100%"><tr>
   	 <td class="STYLE2" style="text-align:right;width:30%;border:0;padding:0px">日期：&nbsp;</td>
     <td class="STYLE2" style="border:0;padding:0px">
       <fmt:setLocale value="zh_tw"/><fmt:formatDate value="${PDIAppointmentPageValue.testDate}" dateStyle="long"/>
     </td>
    	</tr></table></td>
   </tr>
   <tr>
   	<td colspan=14 style="border:0;padding:0px"><table style="width:100%"><tr>
   	 <td class="STYLE2" style="text-align:right;width:30%;border:0;padding:0px">時間：&nbsp;</td>
     <td class="STYLE2" style="border:0;padding:0px">
	   <script >
	   	var hour = <fmt:formatDate value="${PDIAppointmentPageValue.testDate}" pattern="HH"/>;
	   	var minute = <fmt:formatDate value="${PDIAppointmentPageValue.testDate}" pattern="mm"/>;
	   	if(hour < 12)
	   	{
	   		if(minute == 0)document.write("上午 "+hour+" 時正");
	   		else document.write("上午 "+hour+" 時 "+minute+" 分");
	   	}else
	   	{
			if(hour > 12) hour = hour -12;
	   		if(minute == 0)document.write("下午 "+hour+" 時正");
	   		else document.write("下午 "+hour+" 時 "+minute+" 分");
	   	}
	   	</script>
     </td>
     </tr></table></td>
   </tr>
   <tr>
   	<td colspan=14 style="border:0;padding:0px"><table style="width:100%"><tr>
   	 <td class="STYLE2" style="vertical-align: top;text-align:right;width:30%;border:0;padding:0px">地點：&nbsp;</td>
     <td  class="STYLE2" style="vertical-align: top;border:0;padding:0px">
	   <codetable:out value="<%=CodeTableConstant.TEST_CENTRE_CODE%>" language="<%=CodeTableConstant.CHINESE%>" formatType="<%=CodeTableConstant.INTERPRETATION%>" selected="${PDIAppointmentPageValue.testCentre}"/>
     </td>
     </tr></table></td>
   </tr>
   
   <tr>
  	<td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p style="text-align:justify"><span class="STYLE2">&nbsp;</span></p>
    </td>
   </tr>
   <tr>
     <td colspan=14  style="vertical-align:top;border:0;padding:0px">
       <p style="text-indent: 2em; text-align: justify; text-justify:inter-character;"><span class="STYLE2">上述資料如有更改，本署將會另行通知你。請細閱<c:if test="${PDIAppointmentPageValue.testType == '6'}">路試</c:if><c:if test="${PDIAppointmentPageValue.testType == '5'}">筆試</c:if>邀請信夾附的考試須知（指明人士配額）及攜備有關文件，於考試前15分鐘，到達上述地點向本署職員報到。所有文件將於考試完畢後歸還。</span>
	   </p>
     </td>
   </tr>
   
   <tr>
  	<td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p style="text-align:justify"><span class="STYLE2">&nbsp;</span></p>
    </td>
   </tr>
   <tr>
     <td colspan=14  style="vertical-align:top;border:0;padding:0px">
       <p style="text-indent: 2em; text-align: justify;">
	   		<span class="STYLE2">
			如有查詢，請致電&nbsp;<c:out value="${issuePrintingCtlValue.telNo1}"/><c:if test="${!empty issuePrintingCtlValue.telNo2}">&nbsp;/&nbsp;<c:out value="${issuePrintingCtlValue.telNo2}"/></c:if><c:if test="${!empty issuePrintingCtlValue.telNo3}">&nbsp;/&nbsp;<c:out value="${issuePrintingCtlValue.telNo3}"/></c:if>&nbsp;與本署聯絡。
			</span>
	   </p>
     </td>
   </tr>
      <tr>
  	<td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p style="text-align:justify"><span class="STYLE2">&nbsp;</span></p>
    </td>
   </tr>
      <tr>
  	<td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p style="text-align:justify"><span class="STYLE2">&nbsp;</span></p>
    </td>
   </tr>
   <tr>
     <td colspan=14  style="vertical-align:top;border:0;padding:0px">
	 	<table style="width:100%">
		<tr>
			<td style="width:50%;border:0;padding:0px">
			   <p style="text-align:justify">
	   			<span class="STYLE10"></span>
	   			<!-- Version 2013 -->
	   		   </p>	
			</td>
			<td style="width:50%;border:0;padding:0px">
			   <p style="text-align:right">
	   			<span class="STYLE2">運輸署駕駛事務組</span>
	   		   </p>
			</td>
		</tr>
		<tr>
			<td style="width:50%;border:0;padding:0px">
			   <p style="text-align:justify">
	   			<span class="STYLE2"><fmt:formatDate value="${pdiPrintValue.printDate}" pattern="yyyy" />&nbsp;年&nbsp;<fmt:formatDate value="${pdiPrintValue.printDate}" pattern="M" />&nbsp;月&nbsp;<fmt:formatDate value="${pdiPrintValue.printDate}" pattern="d" />&nbsp;日</span>
	   		   </p>	
			</td>
			<td style="width:50%;border:0;padding:0px">
			   <p style="text-align:center">
	   			<span class="STYLE2">&nbsp;</span>
	   		   </p>
			</td>
		</tr>		
		</table>
     </td>
   </tr>
   </table>
  </td></tr>
</table>
</c:if>
<%--<div class="page">--%>
<c:if test="${PDIAppointmentPageValue.languageType == 'E'}">
<fmt:setLocale value="en_US"/>
<table style="margin:0 auto;height:98%;width:545px">
 <tr style="vertical-align:top">
 <td  style="text-align:center;border:0">
  <table class="MsoTableGrid cellpadding-0" style='border-collapse:collapse;margin:0 auto;border-spacing:0;width:100%'><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th></tr>
			  <tr>
            <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'> 
             <p style="text-align:justify"><span class="STYLE_ENG"><!-- ========================================================================== --></span></p>
     </td>
  	</tr>
			<tr>
				<td style="vertical-align:top;width:50%;border:0;padding:0px">
						   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   						<span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>
					<img style="border:0" alt="" src="<print:BlankFormPrint imageName='logo.gif'/>" /> 
                </td>
        <td style="vertical-align:top;width:20%;border:0;padding:0px">
				<p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   			<span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>
                </td>
				<td style="text-align:right;vertical-align:middle;width:30%;border:0;padding:0px">	
						   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   						<span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:18pt'>&nbsp;</span></p>
						<table style="border-spacing:0;width:150px"><tr><td style="border:1px solid;padding:0px"> 	
								<p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   						<span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>			
						   <p  style="text-align:center">
							<span lang=EN-US style='font-family:Times New Roman;font-size:30pt'>G<c:out value="${pdiGroup}"/></span>
						   </p>
						   <p style="text-align:center">				
							<span class="STYLE3">(Group <c:out value="${pdiGroup}"/>)</span>
						   </p>
				   	</td></tr></table>
				</td>
				<td style="display: none;" colspan="11"></td>
			</tr>
			<tr>
			<td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
			   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
			   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>	
			</td>
		   </tr>
			<tr>
				<td style="vertical-align:middle;width:35%;border:0;padding:0px"><p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
		   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>
                </td>
				<td style="vertical-align:middle;width:35%;border:0;padding:0px">
				<p style='line-height:12pt;text-align:right'><span class="STYLE8" >Application No.</span></p>
				</td>
				<td style="text-align:right;vertical-align:middle;width:30%;border:0;padding:0px">
				   <table style="border-spacing:0;width:150px"><tr><td style="text-align:right;border:1px solid;padding:0px">
				   		<p  style="text-align:center"><span class="STYLE3"><b><c:out value="${pdiPrintValue.pdiApplNo}"/></b></span> 
            	</p>
            </td></tr></table>
				</td>
				<td style="display: none;" colspan="11"></td>
			</tr>
		<tr>
				<td colspan="3" style="width:100%;border:0;padding:0px"><table style="width:100%">
					<tr>
						<td style="width:15%;border:0;padding:0px"><p style="text-align:justify"><span class="STYLE1">Our Ref.:</span></p></td>
						<td style="border:0;padding:0px"><p style="text-align:justify"><span class="STYLE1"> <!-- in L/M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    to -->TD DT 47/90/21/<c:if test="${pdiGroup=='1'}">19</c:if><c:if test="${pdiGroup=='2'}">8</c:if><c:if test="${pdiGroup=='3'}">9</c:if></span></p></td>
						
					</tr>
				</table></td>
				<td style="display: none;" colspan="11"></td>
			</tr>
			
			
	   <tr>
		<td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
		   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:10pt'>
		   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:10pt'>&nbsp;</span></p>	
		</td>
	   </tr>	
     <tr><td colspan="14" style="border:0;padding:0px"><table style="width:100%"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th></tr><tr><td style="width:20%;border:0;padding:0px"></td>
   	  <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px' >
	  	 <p style='line-height:12pt;text-align:justify'>
			<c:choose>				
				<c:when test="${!empty pdiPrintValue.nameEng}">
					<span class="nameEng"><c:out value="${pdiPrintValue.nameEng}"/></span>
				</c:when>
				<c:otherwise>
						<span class="nameChi"><c:out value="${pdiPrintValue.nameChi}"/></span>
				</c:otherwise>
			</c:choose>
		</p>
	  </td></tr></table></td>
   </tr>
   
   <tr><td colspan="14" style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'><table style="width:100%"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th></tr><tr><td style="width:20%;border:0;padding:0px"></td>
	  <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	     <p style='line-height:12pt;text-align:justify'>
		 	<c:choose>
				<c:when test="${!empty pdiPrintValue.addressEng1 || !empty pdiPrintValue.addressEng2 || !empty pdiPrintValue.addressEng3}">
		 			<span span class="addressEng"><c:out value="${pdiPrintValue.addressEng1}"/></span>
				</c:when>
				<c:otherwise>
					<span span class="addressChi"><c:out value="${pdiPrintValue.addressChi1}"/></span>
				</c:otherwise>
			</c:choose>
		</p>
	  </td></tr></table></td>
   </tr>
   
   <tr><td colspan="14" style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'><table style="width:100%"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th></tr><tr><td style="width:20%;border:0;padding:0px"></td>
	  <td  colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	     <p style='line-height:12pt;text-align:justify'>
		 	<c:choose>
				<c:when test="${!empty pdiPrintValue.addressEng1 || !empty pdiPrintValue.addressEng2 || !empty pdiPrintValue.addressEng3}">
		 			<span span class="addressEng"><c:out value="${pdiPrintValue.addressEng2}"/></span>
				</c:when>
				<c:otherwise>
					<span span class="addressChi"><c:out value="${pdiPrintValue.addressChi2}"/></span>
				</c:otherwise>
			</c:choose>
		</p>
	  </td></tr></table></td>
   </tr>
   
  <tr><td colspan="14" style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'><table style="width:100%"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th></tr><tr><td style="width:20%;border:0;padding:0px"></td>
	  <td  colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	     <p style='line-height:12pt;text-align:justify'>
		 	<c:choose>
				<c:when test="${!empty pdiPrintValue.addressEng1 || !empty pdiPrintValue.addressEng2 || !empty pdiPrintValue.addressEng3}">
		 			<span span class="addressEng"><c:out value="${pdiPrintValue.addressEng3}"/></span>
				</c:when>
				<c:otherwise>
					<span span class="addressChi"><c:out value="${pdiPrintValue.addressChi3}"/></span>
				</c:otherwise>
			</c:choose>
		</p>
	  </td></tr></table></td>
   </tr>
   <tr>
		<td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
		   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:10pt'>
		   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:10pt'>&nbsp;</span></p>	
		</td>
	   </tr>	
   <tr>
   <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p style="text-align:right"><span class="STYLE1"><fmt:formatDate value="${pdiPrintValue.printDate}" pattern="d MMMM yyyy" /></span></p>
    </td>
   </tr>
   <tr>
		<td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
		   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:10pt'>
		   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:10pt'>&nbsp;</span></p>	
		</td>
	   </tr>	
    <tr>
          <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'> 
             <p style="text-align:justify"><span class="nameEng"><codetable:out value = "<%=CodeTableConstant.TITLE_CODE%>" language="<%=CodeTableConstant.ENGLISH%>" selected = "${pdiPrintValue.titleCode}" /><c:out value="${pdiPrintValue.nameEng}"/>,</span></p>
     </td>
   </tr>
   <tr>
   <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>	
    </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	  <p style="text-align:center">
		<span class="STYLE1"><u><b>Group <c:out value="${pdiGroup}"/> Private Driving Instructor's Test (Quota for Specified Persons) - <c:if test="${PDIAppointmentPageValue.testType == '5'}">Computerized Written</c:if><c:if test="${PDIAppointmentPageValue.testType == '6'}">Road</c:if> Test</b></u></span>
	  </p>
   </td>
  </tr> 
   <tr>
   <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>	
    </td>
   </tr>
   <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
       <p style="text-indent: 2em; text-align: justify;">
	   		<span class="STYLE1">In relation to your application of the captioned Private Driving Instructor's Test (Quota for Specified Persons), this Department has arranged the said <c:if test="${PDIAppointmentPageValue.testType == '5'}">written</c:if><c:if test="${PDIAppointmentPageValue.testType == '6'}">road</c:if> test.  Details are as follows:</span>
	   </p>
     </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>	
    </td>
   </tr>
   <tr>
   	<td colspan=14 style="border:0;padding:0px"><table style="width:100%"><tr>
   	 <td style="width:18%;border:0;padding:0px"></td>
     <td class="STYLE1" style="width:8%;border:0;padding:0px">Date</td>
    <td class="STYLE1" style="width:2%;border:0;padding:0px">:&nbsp;</td>
    <td class="STYLE1" style="border:0;padding:0px"><fmt:formatDate value="${PDIAppointmentPageValue.testDate}" pattern="d MMMM yyyy" /></td>
    	</tr></table></td>
   </tr>
   <tr>
   	<td colspan=14 style="border:0;padding:0px"><table style="width:100%"><tr>
   	<td style="width:18%;border:0;padding:0px"></td>
    <td class="STYLE1" style="width:8%;border:0;padding:0px">Time</td>
    <td class="STYLE1" style="width:2%;border:0;padding:0px">:&nbsp;</td>
     <td class="STYLE1" style="border:0;padding:0px"><fmt:formatDate value="${PDIAppointmentPageValue.testDate}" pattern="h:mm"/>
	       <script >
	   	var hour = <fmt:formatDate value="${PDIAppointmentPageValue.testDate}" pattern="HH"/>;
	   	var minute = <fmt:formatDate value="${PDIAppointmentPageValue.testDate}" pattern="mm"/>;
	   	if(hour < 12)
	   	{
			document.write("  a.m.");
	   	}else
	   	{
			document.write("  p.m.");
	   	}
	   	</script>
     </td>
     </tr></table></td>
   </tr>
   <tr>
   	<td colspan=14 style="border:0;padding:0px"><table style="width:100%"><tr>
   		<td style="width:18%;border:0;padding:0px"></td>
        <td class="STYLE1" style="width:8%;border:0;padding:0px">Venue</td>
    <td class="STYLE1" style="width:2%;border:0;padding:0px">:&nbsp;</td>
     <td class="STYLE1" style="border:0;padding:0px">
	   <codetable:out value="<%=CodeTableConstant.TEST_CENTRE_CODE%>" formatType="<%=CodeTableConstant.INTERPRETATION%>" selected="${PDIAppointmentPageValue.testCentre}"/>
     </td>
     </tr></table></td>
   </tr>
   
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>	
    </td>
   </tr>
   <tr>
     <td colspan=14  style="vertical-align:top;border:0;padding:0px">
       <p style="text-indent: 2em; text-align: justify;">
	   		<span class="STYLE1">You will receive further notification if any of the above details are changed.  Please read Notes of Test (Quota for Specified Persons) attached to the invitation letter for <c:if test="${PDIAppointmentPageValue.testType == '5'}">written</c:if><c:if test="${PDIAppointmentPageValue.testType == '6'}">road</c:if> test and bring all relevant documents and report your arrival to the Test Centre 15 minutes before the test.  All documents will be returned to you immediately after the test.</span>
	   </p>
     </td>
   </tr>
   
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'>
	   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span></p>	
    </td>
   </tr>
   <tr>
     <td colspan=14  style="vertical-align:top;border:0;padding:0px">
       <p style="text-indent: 2em; text-align: justify;">
	   		<span class="STYLE1">Should you have any enquires, please contact us at <c:out value="${issuePrintingCtlValue.telNo1}"/><c:if test="${!empty issuePrintingCtlValue.telNo2}">&nbsp;/&nbsp;<c:out value="${issuePrintingCtlValue.telNo2}"/></c:if><c:if test="${!empty issuePrintingCtlValue.telNo3}">&nbsp;/&nbsp;<c:out value="${issuePrintingCtlValue.telNo3}"/></c:if>.</span>
	   </p>
     </td>
   </tr>
   <tr><td colspan=14 style="border:0;padding:0px">&nbsp;</td></tr>
   <tr><td colspan=14 style="border:0;padding:0px">&nbsp;</td></tr>
   <tr><td colspan=14 style="border:0;padding:0px">&nbsp;</td></tr>
   <tr>
     <td colspan=14  style="vertical-align:top;border:0;padding:0px">
	 	<table style="width:100%">
		<tr>
			<td style="width:50%;border:0;padding:0px">
			   <p style="text-align:justify">
	   			<span class="STYLE1"></span>
	   		   </p>	
			</td>
			<td style="width:50%;border:0;padding:0px">
			   <p style="text-align:center">
	   			<span class="STYLE1">Driving Services Section</span>
	   		   </p>
			</td>
		</tr>
		<tr>
			<td colspan=2 style="border:0;padding:0px">
			</td>
		</tr>
		<tr>
			<td style="width:50%;border:0;padding:0px">
			   <p style="text-align:justify">
	   			<span class="STYLE10"></span>
	   		   </p>	
			</td>
			<td style="width:50%;border:0;padding:0px">
			   <p style="text-align:center">
	   			<span class="STYLE1">Transport Department</span>
	   		   </p>
			</td>
		</tr>		
		</table>
     </td>
   </tr>
   </table>
   
        </td>
   </tr>
 
</table>
</c:if>
</body>
</html>
