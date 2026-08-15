<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print"%>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable"%>
<%@ page import="hk.gov.valid.util.RequestConstant"%>
<%@ page import="hk.gov.valid.util.CodeTableConstant" %>


<table style="margin:0 auto;height:98%;width:720px">
 <tr style="vertical-align:top">
 <td  style="text-align:-webkit-center;border:0">
  <table class=MsoTableGrid style='border-collapse:collapse;margin:0 auto;border-spacing:0;width:100%'><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th></tr>
   <tr>
            <td colspan=5 style='width:376px;padding:0px;height:0;text-align:-webkit-left;vertical-align:top;border:0'><img style="border:0" alt="" width=260 height=69 src="<print:BlankFormPrint imageName='TD_Logo.jpg'/>"/>
            </td>
			<td style="display: none;" colspan=9></td>
   </tr>
     <tr>
   	  <td   style="width:300px;border:0;padding:0px">
	  	<p class=MsoNormal style='text-align:left;line-height:10pt;text-align:left'>
			<span lang=ZH-TW style='font-size:10pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>檔號 </span><span lang=EN-US style='font-family:Arial;font-size:10pt'>Ref.:</span><span lang=EN-US style='font-family:Arial;font-size:10pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span lang=EN-US style='font-family:Arial;font-size:10pt'><span style='color:black'><c:out value="${OTSIC_NOTICE_VALUE.otsicNoticeRefNo}"/></span></span>
		</p>
	  </td>
	  <td style="width:12px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:12px;border:0;padding:0px">&nbsp;</td>
	  <td style="width:362px;border:0;padding:0px">&nbsp;</td>
	  <td style="display: none;" colspan=10></td>
   </tr>
   <tr>
	 <td style="width:300px;border:0;padding:0px">
	 <c:choose>
		<c:when test="${!empty ISSUE_PRINTING_CTL_VALUE.telNo1}">
			<p class=MsoNormal style='text-align:left;line-height:10pt;text-align:left'><span lang=ZH-TW style='font-size:10pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>電話號碼 </span><span lang=EN-US style='font-family:Arial;font-size:10pt'>Tel No.:</span><span lang=EN-US style='font-family:Arial;font-size:10pt'><span style='color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${ISSUE_PRINTING_CTL_VALUE.telNo1}"/></span></span>
			</p>
		</c:when>
	 </c:choose>
	 </td>
	 <td style="width:12px;border:0;padding:0px">&nbsp;</td>
	 <td style="width:12px;border:0;padding:0px">&nbsp;</td>
	 <td style="width:362px;border:0;padding:0px">&nbsp;</td>
	 <td style="display: none;" colspan=10></td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p class=MsoNormal style='text-align:right;'><span lang=EN-US style='font-family:Arial;font-size:10pt'><span style='color:black'>
	  	<c:choose>
			<c:when test="${(OTSIC_NOTICE_VALUE.idType == ' ')}"><!--HKID-->
				<SCRIPT>
					var idNo = "<c:out value="${OTSIC_NOTICE_VALUE.idNo}"/>";
					document.write(idNo.substr(0,idNo.length - 1) + "(" + idNo.substr(idNo.length - 1,idNo.length) + ")");
				</SCRIPT>
			</c:when>
			<c:otherwise>
				  <c:out value="${OTSIC_NOTICE_VALUE.idType}"/>&nbsp;&nbsp;<c:out value="${OTSIC_NOTICE_VALUE.idNo}"/>
			</c:otherwise>
			</c:choose>
	  </span></span></p>
    </td>
   </tr>
  <tr>
	  <td  colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	    <p class=MsoNormal style='text-align:left;'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
		<span lang=EN-US style='font-family:Arial;font-size:10pt'><c:out value="${OTSIC_NOTICE_VALUE.nameEng}"/></span>
		</p>
	  </td>
   </tr>
   <tr>
	  <td  colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	    <p class=MsoNormal style='text-align:left;'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
		<span lang=ZH-TW style='font-size:10pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><c:out value="${OTSIC_NOTICE_VALUE.mailingAddr1}"/></span></p>
	  </td>
   </tr>
   <tr>
	  <td  colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	    <p class=MsoNormal style='text-align:left;'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
		<span lang=ZH-TW style='font-size:10pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><c:out value="${OTSIC_NOTICE_VALUE.mailingAddr2}"/></span></p>
	  </td>
   </tr>
   <tr>
	  <td  colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	    <p class=MsoNormal style='text-align:left;'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&&nbsp;</span>
		<span lang=ZH-TW style='font-size:10pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><c:out value="${OTSIC_NOTICE_VALUE.mailingAddr3}"/></span></p>
	  </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p class=MsoNormal style='text-align:right;'><span lang=EN-US style='font-family:Arial;font-size:9pt'></span></p><br>
    </td>

   </tr>
    <tr>
          <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'> 
            <p class=MsoNormal style='text-align:left;'><span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>先生/女士：</span></p>
     </td>
   </tr>
   <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
       <p class=MsoNormal style='text-align:left;'><span lang=EN-US style='font-family:Arial;font-size:9pt'>Dear Sir/Madam,</span></p><br>
     </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	  <p class=MsoNormal style='text-align:center;layout-grid-mode:char;'>
		<span lang=ZH-TW style='font-size:10pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><b>強制性修習的士服務改進課程通知書</b></span>
	  </p>
	  <p class=MsoNormal style='text-align:center;layout-grid-mode:char;'>
		<span lang=EN-US style='font-family:Arial;font-size:10pt'><b>OBLIGATORY ATTENDANCE OF TAXI SERVICE IMPROVEMENT COURSE NOTICE under</b></span>
	  </p>
	  <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:7pt'><span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:7pt'>&nbsp;</span>
	        <p class=MsoNormal style='text-align:center;layout-grid-mode:char;'> 
              <span lang=ZH-TW style='font-size:10pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><b>《的士司機違例記分條例》(第647章)</b></span> 
            </p>
	  <p class=MsoNormal style='text-align:center;layout-grid-mode:char;'>
	  	<span lang=EN-US style='font-family:Arial;font-size:10pt;letter-spacing:0pt'><b>TAXI-DRIVER-OFFENCE POINTS ORDINANCE, CAP.647</b></span>
	  </p>
   </td>
  </tr>
   <tr>
   <td colspan=14  style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:7pt'><span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:7pt'>&nbsp;</span>
    </td>
   </tr>
   <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
       <p class=MsoNormal style='text-align:left;'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	   		<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>根據紀錄，你在兩年內，因觸犯表列罪行而被記的士司機違例記分的總分已達<c:out value="${OTSIC_NOTICE_VALUE.tdop}"/>分。有關你的的士司機違例記分紀錄已表列如下：</span>
	   </p>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	   		<span lang=EN-US style='font-family:Arial;font-size:9pt'>According to records, the total number of taxi-driver-offence points incurred by you in relation to the scheduled offences committed within a period of 2 years is <c:out value="${OTSIC_NOTICE_VALUE.tdop}"/> points. The detail of your taxi-driver-offence points record is listed as follows:</span>
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
	  <table style="border-collapse: collapse;border-spacing:0">
	    <tr>
		  <td style="vertical-align:middle;height:14px;width:30px;border:0;padding:0px"></td>
		  <td  style="vertical-align:middle;height:14px;width:110px;border:0;padding:0px">
		  <table style="border-collapse: collapse;border-spacing:0;border-style:solid;width:100%"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th></tr>
		  <tr>
		  <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm; border-bottom: 1px solid black;vertical-align:top;width:100%;border:0;padding:0px'>
		  	<p class=MsoNormal style='text-align:center;'>
				<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>+違例事項代號</span>
			</p>
			<p class=MsoNormal style='text-align:center;'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>+Offence in</span>
			</p>
			<p class=MsoNormal style='text-align:center;'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>code</span>
			</p>
			</td>
			</tr>
			</table>
		  </td>
		  <td style="vertical-align:middle;height:14px;width:30px;border:0;padding:0px"></td>
		  <td style="vertical-align:middle;height:14px;width:130px;border:0;padding:0px">
		  <table style="border-collapse: collapse;border-spacing:0;border-style:solid;width:100%"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th></tr>
		  <tr>
		  <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm; border-bottom: 1px solid black;vertical-align:top;width:100%;border:0;padding:0px'>
		    <p class=MsoNormal style='text-align:center;'>
				<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>違例日期</span>
			</p>
			<p class=MsoNormal style='text-align:center;'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>Date of commission</span>
			</p>

			<p class=MsoNormal style='text-align:center;'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>of offence</span>
			</p>
			</td>
			</tr>
			</table>
		  </td>
		  <td style="vertical-align:middle;height:14px;width:30px;border:0;padding:0px"></td>
		  <td style="vertical-align:middle;height:14px;width:180px;border:0;padding:0px">
		  <table style="border-collapse: collapse;border-spacing:0;border-style:solid;width:100%"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th></tr>
		  <tr>
		  <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm; border-bottom: 1px solid black;vertical-align:top;width:100%;border:0;padding:0px'>
		    <p class=MsoNormal style='text-align:center;'>
				<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>定罪或須繳付定額罰款日期</span>
			</p>
			<p class=MsoNormal style='text-align:center;'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>Date of conviction/becoming</span>
			</p>
			<p class=MsoNormal style='text-align:center;'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>liable to fixed penalty</span>
			</p>
			</td>
			</tr>
			</table>
		  </td>
		  <td style="vertical-align:middle;height:14px;width:30px;border:0;padding:0px"></td>
		  <td style="vertical-align:middle;height:14px;width:140px;border:0;padding:0px">
		  <table style="border-collapse: collapse;border-spacing:0;border-style:solid;width:100%"><tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th></tr>
		  <tr>
		  <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm; border-bottom: 1px solid black;vertical-align:top;width:100%;border:0;padding:0px'>
		     <p class=MsoNormal style='text-align:center;'>
				<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>的士司機違例記分數目</span>
			 </p>
			 <p class=MsoNormal style='text-align:center;'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>Taxi-driver-offence</span>
			</p>
			<p class=MsoNormal style='text-align:center;'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>points incurred</span>
			</p>
			</td>
			</tr>
			</table>
		  </td>
		  <td style="vertical-align:middle;height:14px;width:10px;border:0;padding:0px"></td>
	    </tr>
	  </table>
	</td>
   </tr>
   <tr>
	<td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	  <table style="border-collapse: collapse;border-spacing:0">
	    <c:set var="totalPoint" value="0"/>
		<c:set var="count" value="0"/>
	    <c:forEach var="itemValue" items="${OTSIC_NOTICE_TICKET_MAP_VALUE_COLLECTION}">
	    <tr>
		  <td style="vertical-align:middle;height:14px;width:30px;border:0;padding:0px"></td>
		  <td  style="vertical-align:middle;height:14px;width:110px;border:0;padding:0px">
			<p class=MsoNormal style='text-align:center;'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'><c:out value="${itemValue.offenceCode}"/></span></span>
			</p>
		  </td>
		  <td style="vertical-align:middle;height:14px;width:30px;border:0;padding:0px"></td>
		  <td style="vertical-align:middle;height:14px;width:130px;border:0;padding:0px">
			<p class=MsoNormal style='text-align:center;'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'><fmt:formatDate value="${itemValue.offenceDate}" pattern="dd/MM/yyyy" /></span></span>
			</p>
		  </td>
		  <td style="vertical-align:middle;height:14px;width:30px;border:0;padding:0px"></td>
		  <td style="vertical-align:middle;height:14px;width:180px;border:0;padding:0px">
			<p class=MsoNormal style='text-align:center;'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'><fmt:formatDate value="${itemValue.convictionDate}" pattern="dd/MM/yyyy" /></span></span>
			</p>
		  </td>
		  <td style="vertical-align:middle;height:14px;width:30px;border:0;padding:0px"></td>
		  <td style="vertical-align:middle;height:14px;width:140px;border:0;padding:0px">
			<p class=MsoNormal style='text-align:center;'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'><c:out value="${itemValue.tdopPoint}"/></span></span>
			</p>
		  </td>
		  <td style="vertical-align:middle;height:14px;width:10px;border:0;padding:0px"></td>
	    </tr>
		<c:set var="itemPoint" value="${itemValue.tdopPoint}"/>
		<c:set var="totalPoint" value="${totalPoint + itemPoint}"/>
		<c:set var="count" value="${count + 1}"/>
		</c:forEach>
	  </table>
	</td>
   </tr>
   <tr>
	<td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	  <table style="border-collapse: collapse;border-spacing:0">
	    <tr>
		  <td style="vertical-align:middle;height:14px;width:30px;border:0;padding:0px"></td>
		  <td  style="vertical-align:middle;height:14px;width:110px;border:0;padding:0px">
		  </td>
		  <td style="vertical-align:middle;height:14px;width:30px;border:0;padding:0px"></td>
		  <td style="vertical-align:middle;height:14px;width:130px;border:0;padding:0px">
		  </td>
		  <td style="vertical-align:middle;height:14px;width:30px;border:0;padding:0px"></td>
		  <td style="vertical-align:middle;height:14px;width:180px;border:0;padding:0px">
		  </td>
		  <td style="vertical-align:middle;height:14px;width:30px;border:0;padding:0px"></td>
		  <td style="vertical-align:middle;height:14px;width:140px;border:0;padding:0px">
		  	<p class=MsoNormal style='text-align:center;line-height:1pt;text-align:center'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'>- - - - - -</span></span>
			</p>
			<p class=MsoNormal style='text-align:center;'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'><c:out value="${totalPoint}"/></span></span>
			</p>
		  </td>
		  <td style="vertical-align:middle;height:14px;width:10px;border:0;padding:0px"></td>
	    </tr>
		<c:choose>
			<c:when test="${count == 1}">
				<tr style="height:14px"><td style="border:0;padding:0px">
				<p class=MsoNormal style='text-align:center;'>
					<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'>&nbsp;</span></span>
				</p>
				</td><td style="display: none;" colspan="8"></td></tr>
				<tr style="height:14px"><td style="border:0;padding:0px">
				<p class=MsoNormal style='text-align:center;'>
					<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'>&nbsp;</span></span>
				</p>
				</td><td style="display: none;" colspan="8"></td></tr>
				<tr style="height:14px"><td style="border:0;padding:0px">
				<p class=MsoNormal style='text-align:center;'>
					<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'>&nbsp;</span></span>
				</p>
				</td><td style="display: none;" colspan="8"></td></tr>
			</c:when>
			<c:when test="${count == 2}">
				<tr style="height:14px"><td style="border:0;padding:0px">
				<p class=MsoNormal style='text-align:center;'>
					<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'>&nbsp;</span></span>
				</p>
				</td><td style="display: none;" colspan="8"></td></tr>
				<tr style="height:14px"><td style="border:0;padding:0px">
				<p class=MsoNormal style='text-align:center;'>
					<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'>&nbsp;</span></span>
				</p>
				</td><td style="display: none;" colspan="8"></td></tr>
			</c:when>
			<c:when test="${count == 3}">
				<tr style="height:14px"><td style="border:0;padding:0px">
				<p class=MsoNormal style='text-align:center;'>
					<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'>&nbsp;</span></span>
				</p>
				</td><td style="display: none;" colspan="8"></td></tr>
			</c:when>
		 </c:choose>
	  </table>
	</td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p class=MsoNormal style='text-align:left;'>
	  	<span lang=EN-US style='font-family:Arial;font-size:9pt'>+</span>
		<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>違例詳情，請參閱附頁</span><!-- Amended by Alison for CR-2013-021 on 30 Oct 2013 -->
	  </p>
	   <p class=MsoNormal style='text-align:left;'>
	  	<span lang=EN-US style='font-family:Arial;font-size:9pt'>+ For particulars of the offence(s), please refer to the attachment.</span> <!-- Amended by Alison for CR-2013-021 on 30 Oct 2013 -->
	  </p>
    </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;height:50%;border:0;padding:0px'>
     
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'><span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span>
	   		
    </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p class=MsoNormal style='text-left:left;'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	   		<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>按上述條例第20(1)條，除非署長另定一段較長期間*，你須在本通知書日期當日之後的3個月內，即<fmt:formatDate value="${OTSIC_NOTICE_VALUE.dueDate}" pattern="dd/MM/yyyy" />或之前，自費修習和完成的士服務改進課程。任何人無合理辯解而違反上述條款有關強制性修習的士服務改進課程的規定，即屬犯罪，根據上述條例第23(1)條，可被處最高罰款<fmt:formatNumber currencySymbol="${HKD_CURRENCY_SYMBOL}" value="${ISSUE_PRINTING_CTL_VALUE.remark}" />元及監禁1個月。</span>
	   </p>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	   		<span lang=EN-US style='font-family:Arial;font-size:9pt'>In accordance with section 20(1) of the above Ordinance, you shall attend and complete a taxi service improvement course at your own cost within 3 months after the date of this Notice, i.e. on or before <fmt:formatDate value="${OTSIC_NOTICE_VALUE.dueDate}" pattern="dd/MM/yyyy" />, unless the Commissioner has fixed a longer period of time*.  A person who, without reasonable excuse, contravenes the said provision which sets out the requirements for 
			the obligatory attendance of taxi service improvement course commits an offence and is liable to a maximum fine of $<fmt:formatNumber currencySymbol="${HKD_CURRENCY_SYMBOL}" value="${ISSUE_PRINTING_CTL_VALUE.remark}" /> and to imprisonment for 1 month under section 23(1) of the above Ordinance.</span>
	   </p>
    </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;height:50%;border:0;padding:0px'>
     
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:7pt'><span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:7pt'>&nbsp;</span>
	   		
    </td>
   </tr>
     <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'> 
       <p class=MsoNormal style='text-align:left;'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	   		<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><c:out value="${ISSUE_PRINTING_CTL_VALUE.commissorNameChi}"/><c:out value="${ISSUE_PRINTING_CTL_VALUE.contactNameChi}"/></span>
	   </p>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	   		<span lang=EN-US style='font-family:Arial;font-size:9pt'><c:out value="${ISSUE_PRINTING_CTL_VALUE.commissorNameEng}"/> <c:out value="${ISSUE_PRINTING_CTL_VALUE.contactNameEng}"/></span>
	   </p>
     </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
     
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:8pt'><span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:8pt'></span>
	   		
    </td>
   </tr>
    <tr>
      <td colspan="13" style="text-align:-webkit-center;width:60%;border:0;padding:0px"><span lang=ZH-TW style='font-size:10pt;font-family:MingLiU_HKSCS'>請參閱附頁「重要事項」</span></td>
	  <td style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	  	<p class=MsoNormal style='text-align:center;text-justify:inter-character;layout-grid-mode:char'>
			<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>運輸署署長</span>
		</p>
	  </td>
   </tr>
   <tr>
	  <td colspan="13" style="text-align:-webkit-center;width:60%;border:0;padding:0px"><span lang=EN-US style='font-size:10pt;font-family:Arial'>Please read the "Important Notes" attached.</span></td>
	  <td style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	  	<p class=MsoNormal style='text-align:center;text-justify:inter-character;layout-grid-mode:char'>
			<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>(<c:out value="${ISSUE_PRINTING_CTL_VALUE.issueOfficerNameChi}"/></span><span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>&nbsp;代行)</span>
		</p>
	  </td>
   </tr>
   <tr>
      <td colspan="13" style="width:60%;border:0;padding:0px">&nbsp;</td>
	  <td style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	  	<p class=MsoNormal style='text-align:center;text-justify:inter-character;layout-grid-mode:char'>
			<span lang=EN-US style='font-family:Arial;font-family:Arial;font-size:9pt'>Yours faithfully,</span>
		</p>
	  </td>
   </tr>
   <tr>
      <td colspan="13" style="width:60%;border:0;padding:0px">
	    <p class=MsoNormal style='text-align:left;text-justify:inter-character;layout-grid-mode:char'>
			<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>日期</span>
		</p>
	  </td>
	  <td style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	  	<p class=MsoNormal style='text-align:center;text-justify:inter-character;layout-grid-mode:char'>
			<span lang=EN-US style='font-family:Arial;font-family:Arial;font-size:9pt'><span style='color:black'><c:out value="${ISSUE_PRINTING_CTL_VALUE.issueOfficerNameEng}"/></span></span>
		</p>
	  </td>
   </tr>
    <tr>
      <td colspan="13" style="width:60%;border:0;padding:0px">
	        <p class=MsoNormal style='text-align:left;text-justify:inter-character;layout-grid-mode:char'>
			<span lang=EN-US style='font-family:Arial;font-family:Arial;font-size:9pt'>Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatDate value="${OTSIC_NOTICE_VALUE.issueDate}" pattern="dd/MM/yyyy" /></span>
		</p>
	  </td>
	  <td style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	  	<p class=MsoNormal style='text-align:center;text-justify:inter-character;layout-grid-mode:char'>
			<span lang=EN-US style='font-family:Arial;font-family:Arial;font-size:9pt'>for Commissioner for Transport</span>
		</p>
	  </td>
   </tr>
  <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;height:50%;border:0;padding:0px'>
     
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'><span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span>
	   		
    </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p class=MsoNormal style='text-left:left;text-align:left'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
			  <span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>*如你不能在本通知書日期之後的3個月內完成的士服務改進課程，你可在3個月</span><span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;border-bottom:2pt double #000000'>期限屆滿前</span><span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>以書面向運輸署違例駕駛記分辦事處(香港灣仔告士打道5號稅務大樓30樓)提出申請。請注意，郵資不足的信件將不獲接收。為使郵件能妥善送達本署，請確保郵件貼上<u>足夠郵資及註明回郵地址</u>。</span>
            </p>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	   		<span lang=EN-US style='font-family:Arial;font-size:9pt'>*You may apply in writing to the Driving-Offence Points Office of the Transport Department (30/F, Revenue Tower, 5 Gloucester Road, Wan Chai, Hong Kong) </span>
			<span lang=EN-US style='font-family:Arial;font-size:9pt;border-bottom:2pt double #000000'>before</span>
			<span lang=EN-US style='font-family:Arial;font-size:9pt'> the end of the period of 3 months if you are not able to complete the taxi service improvement course within 3 months after the date of this notice. Please note that underpaid mail items will be rejected. For proper delivery of your mail items to the department, please ensure your mail items bear <u>sufficient postage with return address</u>.</span>
	   </p>
    </td>
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
       <p class=MsoNormal style='text-left:left;text-align:left'>
	   	  <span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>附註：此乃電腦編印通知書，無需授權人員簽署。</span>
	   </p>
     </td>
   </tr>
    <tr>
     <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
       <p class=MsoNormal style='text-left:left;text-align:left'>
	   	  <span lang=EN-US style='font-family:Arial;font-size:9pt'>Note: This is a computer-generated advice which requires no authorized signature.</span>
	   </p>
     </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:8pt'>
	   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:8pt'>&nbsp;</span>	
    </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p class=MsoNormal style='text-align:center;text-justify:inter-character;layout-grid-mode:char'>
	  	<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><span style='color:black'><c:out value="${ISSUE_PRINTING_CTL_VALUE.officeNameChi}"/></span></span>
	  </p>
    </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p class=MsoNormal style='text-align:center;text-justify:inter-character;layout-grid-mode:char'>
	  	<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'><c:out value="${ISSUE_PRINTING_CTL_VALUE.officeNameEng}"/></span></span>
	  </p>
    </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p class=MsoNormal style='text-align:center;text-justify:inter-character;layout-grid-mode:char'>
	  	<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><span style='color:black'><c:out value="${ISSUE_PRINTING_CTL_VALUE.officeAddressChi}"/></span></span>
	  </p>
    </td>
   </tr>
   <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;border:0;padding:0px'>
      <p class=MsoNormal style='text-align:center;text-justify:inter-character;layout-grid-mode:char'>
	  	<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'><c:out value="${ISSUE_PRINTING_CTL_VALUE.officeAddressEng}"/></span></span>
	  </p>
    </td>
   </tr>
      <tr>
    <td colspan=14 style='padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm;vertical-align:top;height:50%;border:0;padding:0px'>
     
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-character;layout-grid-mode:char;line-height:5pt'><span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span>
	   		
    </td>
   </tr>
  </table>
  </td></tr>
  </tfoot>
</table>