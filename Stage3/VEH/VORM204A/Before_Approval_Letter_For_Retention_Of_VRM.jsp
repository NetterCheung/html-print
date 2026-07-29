<!DOCTYPE html>
<%@ page import="hk.gov.valid.util.RequestConstant,
			 hk.gov.valid.vehicle.model.ExtendRegMarkSearchValue,
			 hk.gov.valid.vehicle.model.ExtendRegMarkConfirmValue,
			 hk.gov.valid.vehicle.model.RegMarkValue,
			 hk.gov.valid.cbm.model.LegalEntityValue,
			 hk.gov.valid.cbm.model.RegMarkHistoryValue,
			 java.text.SimpleDateFormat,
			 java.sql.Date,
			 java.util.*"%>
<%@ page import="hk.gov.valid.util.CodeTableConstant"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt"%>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print"%>
<html>
<head>
<!-- saved from url=(0014)about:internet -->
<title>&nbsp;</title>
<meta charset="UTF-8">
<meta name="header" content="">
<meta name="footer" content="">
<meta name="margin-top" content="0">
<meta name="margin-bottom" content="2">
<meta name="margin-left" content="0">
<meta name="margin-right" content="0">
<meta name="duplex" content="2">
</head>
<body>
<table style="width: 639px; border-spacing: 0px; margin: 0 auto; height: 1075px;">
	<tr style="height: 20px;"><td>&nbsp;</td></tr>
<tr>
    <td style="width: 639px;">
        <table style="width: 100%; border-spacing: 1px; margin: 0 auto;">
            <tr style="text-align: left;">
          <td style="padding: 2px;"><img alt="" src="<print:BlankFormPrint imageName='logo.gif'/>" ></td>
        </tr>
        </table>
    </td>
</tr>
<tr style="height: 20px;"><td>&nbsp;</td></tr>
<tr style="vertical-align: top;">
<td style="width: 639px;">
<table>
 <tr>
  <td>本署檔號</td>
  <td><c:out value="${requestScope.pageValue.fileReferNo}" />
  </td>
 </tr>
 <tr >
  <td>來函檔號 </td>
  <td></td>
 </tr>
 <tr>
  <td>電話號碼 </td>
  <td><c:out value="${requestScope.pageValue.telNo1}" /></td>
 </tr>
 <tr>
  <td>傳真號碼</td>
  <td><c:out value="${requestScope.pageValue.faxNo1}" /></td>
 </tr>
 <tr>
  <td>  </td>
  <td>  </td>
 </tr>
</table>

<p><span>先生 / 女士：</span></p>
<p></p>
<p style="text-align: center;"><span><u><b>保 留 登 記 號 碼 <c:out value="${requestScope.pageValue.regMark}"/></b></u></span></p>
<p></p>
<blockquote>
<p><span>多謝你在 
<fmt:formatDate value="${requestScope.pageValue.requestDate}" pattern="dd/MM/yyyy"/> 的來信要求本署延長你保留上述登記號碼的期限。</span></p>
</blockquote>
<p></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;考慮過你的要求後，我現在通知你可延長保留上述登記號碼的期限至 
<fmt:formatDate value="${requestScope.pageValue.uptoDate}" pattern="dd/MM/yyyy"/>。</p>
<p></p>
<blockquote>
<p><span >請注意以下各點：</span></p>
<table style="width: 585px;">
 <tr>
  <td style="width: 29px; vertical-align: top;">
  <p style="text-align: left;">(a)<br></td>
  <td style="width: 546px;">所有延長保留登記號碼期限的要求均作個別考慮。是次延期是基於特別理由而予以批准的，並不可以作為先例；
  </td>
 </tr>
 <tr>
 	<td style="width: 29px;"></td>
	<td style="width: 546px;"></td>
 </tr>
 <tr>
  <td style="width: 29px; vertical-align: top;">(b)</td>
  <td style="width: 546px;">以上保留期將不會再獲延長；</td>
 </tr>
 <tr>
 	<td style="width: 29px;"></td>
	<td style="width: 546px;"></td>
 </tr>

 <tr>
  <td style="width: 29px; vertical-align: top;">(c)<br><br></td>
  <td style="width: 546px;">你必須在<u><b><fmt:formatDate value="${requestScope.pageValue.uptoDate}" pattern="dd/MM/yyyy"/>或該日之前</b></u>把上述登記號碼用於一部以你的名字登記的車輛，否則本署會根據《道路交通(車輛登記及領牌)規例》第16(5)條的規定，取消該登記號碼的分配，而不會另行通知你。
  </td>
 </tr>
 <tr>
 	<td style="width: 29px;"></td>
	<td style="width: 546px;"></td>
 </tr>

 <tr>
  <td style="width: 29px; vertical-align: top;">(d) <br><br><br></td>
  <td style="width: 546px;">
      你可在星期一至星期五(上午九時至下午五時)前往香港金鐘道九十五號統一中心三樓運輸署香港牌照事務處(電話:2804 2642)或九龍長沙灣道三零三號長沙灣政府合署二樓運輸署九龍牌照事務處(電話:2150 7714)安排將上述登記號碼配予以你的名字登記的車輛。
  </td>
 </tr>
</table>
</blockquote>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如果你收到本信件前已收到本署發出的備忘錄，提醒你保留期限即將屆滿，請你毋需理
會該備忘錄。</p>
<table style="margin-left: auto; margin-right: 0;">
  <tr><td>
  <p style="text-align: center;"><span>運輸署署長</span></p><br><br><br>
  <p style="text-align: center;">
    <span>(<c:out value="${requestScope.pageValue.commissorNameChi}" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;代行)</span>
  </p>
  </td>
 </tr>
</table>
</td></tr>
<tr>
  <td>
    <p>
    <fmt:formatDate value="${requestScope.pageValue.issueDate}" pattern="yyyy"/>年<fmt:formatDate value="${requestScope.pageValue.issueDate}" pattern="M"/>月<fmt:formatDate value="${requestScope.pageValue.issueDate}" pattern="d"/>日</p>
  </td>
</tr>
<tr><td style="width: 100%;">
	<table style="border-spacing: 0px;">
		<tr><td style="width: 140px;">&nbsp;</td>
			<tr><td>
		<table style="text-align: left;">
		<tr>
		<c:choose>
			<c:when test="${!empty(requestScope.pageValue.applicantNameChi)}">
				<td style="text-align: left;">
				<span class="chi_name_value"><c:out value="${requestScope.pageValue.applicantNameChi}"/></span>&nbsp;
				<c:if test="${!empty(requestScope.pageValue.titleCode)}">
				<c:if test="${(requestScope.pageValue.titleCode>0) and (requestScope.pageValue.titleCode<=4)}">
				<codetable:out value = '<%=CodeTableConstant.TITLE_CODE%>' formatType = '<%=CodeTableConstant.INTERPRETATION%>'
				language = '<%=CodeTableConstant.CHINESE%>' Selected = '${requestScope.pageValue.titleCode}' />
				</c:if>
				</c:if>
				</td>
			</c:when>
			<c:otherwise>
				<td style="text-align: left;">
				<c:if test="${!empty(requestScope.pageValue.titleCode)}">
				<c:if test="${(requestScope.pageValue.titleCode>0) and (requestScope.pageValue.titleCode<=4)}">
				<codetable:out value='<%=CodeTableConstant.TITLE_CODE%>' formatType = '<%=CodeTableConstant.INTERPRETATION%>'
				language = '<%=CodeTableConstant.ENGLISH%>' Selected = '${requestScope.pageValue.titleCode}' />
				&nbsp;
				</c:if>
				</c:if>
				<c:out value="${requestScope.pageValue.applicantName}"/>
				</td>
			</c:otherwise>
		</c:choose>
		</tr><tr>
			<td style="text-align: left;"><c:out value="${requestScope.pageValue.applicantAddress1}"/></td>
		</tr><tr>
			<td style="text-align: left;"><c:out value="${requestScope.pageValue.applicantAddress2}"/></td>
		</tr><tr>
     		<td style="text-align: left;"><c:out value="${requestScope.pageValue.applicantAddress3}"/></td>
		</tr>
		</table></td></tr>
	</table>	
</td></tr>
<tr style="vertical-align: bottom;"><td style="width: 639px; vertical-align: bottom;">
<p style="text-align: center;"><font size="-2"><c:out value="${requestScope.pageValue.officeNameChi}" /><br><c:out value="${requestScope.pageValue.officeNameEng}" /><br>
<c:out value="${requestScope.pageValue.officeAddressChi}" /><br><c:out value="${requestScope.pageValue.officeAddressEng}" /> </font>
</td></tr>
</table>

<DIV id="first page" style="PAGE-BREAK-BEFORE: always">&nbsp;</DIV>

<DIV id="page last" style="PAGE-BREAK-AFTER: auto"></DIV>

<table style="width: 620px; border-spacing: 0px; margin: 0 auto; height: 1075px;">
<tr style="height: 20px;"><td>&nbsp;</td></tr>
<tr>
	<td>
		<table style="width: 100%; border-spacing: 1px; margin: 0 auto;">
			<tr style="text-align: left;">
          <td style="padding: 2px;"><img alt="" src="<print:BlankFormPrint imageName='logo.gif'/>" ></td>
        </tr>
		</table>
	</td>
</tr>
<tr style="height: 20px;"><td>&nbsp;</td></tr>
<tr style="vertical-align: top;"><td>
<table>
 <tr>
  <td>Our Ref.</td>
  <td><c:out value="${requestScope.pageValue.fileReferNo}" />
  </td>
 </tr>
 <tr >
  <td>Your Ref.</td>
  <td></td>
 </tr>
 <tr>
  <td>Tel. No. </td>
  <td><c:out value="${requestScope.pageValue.telNo1}" /></td>
 </tr>
 <tr>
  <td>Fax No.</td>
  <td><c:out value="${requestScope.pageValue.faxNo1}" /></td>
 </tr>
</table>

<table style="width: 620px;">
   <tr>
   <td style="text-align: right;">
     <fmt:formatDate value="${requestScope.pageValue.issueDate}" pattern="dd MMMMMM yyyy"/>
   </td>
 </tr>
</table>
</td></tr>
<tr><td>
<p></p>

<p><span>Dear Sir / Madam,</span></p>
<p style="text-align: center;"><span><u><b>Retention of Registration Mark <c:out value="${requestScope.pageValue.regMark}"/></b></u></span></p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thank you for your letter of 
<fmt:formatDate value="${requestScope.pageValue.requestDate}" pattern="dd/MM/yyyy"/> requesting for an extension of the retention
period of the above registration mark.
</p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Having considered your request, I would like to inform you that the retention period of
the registration mark can be extended to 
<fmt:formatDate value="${requestScope.pageValue.uptoDate}" pattern="dd/MM/yyyy"/>.
<blockquote>
Please note that :
</blockquote>

</td></tr>

<tr><td style="vertical-align: top;">
	<blockquote>
<table style="width: 561px;">
 <tr>
  <td style="width: 29px; vertical-align: top;">(a)</td>
  <td style="width: 522px;">All requests for extension of the retention period of a registration mark are
      considered on individual merits of each case. This extension is granted on
      exceptional grounds and it should not be treated as a precedent;
  </td>
 </tr>
 <tr>
 	<td></td>
	<td></td>
 </tr>

 <tr>
  <td style="width: 29px; vertical-align: top;">(b)</td>
  <td style="width: 522px;">No further extension of the retention period will be granted;</td>
 </tr>
 <tr>
 	<td></td>
	<td></td>
 </tr>

 <tr>
  <td style="width: 29px; vertical-align: top;">(c)</td>
  <td style="width: 522px;"><p>You should assign this registration mark to a vehicle registered in your name <u><b>on or before
      <fmt:formatDate value="${requestScope.pageValue.uptoDate}" pattern="dd/MM/yyyy"/></b></u>, otherwise, the allocation of this registration mark may
      be cancelled without further notice, pursuant to Regulation 16(5) of the Road
      Traffic (Registration and Licensing of Vehicles) Regulations, Cap. 374E; and
  </td>
 </tr>
 <tr>
 	<td></td>
	<td></td>
 </tr>

 <tr>
  <td style="width: 29px; vertical-align: top;">(d) </td>
  <td style="width: 522px;">
  You may approach the Hong Kong Licensing Office at 3/F., United Centre, 95
  Queensway, Hong Kong (Tel. 2804 2642) or Kowloon Licensing Office at 2/F.,
  Cheung Sha Wan Government Offices, 303 Cheung Sha Wan Road, Kowloon (Tel.
  2150 7714) from Monday to Friday (from 9:00 a.m. to 5:00 p.m.) for assigning the
  reserved registration mark to a vehicle registered in your name.
  </td>
 </tr>
</table>
</blockquote>
</td></tr>
<tr><td>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If you have received a reminder on expiry of the original retention period before this
letter, please disregard the reminder.
</p>
</td></tr>
<tr><td>
<table style="margin-left: auto; margin-right: 0;">  
<tr><td style="text-align: center;">
  <p style="text-align: center;"><span>Yours faithfully,</span></p><br><br><p>
  <span>( <c:out value="${requestScope.pageValue.commissorNameEng}" /> )</span><br>
  <span>for Commissioner for Transport</span></p>
</td></tr>
</table>
  </td>
 </tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td>
	<table style="width: 100%; border-spacing: 0px;">

		<tr><td style="width: 130px;">&nbsp;</td><td>
	<table style="text-align: left;">

		<tr>
		<c:choose>
			<c:when test="${!empty(requestScope.pageValue.applicantName)}">
				<td style="text-align: left;">
				<c:if test="${!empty(requestScope.pageValue.titleCode)}">
				<c:if test="${(requestScope.pageValue.titleCode>0) and (requestScope.pageValue.titleCode<=4)}">
				<codetable:out value = '<%=CodeTableConstant.TITLE_CODE%>' formatType = '<%=CodeTableConstant.INTERPRETATION%>'
				language = '<%=CodeTableConstant.ENGLISH%>' Selected = '${requestScope.pageValue.titleCode}' />
				&nbsp;
				</c:if>
				</c:if>
				<c:out value="${requestScope.pageValue.applicantName}"/>
				</td>
			</c:when>
			<c:otherwise>
				<td style="text-align: left;">
				<span class="chi_name_value"><c:out value="${requestScope.pageValue.applicantNameChi}"/></span>&nbsp;
				<c:if test="${!empty(requestScope.pageValue.titleCode)}">
				<c:if test="${(requestScope.pageValue.titleCode>0) and (requestScope.pageValue.titleCode<=4)}">
				<codetable:out value = '<%=CodeTableConstant.TITLE_CODE%>' formatType = '<%=CodeTableConstant.INTERPRETATION%>'
				language = '<%=CodeTableConstant.CHINESE%>' Selected = '${requestScope.pageValue.titleCode}' />
				</c:if>
				</c:if>
				</td>
			</c:otherwise>
		</c:choose>
		</tr><tr>
			<td style="text-align: left;"><c:out value="${requestScope.pageValue.applicantAddress1}"/></td>
		</tr><tr>
			<td style="text-align: left;"><c:out value="${requestScope.pageValue.applicantAddress2}"/></td>
		</tr><tr>
     		<td style="text-align: left;"><c:out value="${requestScope.pageValue.applicantAddress3}"/></td>
		<tr>
	

	</table>	
	</td></tr>
</table>
</td></tr>
<tr style="vertical-align: bottom;"><td style="width: 639px; vertical-align: bottom;">
<p style="text-align: center;"><font size="-2"><c:out value="${requestScope.pageValue.officeNameChi}" /><br><c:out value="${requestScope.pageValue.officeNameEng}" /><br>
<c:out value="${requestScope.pageValue.officeAddressChi}" /><br><c:out value="${requestScope.pageValue.officeAddressEng}" /></font>
</td></tr>
</table>
</body>

</html>
