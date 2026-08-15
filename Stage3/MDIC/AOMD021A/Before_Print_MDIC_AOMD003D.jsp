<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print"%>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable"%>
<%@ page import="hk.gov.valid.util.RequestConstant"%>
<%@ page import="hk.gov.valid.util.CodeTableConstant" %>


<table style="margin: 0 auto; width: 720px; height: 98%;">
 <tr style="vertical-align: top;">
 <td style="text-align: center;" >
  <table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 100%; margin: 0 auto;'>
  <tr style="display: none;">
	  <td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td><td>11</td><td>12</td><td>13</td><td>14</td><td>15</td><td>16</td><td>17</td>
  </tr>
   <tr>
            <td colspan=5 style='vertical-align: top; text-align: left; width:376px;padding:0cm;height:0'><img style="width: 260px; height: 69px;" src="<print:BlankFormPrint imageName='TD_Logo.gif'/>" alt=""/>
            </td>
	   <td colspan="12" style="display: none;"></td>
   </tr>
     <tr>
   	  <td style="width: 300px;"  >
	  	<p class=MsoNormal style='text-align:left;line-height:10pt'>
			<span lang=ZH-TW style='font-size:10pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>檔號 </span><span lang=EN-US style='font-family:Arial;font-size:10pt'>Ref.:</span><span lang=EN-US style='font-family:Arial;font-size:10pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span lang=EN-US style='font-family:Arial;font-size:10pt'><span style='color:black'><c:out value="${MDIC_NOTICE_VALUE.mdicNoticeRefNo}"/></span></span>
		</p>
	  </td>
	  <td style="width: 12px;">&nbsp;</td>
	  <td style="width: 12px;">&nbsp;</td>
	  <td style="width: 362px;">&nbsp;</td>
		 <td colspan="13" style="display: none;"></td>
   </tr>
   <tr>
	 <td style="width: 300px;">
	 <c:choose>
		<c:when test="${!empty ISSUE_PRINTING_CTL_VALUE.telNo1}">
			<p class=MsoNormal style='text-align:left;line-height:10pt'><span lang=ZH-TW style='font-size:10pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>電話號碼 </span><span lang=EN-US style='font-family:Arial;font-size:10pt'>Tel No.:</span><span lang=EN-US style='font-family:Arial;font-size:10pt'><span style='color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${ISSUE_PRINTING_CTL_VALUE.telNo1}"/></span></span>
			</p>
		</c:when>
	 </c:choose>
	 </td>
	 <td style="width: 12px;">&nbsp;</td>
	 <td style="width: 12px;">&nbsp;</td>
	 <td style="width: 362px;">&nbsp;</td>
	   <td colspan="13" style="display: none;"></td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
      <p class=MsoNormal style='text-align:right'><span lang=EN-US style='font-family:Arial;font-size:10pt'><span style='color:black'>
	  	<c:choose>
			<c:when test="${(MDIC_NOTICE_VALUE.idType == ' ')}"><!--HKID-->
				<SCRIPT >
					var idNo = "<c:out value="${MDIC_NOTICE_VALUE.idNo}"/>";
					document.write(idNo.substr(0,idNo.length - 1) + "(" + idNo.substr(idNo.length - 1,idNo.length) + ")");
				</SCRIPT>
			</c:when>
			<c:otherwise>
				  <c:out value="${MDIC_NOTICE_VALUE.idType}"/>&nbsp;&nbsp;<c:out value="${MDIC_NOTICE_VALUE.idNo}"/>
			</c:otherwise>
			</c:choose>
	  </span></span></p>
    </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
  <tr>
	  <td  colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
	    <p class=MsoNormal style='text-align:left'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
		<span lang=EN-US style='font-family:Arial;font-size:10pt'><c:out value="${MDIC_NOTICE_VALUE.nameEng}"/></span>
		</p>
	  </td>
	  <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
	  <td  colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
	    <p class=MsoNormal style='text-align:left'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
		<span lang=ZH-TW style='font-size:10pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><c:out value="${MDIC_NOTICE_VALUE.mailingAddr1}"/></span></p>
	  </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
	  <td  colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
	    <p class=MsoNormal style='text-align:left'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
		<span lang=ZH-TW style='font-size:10pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><c:out value="${MDIC_NOTICE_VALUE.mailingAddr2}"/></span></p>
	  </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
	  <td  colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
	    <p class=MsoNormal style='text-align:left'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
		<span lang=ZH-TW style='font-size:10pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><c:out value="${MDIC_NOTICE_VALUE.mailingAddr3}"/></span></p>
	  </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
      <p class=MsoNormal style='text-align:right'><span lang=EN-US style='font-family:Arial;font-size:9pt'></span></p><br>
    </td>
	   <td colspan="3" style="display: none;"></td>

   </tr>
    <tr>
          <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
            <p class=MsoNormal style='text-align:left'><span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>先生/女士：</span></p>
     </td>
		<td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
     <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
       <p class=MsoNormal style='text-align:left'><span lang=EN-US style='font-family:Arial;font-size:9pt'>Dear Sir/Madam,</span></p><br>
     </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
	  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'>
		<span lang=ZH-TW style='font-size:10pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><b>強制性修習駕駛改進課程通知書</b></span>
	  </p>
	  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'>
		<span lang=EN-US style='font-family:Arial;font-size:10pt'><b>OBLIGATORY ATTENDANCE OF DRIVING IMPROVEMENT COURSE NOTICE under</b></span>
	  </p>
	  <p class=MsoNormal style='text-align:justify;text-justify:inter-ideograph;layout-grid-mode:char;line-height:7pt'><span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:7pt'>&nbsp;</span>
	        <p class=MsoNormal style='text-align:center;layout-grid-mode:char'>
              <span lang=ZH-TW style='font-size:10pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><b>《道路交通(違例駕駛記分)條例》(第375章)</b></span>
            </p>
	  <p class=MsoNormal style='text-align:center;layout-grid-mode:char'>
	  	<span lang=EN-US style='font-family:Arial;font-size:10pt;letter-spacing:0pt'><b>ROAD TRAFFIC (DRIVING-OFFENCE POINTS) ORDINANCE, CAP.375</b></span>
	  </p>
   </td>
	   <td colspan="3" style="display: none;"></td>
  </tr>
   <tr>
   <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
      <p class=MsoNormal style='text-align:justify;text-justify:inter-ideograph;layout-grid-mode:char;line-height:7pt'><span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:7pt'>&nbsp;</span>
    </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
     <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
       <p class=MsoNormal style='text-align:left;'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	   		<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>根據紀錄，你在兩年內，因觸犯有關的違例事項而被記違例駕駛分數，違例駕駛分數總分已達<c:out value="${MDIC_NOTICE_VALUE.dop}"/>分，有關你的違例駕駛記分紀錄已表列如下：</span>
	   </p>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-ideograph;layout-grid-mode:char'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	   		<span lang=EN-US style='font-family:Arial;font-size:9pt'>According to records, the total number of driving-offence points incurred by you in relation to offences committed within a period of 2 years is <c:out value="${MDIC_NOTICE_VALUE.dop}"/> points. The detail of your driving-offence points record is listed as follows:</span>
	   </p>
     </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
      <p class=MsoNormal style='text-align:right'><span lang=EN-US style='font-family:Arial;font-size:9pt'></span></p><br>
    </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
	<td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
	  <table style="border-spacing: 0px; border-collapse: collapse">
	    <tr>
		  <td style="width: 30px; vertical-align: middle; height: 14px;"></td>
		  <td style="width: 110px; vertical-align: middle; height: 14px;" >
		  <table style="width: 100%; border-spacing: 0px; border-collapse: collapse; border-bottom: 1px solid">
		  <tr style="display: none;"><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
		  <tr>
		  <td colspan=14 style='vertical-align: top; border: 1px solid; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
		  	<p class=MsoNormal style='text-align:center'>
				<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>+違例事項代號</span>
			</p>
			<p class=MsoNormal style='text-align:center'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>+Offence in</span>
			</p>
			<p class=MsoNormal style='text-align:center'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>code</span>
			</p>
			</td>
			</tr>
			</table>
		  </td>
		  <td style="width: 30px; vertical-align: middle; height: 14px;"></td>
		  <td style="width: 130px; vertical-align: middle; height: 14px;">
		  <table style="width: 100%; border-spacing: 0px; border-collapse: collapse; border-bottom: 1px solid">
		  <tr style="display: none;"><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
		  <tr>
		  <td colspan=14 style='vertical-align: top; border: 1px solid; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
		    <p class=MsoNormal style='text-align:center'>
				<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>違例日期</span>
			</p>
			<p class=MsoNormal style='text-align:center'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>Date of commission</span>
			</p>

			<p class=MsoNormal style='text-align:center'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>of offence</span>
			</p>
			</td>
			</tr>
			</table>
		  </td>
		  <td style="width: 30px; vertical-align: middle; height: 14px;"></td>
		  <td style="width: 180px; vertical-align: middle; height: 14px;">
		  <table style="width: 100%; border-spacing: 0px; border-collapse: collapse; border-bottom: 1px solid">
		  <tr style="display: none;"><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
		  <tr>
		  <td colspan=14 style='vertical-align: top; border: 1px solid; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
		    <p class=MsoNormal style='text-align:center'>
				<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>定罪或須繳付定額罰款日期</span>
			</p>
			<p class=MsoNormal style='text-align:center'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>Date of conviction/becoming</span>
			</p>
			<p class=MsoNormal style='text-align:center'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>liable to fixed penalty</span>
			</p>
			</td>
			</tr>
			</table>
		  </td>
		  <td style="width: 30px; vertical-align: middle; height: 14px;"></td>
		  <td style="width: 140px; vertical-align: middle; height: 14px;">
		  <table style="width: 100%; border-spacing: 0px; border-collapse: collapse; border-bottom: 1px solid">
		  <tr style="display: none;"><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
		  <tr>
		  <td colspan=14 style='vertical-align: top; border: 1px solid; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
		     <p class=MsoNormal style='text-align:center'>
				<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>違例駕駛記分數目</span>
			 </p>
			 <p class=MsoNormal style='text-align:center'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>Driving-offence</span>
			</p>
			<p class=MsoNormal style='text-align:center'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>points incurred</span>
			</p>
			</td>
			</tr>
			</table>
		  </td>
		  <td style="width: 10px; vertical-align: middle; height: 14px;"></td>
	    </tr>
	  </table>
	</td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
	<td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
	  <table style="border-spacing: 0px; border-collapse: collapse">
	    <c:set var="totalPoint" value="0"/>
		<c:set var="count" value="0"/>
	    <c:forEach var="itemValue" items="${MDIC_NOTICE_TICKET_MAP_VALUE_COLLECTION}">
	    <tr>
		  <td style="width: 30px; vertical-align: middle; height: 14px;"></td>
		  <td style="width: 110px; vertical-align: middle; height: 14px;" >
			<p class=MsoNormal style='text-align:center'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'><c:out value="${itemValue.offenceCode}"/></span></span>
			</p>
		  </td>
		  <td style="width: 30px; vertical-align: middle; height: 14px;"></td>
		  <td style="width: 130px; vertical-align: middle; height: 14px;">
			<p class=MsoNormal style='text-align:center'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'><fmt:formatDate value="${itemValue.offenceDate}" pattern="dd/MM/yyyy" /></span></span>
			</p>
		  </td>
		  <td style="width: 30px; vertical-align: middle; height: 14px;"></td>
		  <td style="width: 180px; vertical-align: middle; height: 14px;">
			<p class=MsoNormal style='text-align:center'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'><fmt:formatDate value="${itemValue.convictionDate}" pattern="dd/MM/yyyy" /></span></span>
			</p>
		  </td>
		  <td style="width: 30px; vertical-align: middle; height: 14px;"></td>
		  <td style="width: 140px; vertical-align: middle; height: 14px;">
			<p class=MsoNormal style='text-align:center'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'><c:out value="${itemValue.dopPoint}"/></span></span>
			</p>
		  </td>
		  <td style="width: 10px; vertical-align: middle; height: 14px;"></td>
	    </tr>
		<c:set var="itemPoint" value="${itemValue.dopPoint}"/>
		<c:set var="totalPoint" value="${totalPoint + itemPoint}"/>
		<c:set var="count" value="${count + 1}"/>
		</c:forEach>
	  </table>
	</td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
	<td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
	  <table style="border-spacing: 0px; border-collapse: collapse">
	    <tr>
		  <td style="width: 30px; vertical-align: middle; height: 14px;"></td>
		  <td style="width: 110px; vertical-align: middle; height: 14px;" >
		  </td>
		  <td style="width: 30px; vertical-align: middle; height: 14px;"></td>
		  <td style="width: 130px; vertical-align: middle; height: 14px;">
		  </td>
		  <td style="width: 30px; vertical-align: middle; height: 14px;"></td>
		  <td style="width: 180px; vertical-align: middle; height: 14px;">
		  </td>
		  <td style="width: 30px; vertical-align: middle; height: 14px;"></td>
		  <td style="width: 140px; vertical-align: middle; height: 14px;">
		  	<p class=MsoNormal style='text-align:center;line-height:1pt'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'>- - - - - -</span></span>
			</p>
			<p class=MsoNormal style='text-align:center'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'><c:out value="${totalPoint}"/></span></span>
			</p>
		  </td>
		  <td style="width: 10px; vertical-align: middle; height: 14px;"></td>
	    </tr>
		<c:choose>
			<c:when test="${count == 1}">
				<tr style="height: 14px;"><td>
				<p class=MsoNormal style='text-align:center'>
					<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'>&nbsp;</span></span>
				</p>
				</td>
				<td colspan="8" style="display: none;"></td>
				</tr>
				<tr style="height: 14px;"><td>
				<p class=MsoNormal style='text-align:center'>
					<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'>&nbsp;</span></span>
				</p>
				</td>
					<td colspan="8" style="display: none;"></td></tr>
				<tr style="height: 14px;"><td>
				<p class=MsoNormal style='text-align:center'>
					<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'>&nbsp;</span></span>
				</p>
				</td>
					<td colspan="8" style="display: none;"></td></tr>
			</c:when>
			<c:when test="${count == 2}">
				<tr style="height: 14px;"><td>
				<p class=MsoNormal style='text-align:center'>
					<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'>&nbsp;</span></span>
				</p>
				</td>
					<td colspan="8" style="display: none;"></td></tr>
				<tr style="height: 14px;"><td>
				<p class=MsoNormal style='text-align:center'>
					<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'>&nbsp;</span></span>
				</p>
				</td>
					<td colspan="8" style="display: none;"></td></tr>
			</c:when>
			<c:when test="${count == 3}">
				<tr style="height: 14px;"><td>
				<p class=MsoNormal style='text-align:center'>
					<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'>&nbsp;</span></span>
				</p>
				</td>
					<td colspan="8" style="display: none;"></td></tr>
			</c:when>
		 </c:choose>
	  </table>
	</td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
      <p class=MsoNormal style='text-align:left'>
	  	<span lang=EN-US style='font-family:Arial;font-size:9pt'>+</span>
		<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>違例詳情，請參閱附頁</span><!-- Amended by Alison for CR-2013-021 on 30 Oct 2013 -->
	  </p>
	   <p class=MsoNormal style='text-align:left'>
	  	<span lang=EN-US style='font-family:Arial;font-size:9pt'>+ For particulars of offence, please see attachment.</span> <!-- Amended by Alison for CR-2013-021 on 30 Oct 2013 -->
	  </p>
    </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; height: 50%; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>

	   <p class=MsoNormal style='text-align:justify;text-justify:inter-ideograph;layout-grid-mode:char;line-height:5pt'><span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span>

    </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
      <p class=MsoNormal style='text-align:left'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	   		<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>按上述條例第8AA(1)條，除非署長另定一段較長期間*，你須在本通知書日期當日之後的3個月內，即<fmt:formatDate value="${MDIC_NOTICE_VALUE.dueDate}" pattern="dd/MM/yyyy" />或之前，自費修習和完成駕駛改進課程。任何人無合理辯解而違反上述條款有關強制性修習駕駛改進課程的規定，即屬犯罪，根據上述條例第8AA(5)條，可被處最高罰款<fmt:formatNumber currencySymbol="${HKD_CURRENCY_SYMBOL}" value="${ISSUE_PRINTING_CTL_VALUE.remark}" />元及監禁1個月。</span>
	   </p>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-ideograph;layout-grid-mode:char'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	   		<span lang=EN-US style='font-family:Arial;font-size:9pt'>In accordance with section 8AA(1) of the above Ordinance, you shall attend and complete a driving improvement course at your own cost within 3 months after the date of this Notice, ie. on or before <fmt:formatDate value="${MDIC_NOTICE_VALUE.dueDate}" pattern="dd/MM/yyyy" />, unless the Commissioner has fixed a longer period of time*.  A person who, without reasonable excuse, contravenes the said provision which sets out the requirements for
			the obligatory attendance of driving improvement course commits an offence and is liable to a maximum fine of $<fmt:formatNumber currencySymbol="${HKD_CURRENCY_SYMBOL}" value="${ISSUE_PRINTING_CTL_VALUE.remark}" /> and to imprisonment for 1 month under section 8AA(5) of the above Ordinance.</span>
	   </p>
    </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; height: 50%; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>

	   <p class=MsoNormal style='text-align:justify;text-justify:inter-ideograph;layout-grid-mode:char;line-height:7pt'><span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:7pt'>&nbsp;</span>

    </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
     <tr>
     <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
       <p class=MsoNormal style='text-align:left'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	   		<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><c:out value="${ISSUE_PRINTING_CTL_VALUE.commissorNameChi}"/><c:out value="${ISSUE_PRINTING_CTL_VALUE.contactNameChi}"/></span>
	   </p>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-ideograph;layout-grid-mode:char'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	   		<span lang=EN-US style='font-family:Arial;font-size:9pt'><c:out value="${ISSUE_PRINTING_CTL_VALUE.commissorNameEng}"/> <c:out value="${ISSUE_PRINTING_CTL_VALUE.contactNameEng}"/></span>
	   </p>
     </td>
		 <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>

	   <p class=MsoNormal style='text-align:justify;text-justify:inter-ideograph;layout-grid-mode:char;line-height:8pt'><span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:8pt'>&nbsp;</span>

    </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
    <tr>
      <td style="width: 300px;">&nbsp;</td>
	  <td style="width: 12px;">&nbsp;</td>
	  <td style="width: 12px;">&nbsp;</td>
	  <td colspan=14 style='vertical-align: top; width: 362px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
	  	<p class=MsoNormal style='text-align:center;text-justify:inter-ideograph;layout-grid-mode:char'>
			<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>運輸署署長</span>
		</p>
	  </td>
   </tr>
   <tr>
	  <td style="width: 300px;">&nbsp;</td>
	  <td style="width: 12px;">&nbsp;</td>
	  <td style="width: 12px;">&nbsp;</td>
	  <td colspan=14 style='vertical-align: top; width: 362px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
	  	<p class=MsoNormal style='text-align:center;text-justify:inter-ideograph;layout-grid-mode:char'>
			<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>(<c:out value="${ISSUE_PRINTING_CTL_VALUE.issueOfficerNameChi}"/></span><span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>代行)</span>
		</p>
	  </td>
   </tr>
   <tr>
      <td style="width: 300px;">&nbsp;</td>
	  <td style="width: 12px;">&nbsp;</td>
	  <td style="width: 12px;">&nbsp;</td>
	  <td colspan=14 style='vertical-align: top; width: 362px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
	  	<p class=MsoNormal style='text-align:left;text-justify:inter-ideograph;layout-grid-mode:char'>
			<span lang=EN-US style='font-family:Arial;font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Yours faithfully,</span>
		</p>
	  </td>
   </tr>
   <tr>
      <td style="width: 300px;">
	    <p class=MsoNormal style='text-align:left;text-justify:inter-ideograph;layout-grid-mode:char'>
			<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>日期</span>
		</p>
	  </td>
	  <td style="width: 12px;">&nbsp;</td>
	  <td style="width: 12px;">&nbsp;</td>
	  <td colspan=14 style='vertical-align: top; width: 362px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
	  	<p class=MsoNormal style='text-align:center;text-justify:inter-ideograph;layout-grid-mode:char'>
			<span lang=EN-US style='font-family:Arial;font-family:Arial;font-size:9pt'><span style='color:black'><c:out value="${ISSUE_PRINTING_CTL_VALUE.issueOfficerNameEng}"/></span></span>
		</p>
	  </td>
   </tr>
    <tr>
      <td style="width: 300px;">
	        <p class=MsoNormal style='text-align:left;text-justify:inter-ideograph;layout-grid-mode:char'>
			<span lang=EN-US style='font-family:Arial;font-family:Arial;font-size:9pt'>Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatDate value="${MDIC_NOTICE_VALUE.issueDate}" pattern="dd/MM/yyyy" /></span>
		</p>
	  </td>
	  <td style="width: 12px;">&nbsp;
	  </td>
	  <td style="width: 12px;">&nbsp;</td>
	  <td colspan=14 style='vertical-align: top; width: 362px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
	  	<p class=MsoNormal style='text-align:center;text-justify:inter-ideograph;layout-grid-mode:char'>
			<span lang=EN-US style='font-family:Arial;font-family:Arial;font-size:9pt'>for Commissioner for Transport</span>
		</p>
	  </td>
   </tr>
  <tr>
    <td colspan=14 style='vertical-align: top; height: 50%; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>

	   <p class=MsoNormal style='text-align:justify;text-justify:inter-ideograph;layout-grid-mode:char;line-height:5pt'><span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span>

    </td>
	  <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
      <p class=MsoNormal style='text-align:left'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
			  <span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>*如你不能在本通知書日期之後的3個月內完成駕駛改進課程，你可在3個月</span><span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;border-bottom:2pt double #000000'>期限屆滿前</span><span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>以書面向九龍何文田培正道19號運輸署駕駛事務組提出申請。</span>
            </p>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-ideograph;layout-grid-mode:char'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
	   		<span lang=EN-US style='font-family:Arial;font-size:9pt'>*You may apply in writing to the Driving Services Section of the Transport Department at 19 Pui Ching Road, Homantin,Kln </span>
			<span lang=EN-US style='font-family:Arial;font-size:9pt;border-bottom:2pt double #000000'>before</span>
			<span lang=EN-US style='font-family:Arial;font-size:9pt'> the end of the period of 3 months if you are not able to complete the driving improvement course within 3 months after the date of this  notice.</span>
	   </p>
    </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   </table>
  </td>
  </tr>

    <tfoot >
  <tr style="vertical-align: bottom;">
  <td style="text-align: center; width: 100%;">
  <table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 100%; margin: 0 auto;'>
	  <tr style="display: none;">
		  <td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td><td>11</td><td>12</td><td>13</td><td>14</td>
	  </tr>
   <tr>
     <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
       <p class=MsoNormal style='text-align:left'>
	   	  <span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>附註：此乃電腦編印通知書，無需授權人員簽署。</span>
	   </p>
     </td>
   </tr>
    <tr>
     <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
       <p class=MsoNormal style='text-align:left'>
	   	  <span lang=EN-US style='font-family:Arial;font-size:9pt'>Note: This is the computer-generated advice which requires no authorized signature.</span>
	   </p>
     </td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
	   <p class=MsoNormal style='text-align:justify;text-justify:inter-ideograph;layout-grid-mode:char;line-height:8pt'>
	   <span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:8pt'>&nbsp;</span>
    </td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
      <p class=MsoNormal style='text-align:center;text-justify:inter-ideograph;layout-grid-mode:char'>
	  	<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><span style='color:black'><c:out value="${ISSUE_PRINTING_CTL_VALUE.officeNameChi}"/></span></span>
	  </p>
    </td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
      <p class=MsoNormal style='text-align:center;text-justify:inter-ideograph;layout-grid-mode:char'>
	  	<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'><c:out value="${ISSUE_PRINTING_CTL_VALUE.officeNameEng}"/></span></span>
	  </p>
    </td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
      <p class=MsoNormal style='text-align:center;text-justify:inter-ideograph;layout-grid-mode:char'>
	  	<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'><span style='color:black'><c:out value="${ISSUE_PRINTING_CTL_VALUE.officeAddressChi}"/></span></span>
	  </p>
    </td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
      <p class=MsoNormal style='text-align:center;text-justify:inter-ideograph;layout-grid-mode:char'>
	  	<span lang=EN-US style='font-family:Arial;font-size:9pt'><span style='color:black'><c:out value="${ISSUE_PRINTING_CTL_VALUE.officeAddressEng}"/></span></span>
	  </p>
    </td>
   </tr>
      <tr>
    <td colspan=14 style='vertical-align: top; height: 50%; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>

	   <p class=MsoNormal style='text-align:justify;text-justify:inter-ideograph;layout-grid-mode:char;line-height:5pt'><span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span>

    </td>
   </tr>
  </table>
  </td></tr>
  </tfoot>
</table>
