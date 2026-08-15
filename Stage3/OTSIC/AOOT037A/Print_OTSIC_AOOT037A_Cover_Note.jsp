<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print"%>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable"%>
<%@ page import="hk.gov.valid.util.RequestConstant"%>
<%@ page import="hk.gov.valid.util.CodeTableConstant" %>
<table style="margin:0 auto;height:100%;width:720px">
 <tr style="vertical-align:top">
 <td style="text-align:-webkit-center;border:0">
  <table class=MsoTableGrid style='border-collapse:collapse;margin:0 auto;border-spacing:0;width:100%'><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th><th>Col18</th></tr>
   <tr>
           <td colspan=5 style='width:376px;padding:0px;height:0;text-align:-webkit-left;vertical-align:top;border:0'><img style="border:0" alt="" width=260 height=69 src="<print:BlankFormPrint imageName='TD_Logo.jpg'/>"/>
			<!--<img width=290 height=74 src="http://localhost:7001/valid/images/TD_Logo.gif"/>-->
            </td>
            <td style="display: none;" colspan="13"></td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p class=MsoNormal style='text-align:right;'><span lang=EN-US style='font-family:Arial;font-size:9pt'></span></p><br>
    </td>
    <td style="display: none;" colspan="4"></td>
   </tr>
   <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'> 
	 <c:choose>
			<c:when test="${!empty COVER_NOTE_ISSUE_PRINTING_CTL_VALUE.telNo1}">
				<p class=MsoNormal style='text-align:left;'><span lang=ZH-TW style='font-size:10pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>電話號碼 </span><span lang=EN-US style='font-family:Arial;font-size:10pt'>Tel No.:</span><span lang=EN-US style='font-family:Arial;font-size:10pt'><span style='color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${COVER_NOTE_ISSUE_PRINTING_CTL_VALUE.telNo1}"/></span></span></p><br>
			</c:when>
	 </c:choose>
     </td>
    <td style="display: none;" colspan="4"></td>
   </tr>
    <tr>
	  <td  colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	    <p class=MsoNormal style='text-align:left;'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
		<span lang=EN-US style='font-family:Arial;font-size:10pt'><c:out value="${OTSIC_NOTICE_VALUE.nameEng}"/></span>
		</p>
	  </td>
    <td style="display: none;" colspan="4"></td>
   </tr>
   <tr>
	  <td  colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	    <p class=MsoNormal style='text-align:left;'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
		<span lang=ZH-TW style='font-size:10pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><c:out value="${OTSIC_COVER_NOTICE_VALUE.mailingAddr1}"/></span></p>
	  </td>
    <td style="display: none;" colspan="4"></td>
   </tr>
   <tr>
	  <td  colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	    <p class=MsoNormal style='text-align:left;'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
		<span lang=ZH-TW style='font-size:10pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><c:out value="${OTSIC_COVER_NOTICE_VALUE.mailingAddr2}"/></span></p>
	  </td>
    <td style="display: none;" colspan="4"></td>
   </tr>
   <tr>
	  <td  colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	    <p class=MsoNormal style='text-align:left;'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
		<span lang=ZH-TW style='font-size:10pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><c:out value="${OTSIC_COVER_NOTICE_VALUE.mailingAddr3}"/></span></p>
	  </td>
    <td style="display: none;" colspan="4"></td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p class=MsoNormal style='text-align:right;'><span lang=EN-US style='font-family:Arial;font-size:9pt'></span></p><br>
    </td>
    <td style="display: none;" colspan="4"></td>
   </tr>
   <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'> 
       <p class=MsoNormal style='text-align:left;'><span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>先生/女士：</span></p> 
     </td>
    <td style="display: none;" colspan="4"></td>
   </tr>
   <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'> 
       <p class=MsoNormal style='text-align:left;'><span lang=EN-US style='font-family:Arial;font-size:9pt'>Dear Sir/Madam,</span></p><br> 
     </td>
    <td style="display: none;" colspan="4"></td>
   </tr>
    <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'> 
       <p class=MsoNormal style='text-align:left;'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	   		<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>本署曾於<fmt:formatDate value="${OTSIC_NOTICE_VALUE.issueDate}" pattern="dd/MM/yyyy" />郵寄強制性修習的士服務改進課程通知書</span><span lang=EN-US style='font-family:Arial;font-size:9pt'><c:out value="${OTSIC_NOTICE_VALUE.otsicNoticeRefNo}"/></span><span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>到你的登記地址，但獲香港郵政退回。本署最近獲悉你有另一聯絡地址，故現隨函夾附有關通知書給你。</span>
	   </p>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	   		<span lang=EN-US style='font-family:Arial;font-size:9pt'>An Obligatory Attendance of Taxi Service Improvement Course Notice <c:out value="${OTSIC_NOTICE_VALUE.otsicNoticeRefNo}"/> was previously sent by post to your registered address 
									on <fmt:formatDate value="${OTSIC_NOTICE_VALUE.issueDate}" pattern="dd/MM/yyyy" />, but the said notice was returned from the Hong Kong Post. It is recently noticed that you have another contact address. In this connection, the said notice is resent herewith to you.</span>
	   		</p>
     </td>
    <td style="display: none;" colspan="4"></td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p class=MsoNormal style='text-align:right;'><span lang=EN-US style='font-family:Arial;font-size:9pt'></span></p><br>
    </td>
    <td style="display: none;" colspan="4"></td>
   </tr>
   <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'> 
       <p class=MsoNormal style='text-align:left;'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	   		<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><c:out value="${COVER_NOTE_ISSUE_PRINTING_CTL_VALUE.commissorNameChi}"/><c:out value="${COVER_NOTE_ISSUE_PRINTING_CTL_VALUE.contactNameChi}"/></span>
	   </p>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	   		<span lang=EN-US style='font-family:Arial;font-size:9pt'><c:out value="${COVER_NOTE_ISSUE_PRINTING_CTL_VALUE.commissorNameEng}"/> <c:out value="${COVER_NOTE_ISSUE_PRINTING_CTL_VALUE.contactNameEng}"/></span>
	   </p>
     </td>
    <td style="display: none;" colspan="4"></td>
   </tr>
   <tr>
      <td style="width:130px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:150px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:12px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:12px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:362px;border:0;padding:0px">&nbsp;</td>
    <td style="display: none;" colspan="13"></td>
   </tr>
   <tr>
      <td style="width:130px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:150px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:12px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:12px;border:0;padding:0px">&nbsp;</td>
	  <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;width:362px;border:0;padding:0px'>
	  	<p class=MsoNormal style='text-align:center;text-justify:inter-character;layout-grid-mode:char'>
			<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>運輸署署長</span>
		</p>
	  </td>
   </tr>
   <tr>
      <td style="width:130px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:150px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:12px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:12px;border:0;padding:0px">&nbsp;</td>
	  <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;width:362px;border:0;padding:0px'>
	  	<p class=MsoNormal style='text-align:center;text-justify:inter-character;layout-grid-mode:char'>
			<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>(<c:out value="${COVER_NOTE_ISSUE_PRINTING_CTL_VALUE.issueOfficerNameChi}"/></span><span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>&nbsp;代行)</span>
		</p>
	  </td>
   </tr>
   <tr>
      <td style="width:130px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:150px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:12px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:12px;border:0;padding:0px">&nbsp;</td>
	  <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;width:362px;border:0;padding:0px'>
	  	<p class=MsoNormal style='text-align:center;text-justify:inter-character;layout-grid-mode:char'>
			<span lang=EN-US style='font-family:Arial;font-family:Arial;font-size:9pt'>Yours faithfully,</span>
		</p>
	  </td>
   </tr>
   <tr>
      <td style="width:130px;border:0;padding:0px">
	    <p class=MsoNormal style='text-align:left;text-justify:inter-character;layout-grid-mode:char'>
			<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>日期</span>
		</p>
	  </td>
	  <td style="width:150px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:12px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:12px;border:0;padding:0px">&nbsp;</td>
	  <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;width:362px;border:0;padding:0px'>
	  	<p class=MsoNormal style='text-align:center;text-justify:inter-character;layout-grid-mode:char'>
			<span lang=EN-US style='font-family:Arial;font-family:Arial;font-size:9pt'><span style='color:black'><c:out value="${ISSUE_PRINTING_CTL_VALUE.issueOfficerNameEng}"/></span></span>
		</p>
	  </td>
   </tr>
    <tr>
      <td style="width:130px;border:0;padding:0px">
	    <p class=MsoNormal style='text-align:left;text-justify:inter-character;layout-grid-mode:char'>
			<span lang=EN-US style='font-family:Arial;font-family:Arial;font-size:9pt'>Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatDate value="${OTSIC_COVER_NOTICE_VALUE.issueDate}" pattern="dd/MM/yyyy" /></span>
		</p>
	  </td>
	  <td style="width:150px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:12px;border:0;padding:0px">&nbsp;	    
	  </td>
	  <td style="width:12px;border:0;padding:0px">&nbsp;</td>
	  <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;width:362px;border:0;padding:0px'>
	  	<p class=MsoNormal style='text-align:center;text-justify:inter-character;layout-grid-mode:char'>
			<span lang=EN-US style='font-family:Arial;font-family:Arial;font-size:9pt'>for Commissioner for Transport</span>
		</p>
	  </td>
   </tr>
   <tr>
      <td style="width:130px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:150px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:12px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:12px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:362px;border:0;padding:0px">&nbsp;</td>
    <td style="display: none;" colspan="13"></td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p class=MsoNormal style='text-align:right;'><span lang=EN-US style='font-family:Arial;font-size:9pt'></span></p><br>
    </td>
    <td style="display: none;" colspan="4"></td>
   </tr>
   </table>
  </td>
  </tr>
  
  
  <tfoot >
  <tr style="vertical-align:bottom">
  <td style="text-align:-webkit-center;width:100%;border:0">
  <table class=MsoTableGrid style='border-collapse:collapse;margin:0 auto;border-spacing:0;width:100%'><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th></tr>
   <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
       <p class=MsoNormal style='text-align:left;'>
	   	  <span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>附註：此乃電腦編印通知書，無需授權人員簽署。</span>
	   </p> 
     </td>
   </tr>
    <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'> 
       <p class=MsoNormal style='text-align:left;'>
	   	  <span lang=EN-US style='font-family:Arial;font-size:9pt'>Note: This is a computer-generated advice which requires no authorized signature.</span>
	   </p> 
     </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p class=MsoNormal style='text-align:right;'><span lang=EN-US style='font-family:Arial;font-size:9pt'></span></p><br>
    </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p class=MsoNormal style='text-align:center;text-justify:inter-character;layout-grid-mode:char'>
	  	<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><span style='color:black'><c:out value="${COVER_NOTE_ISSUE_PRINTING_CTL_VALUE.officeNameChi}"/></span></span>
	  </p>
    </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p class=MsoNormal style='text-align:center;text-justify:inter-character;layout-grid-mode:char'>
	  	<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'><c:out value="${COVER_NOTE_ISSUE_PRINTING_CTL_VALUE.officeNameEng}"/></span></span>
	  </p>
    </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p class=MsoNormal style='text-align:center;text-justify:inter-character;layout-grid-mode:char'>
	  	<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><span style='color:black'><c:out value="${COVER_NOTE_ISSUE_PRINTING_CTL_VALUE.officeAddressChi}"/></span></span>
	  </p>
    </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p class=MsoNormal style='text-align:center;text-justify:inter-character;layout-grid-mode:char'>
	  	<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'><c:out value="${COVER_NOTE_ISSUE_PRINTING_CTL_VALUE.officeAddressEng}"/></span></span>
	  </p>
    </td>
   </tr>
      <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p class=MsoNormal style='text-align:right;'><span lang=EN-US style='font-family:Arial;font-size:9pt'></span></p><br>
    </td>
   </tr>
   <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'> 
       <p class=MsoNormal style='text-align:left;'>
	   	  <span lang=EN-US style='font-family:Arial;font-size:9pt'><c:out value="${DUPLICATE_NON_DELIVERED_OTSIC_NOTICE_VALUE.workStationId}"/>,
		  										<c:out value="${DUPLICATE_NON_DELIVERED_OTSIC_NOTICE_VALUE.operatorId}"/>,
												<fmt:formatDate value="${OTSIC_COVER_NOTICE_VALUE.printDate}" pattern="dd/MM/yyyy HH:mm:ss" /></span>
	   </p> 
     </td>
   </tr>
  </table>
  </td></tr>
  </tfoot>
</table>

