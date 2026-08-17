<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print"%>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="tdcustom"%>
<%@ page import="hk.gov.valid.util.RequestConstant"%>
<%@ page import="hk.gov.valid.util.SessionConstant"%>
<%@ page import="hk.gov.valid.util.CodeTableConstant"%>
<%@ page import="hk.gov.valid.driver.util.DriverConstant"%>

<table style="margin: 0 auto; width: 670px; height: 100%;">
 <tr style="vertical-align: top;">
 <td style="text-align: center;">
  <table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 100%; margin: 0 auto;'>
	  <tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th><th>Col15</th><th>Col16</th><th>Col17</th></tr>
   <tr>
            <td colspan=5 style='vertical-align: top; text-align: left; width:376px;padding:0cm;height:0'> <span style='mso-ignore:vglayout;position:absolute;z-index:1;left:159px;top:53px;width:154px;height:2px'></span><img style="width: 260px; height: 69px;" src="<print:BlankFormPrint imageName='TD_Logo.gif'/>" alt=""/>
			<!--<img width=260 height=69 src="<print:BlankFormPrint imageName='TD_Logo.gif'/>"/>-->
			<!--<img width=289 height=74 src="http://localhost:7001/valid/images/testLogo.jpg"/>-->
            </td>
	   <td colspan="12" style="display: none;"></td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>&nbsp;
      </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>&nbsp;
      </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
    <tr>
     <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
       <p class=MsoNormal style='text-align:left;word-break:break-all'><span lang=EN-US style='font-family:Arial;font-size:9pt'><span style="font-family:MingLiU_HKSCS;"><c:out value="${LEGAL_ENTITY_VALUE.nameChi}" /></span>&nbsp;<codetable:out value="<%=CodeTableConstant.TITLE_CODE%>" formatType="INTERPRETATION" selected="${LEGAL_ENTITY_VALUE.titleCode}" language="CHINESE"/>：</span></p>     </td>
		<td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
     <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
       <p class=MsoNormal style='text-align:left;word-break:break-all'><span lang=EN-US style='font-family:Arial;font-size:9pt'>Dear &nbsp;<codetable:out value="<%=CodeTableConstant.TITLE_CODE%>" formatType="<%=CodeTableConstant.INTERPRETATION%>" selected="${LEGAL_ENTITY_VALUE.titleCode}"/>&nbsp;<c:out value="${LEGAL_ENTITY_VALUE.nameEng}" />,</span></p>     </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>&nbsp;
      </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
          <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
            <p class=MsoNormal style='text-align:left;word-break:break-all'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>本署曾郵寄下列的強制性修習駕駛改進課程通知書給你，但獲香港郵政退回。根據記錄，你尚未完成修習和完成有關課程。現隨函夾附有關的通知書給你：</span>
            </p></td>
	   <td colspan="3" style="display: none;"></td>
	</tr>
	<tr>
	  <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
          <p class=MsoNormal style='text-align:justify;text-justify:inter-ideograph;layout-grid-mode:char'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span lang=EN-US style='font-family:Arial;font-size:9pt'>The following obligatory attendance of driving improvement course notice(s) had been previously sent by post to you, but the said notice(s) was/were returned from the Hong Kong Post. According to our records, you have not yet attended or completed the course(s). The said notice(s), together with this covering letter, is/are now handed to you:</span>
	   </p>
		  </td>
		<td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>&nbsp;
      </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
	<td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
	  <table style="width: 666px; border-spacing: 0px; border-collapse: collapse">
	    <tr >
		  <td style="width: 6%; vertical-align: middle; height: 14px;"></td>
		  <td style="width: 10%; vertical-align: top; height: 14px;">
		  	<table style="width: 100%; border-spacing: 0px; border-collapse: collapse; border-bottom: 1px solid">
			  <tr>
			    <td style="width: 100%; vertical-align: top; height: 50px; border: 1px solid; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm">
				  <p class=MsoNormal style='text-align:center;word-break:break-all'>
				<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>編號</span>			</p>
			<p class=MsoNormal style='text-align:center;word-break:break-all'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>No.</span>			</p></td>
			  </tr>
			</table>
		  </td>
		  <td style="width: 4%; vertical-align: middle; height: 14px;"></td>
		  <td style="width: 22%; vertical-align: top; height: 14px;">
		  	<table style="width: 100%; border-spacing: 0px; border-collapse: collapse; border-bottom: 1px solid">
			  <tr>
			    <td style="width: 100%; vertical-align: top; height: 50px; border: 1px solid; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm">
				  <p class=MsoNormal style='text-align:center;word-break:break-all'>
				<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>通知書編號</span>			</p>
			<p class=MsoNormal style='text-align:center;word-break:break-all'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>Notice Reference No.</span>			</p></td>
			  </tr>
			</table>
		  </td>
		  <td style="width: 4%; vertical-align: middle; height: 14px;"></td>
		  <td style="width: 22%; vertical-align: top; height: 14px;">
		    <table style="width: 100%; border-spacing: 0px; border-collapse: collapse; border-bottom: 1px solid">
			  <tr>
			    <td style="width: 100%; vertical-align: top; height: 50px; border: 1px solid; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm">
		    <p class=MsoNormal style='text-align:center;word-break:break-all'>
				<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>發出通知書日期</span>			</p>
			<p class=MsoNormal style='text-align:center;word-break:break-all'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>Issue Date</span>			</p> </td>
		      </tr>
	        </table>
		  </td>
		  <td style="width: 4%; vertical-align: middle; height: 14px;"></td>
		  <td style="width: 22%; vertical-align: top; height: 14px;">
		    <table style="width: 100%; border-spacing: 0px; border-collapse: collapse; border-bottom: 1px solid">
			  <tr>
			    <td style="width: 100%; vertical-align: top; height: 50px; border: 1px solid; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm">
		    <p class=MsoNormal style='text-align:center;word-break:break-all'>
				<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>完成課程的限期</span>			</p>
			<p class=MsoNormal style='text-align:center;word-break:break-all'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>Due Date for Course</span>			</p>
			<p class=MsoNormal style='text-align:center;word-break:break-all'>
				<span lang=EN-US style='font-family:Arial;font-size:9pt'>Completion</span>			</p> </td>
		      </tr>
		    </table>
		  </td>
		  <td style="width: 6%; vertical-align: middle; height: 14px;"></td>
	  </table>	</td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
       <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
	      <table style="width: 666px; border-spacing: 0px; border-collapse: collapse">
		  <c:set var="countNo" value="1" />
		  <c:forEach var="mdicNoticeValue" items="${nondeliveredMdicNoticeAndReminderValue.mdicNoticeCollection}" >
		      <tr>
			 	 <td style="width: 6%; vertical-align: middle; height: 14px;"></td>
			 	 <td style="width: 10%; vertical-align: middle; height: 14px;">
				 	<p class=MsoNormal style='text-align:center;word-break:break-all'>
				 	<span lang=EN-US style='font-family:Arial;font-size:9pt'><c:out value="${countNo}" /></span></p></td>
		         <td style="width: 4%; vertical-align: middle; height: 14px;"></td>
		         <td style="width: 22%; vertical-align: middle; height: 14px;">
				 	<p class=MsoNormal style='text-align:center;word-break:break-all'>
				 	<span lang=EN-US style='font-family:Arial;font-size:9pt'><c:out value="${mdicNoticeValue.mdicNoticeRefNo}" /></span></p></td>
				 <td style="width: 4%; vertical-align: middle; height: 14px;"></td>
		         <td style="width: 22%; vertical-align: middle; height: 14px;">
				 	<p class=MsoNormal style='text-align:center;word-break:break-all'>
				 	<span lang=EN-US style='font-family:Arial;font-size:9pt'><fmt:formatDate value="${mdicNoticeValue.issueDate}" pattern="dd/MM/yyyy"/></span></p></td>
				 <td style="width: 4%; vertical-align: middle; height: 14px;"></td>
		         <td style="width: 22%; vertical-align: middle; height: 14px;">
				 	<p class=MsoNormal style='text-align:center;word-break:break-all'>
				 	<span lang=EN-US style='font-family:Arial;font-size:9pt'><fmt:formatDate value="${mdicNoticeValue.dueDate}" pattern="dd/MM/yyyy"/></span></p></td>
				 <td style="width: 6%; vertical-align: middle; height: 14px;"></td>
			  </tr>
			  <c:set var="countNo" value="${countNo+1}" />
		  </c:forEach>
          </table>	   </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
      <p class=MsoNormal style='text-align:right;word-break:break-all'><span lang=EN-US style='font-family:Arial;font-size:9pt'></span></p>    </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>&nbsp;
      </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
     <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
      <p class=MsoNormal style='text-align:left'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>在你按照通知書所示修習和完成駕駛改進課程之前，根據《道路交通（駕駛執照）規例》第6條，本署不得向你發出或重新發出駕駛執照，或將駕駛執照續期。</span>
			</p></td>
	   <td colspan="3" style="display: none;"></td>
	</tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
         <p class=MsoNormal style='text-align:justify;text-justify:inter-ideograph;layout-grid-mode:char'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span lang=EN-US style='font-family:Arial;font-size:9pt'>Before you attend and complete the driving improvement course(s) in accordance with the said notice(s), this Department shall not issue, reissue or renew the driving licence to you as provided in regulation 6 of the Road Traffic (Driving Licences) Regulations.</span>
			</p></td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>&nbsp;
      </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
     <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
      <p class=MsoNormal style='text-align:left;word-break:break-all'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>如有任何查詢，請致電運輸署熱線2804 2600。</span>
			</p></td>
	   <td colspan="3" style="display: none;"></td>
	</tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
         <p class=MsoNormal style='text-align:justify;text-justify:inter-ideograph;layout-grid-mode:char'><span lang=EN-US style='font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span lang=EN-US style='font-family:Arial;font-size:9pt'>Enquiries concerning this letter can be directed to the Transport Department Hotline at 2804 2600.</span>	   		</td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
      <p class=MsoNormal style='text-align:right;word-break:break-all'><span lang=EN-US style='font-family:Arial;font-size:9pt'></span></p>    </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
    <td style="width: 300px;">&nbsp;</td>
	  <td style="width: 12px;">&nbsp;</td>
	  <td style="width: 12px;">&nbsp;</td>
	  <td style="width: 362px;">&nbsp;</td>
	   <td colspan="13" style="display: none;"></td>
   </tr>
    <tr>
      <td style="width: 300px;">&nbsp;</td>
	  <td style="width: 12px;">&nbsp;</td>
	  <td style="width: 12px;">&nbsp;</td>
	  <td colspan=14 style='vertical-align: top; width: 362px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
	  	<p class=MsoNormal style='text-align:center;text-justify:inter-ideograph;layout-grid-mode:char'>
			<span lang=EN-US style='font-family:Arial;font-family:Arial;font-size:9pt'>&nbsp;&nbsp;</span>
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
			<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>(</span>
			<span lang=EN-US style='font-family:Arial;font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
			<span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>代行)</span>
		</p>
	  </td>
   </tr>
   <tr>
      <td style="width: 300px;">&nbsp;</td>
	  <td style="width: 12px;">&nbsp;</td>
	  <td style="width: 12px;">&nbsp;</td>
	  <td colspan=14 style='vertical-align: top; width: 362px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
	  	<p class=MsoNormal style='text-align:left;text-justify:inter-ideograph;layout-grid-mode:char'>
			<span lang=EN-US style='font-family:Arial;font-family:Arial;font-size:9pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Yours faithfully,</span>
		</p>
	  </td>
   </tr>
    <tr>
    <td style="width: 300px;">&nbsp;</td>
	  <td style="width: 12px;">&nbsp;</td>
	  <td style="width: 12px;">&nbsp;</td>
	  <td style="width: 362px;">&nbsp;</td>
		<td colspan="13" style="display: none;"></td>
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
			<span lang=EN-US style='font-family:Arial;font-family:Arial;font-size:9pt'><span style='color:black'></span></span>
		</p>
	  </td>
   </tr>
    <tr>
      <td style="width: 300px;">
	    <p class=MsoNormal style='text-align:left;text-justify:inter-ideograph;layout-grid-mode:char'>
			<span lang=EN-US style='font-family:Arial;font-family:Arial;font-size:9pt'>Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatDate value="${MDIC_COVER_NOTE_VALUE.issueDate}" pattern="dd/MM/yyyy" /></span>
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
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>&nbsp;
      </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
   <tr>
     <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
       <p class=MsoNormal style='text-align:left;word-break:break-all'>
	   	  <span lang=ZH-TW style='font-size:9pt;font-family:MingLiU_HKSCS;letter-spacing:0pt'>附註：此乃電腦編印通知書，無需授權人員簽署。</span>	   </p>     </td>
	   <td colspan="3" style="display: none;"></td>
   </tr>
    <tr>
     <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
       <p class=MsoNormal style='text-align:left;word-break:break-all'>
	   	  <span lang=EN-US style='font-family:Arial;font-size:9pt'>Note: This is the computer-generated advice which requires no authorized signature.</span>	   </p>     </td>
		<td colspan="3" style="display: none;"></td>
   </tr>
    <tr>
    <td colspan=14 style='vertical-align: top; height: 50%; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>

	   <p class=MsoNormal style='text-align:justify;text-justify:inter-ideograph;layout-grid-mode:char;line-height:5pt'><span lang=EN-US style='font-family:Arial;font-size:1pt;line-height:5pt'>&nbsp;</span>

    </td>
		<td colspan="3" style="display: none;"></td>
   </tr>
      </table>
  </td>
  </tr>


  <tfoot >
  <tr style="vertical-align: bottom;">
  <td style="width: 100%;">
  <table class=MsoTableGrid style='border-collapse:collapse; border-spacing: 0px; width: 100%; margin: 0 auto;'>
	  <tr style="display:none"><th>Col1</th><th>Col2</th><th>Col3</th><th>Col4</th><th>Col5</th><th>Col6</th><th>Col7</th><th>Col8</th><th>Col9</th><th>Col10</th><th>Col11</th><th>Col12</th><th>Col13</th><th>Col14</th></tr>
  <tr>
    <td colspan=14 style='vertical-align: top; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:0cm'>
       <p class=MsoNormal style='text-align:left;word-break:break-all'>
	   	  <span lang=EN-US style='font-family:Arial;font-size:9pt'><c:out value="${nondeliveredMdicNoticeAndReminderValue.workstationId}" />,<c:out value="${nondeliveredMdicNoticeAndReminderValue.operatorId}" />,<fmt:formatDate value="${MDIC_COVER_NOTE_VALUE.printDate}" pattern="dd/MM/yyyy HH:mm:ss"/></span>	   </p>
	 </td>
   </tr>
  </table>
  </td></tr>
  </tfoot>
</table>
