<!DOCTYPE html>
<%--
 * <p>Title: printAddressChangeAcknowledgementLetter.jsp</p>
 * <p>Project: VALID IV</p>
 * <p>Description: Common page</p>
 * <p>Copyright: Copyright (c) 2003</p>
 * <p>Company: HEWLETT PACKARD</p>
 *
 * @author Henning Liao
 * @version 1.0
 *          Date: 2008-8-15
 *          Time: 11:46:30
--%>
<%@ page import="hk.gov.valid.util.RequestConstant"%>
<%@ page import="hk.gov.valid.util.CodeTableConstant"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt"%>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print"%>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>


<c:set var="PAGE_VALUE"><%=RequestConstant.PAGE_VALUE%></c:set>
<c:set var="changeAddressValue" value="${requestScope[PAGE_VALUE]}" scope="request"/>
<c:set var="LEGAL_ENTITY_VALUE" value="${changeAddressValue.legalEntityValue}" scope="request"/>	
<c:set var="COMPANY_SET"><%=CodeTableConstant.COMPANYS%></c:set>
<c:set var="IS_COMPANY" value="false" scope="request"/>
<c:forTokens var="COMPANY" items="${COMPANY_SET}" delims=",">
    <c:if test="${COMPANY == LEGAL_ENTITY_VALUE.idType}">
        <c:set var="IS_COMPANY" value="true" scope="request"/>
    </c:if>
</c:forTokens>



<html>
<head>
<!-- saved from url=(0014)about:internet -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="margin-top" content="0">
<meta name="margin-bottom" content="0">
<meta name="margin-left" content="2">
<meta name="margin-right" content="2">
<meta name="copies" content="1">
<meta name="papersize" content="A4">
<meta name="orientation" content="0">
<meta name="duplex" content="0">
<title>&nbsp;</title>
<style type="text/css">
<!--
p, div {
	font-size: 12pt;
	line-height: 20px;
}
.STYLE1 {
	font-family: "Times New Roman";
	font-size: 12pt;
}
.STYLE2 {
	font-family: "MingLiU_HKSCS";
	font-size: 12pt;
}
.address {
	font-family: MingLiU_HKSCS;
	font-size: 13pt;
	text-align: center;
}
.STYLE3 {
	font-family: MingLiU_HKSCS;
	font-size: 13pt;
	font-weight: bold;
}
.STYLE4 {
	font-family: "Times New Roman";
	font-size: 13pt;
}
.STYLE7 {
	font-family: MingLiU_HKSCS;
	font-size: 10pt;
}
.STYLE8 {
	font-family: "Times New Roman";
	font-size: 10pt;
}

-->
</style>
</head>
<body>

  <table style="TABLE-LAYOUT: fixed; width: 600px; height: 680px; margin: -0.15cm auto 0; border-spacing: 0px">
  <tr>
    <td style="height: 20px; vertical-align: top">&nbsp;</td>
  </tr>
  <tr>
	<td style="height: 90px; vertical-align: top">
		<img alt="" src="<print:BlankFormPrint imageName='logo.gif'/>" />
	</td>
  </tr>
  <tr>
	<td style="height: 50px; vertical-align: top">
		<p style="margin-top: -0.2cm;">
		<span class="STYLE2">本署檔號</span>&nbsp;/&nbsp;<span class="STYLE1">Our  Ref.</span><span class="STYLE2">&nbsp;:&nbsp;</span><c:out value="${changeAddressValue.txnNo}"/>(0)<br>
		<span class="STYLE2">日期</span>&nbsp;/&nbsp;<span class="STYLE1">Date</span><span class="STYLE2">&nbsp;:&nbsp;</span><fmt:formatDate value="${changeAddressValue.txnDate}" pattern="dd/MM/yyyy"/>
		</p>
	</td>
  </tr>
  <tr>
	<td style="vertical-align: top">
		<p style="margin-top: -0.2cm;"><span class="STYLE2">致</span>&nbsp;/&nbsp;<span class="STYLE1">To</span><span class="STYLE2">&nbsp;:&nbsp;</span><c:if test="${IS_COMPANY == false}">
							<codetable:out value="<%=CodeTableConstant.TITLE_CODE%>" formatType="<%=CodeTableConstant.INTERPRETATION%>" language="<%=CodeTableConstant.ENGLISH%>" selected="${changeAddressValue.titleCode}">&nbsp;</codetable:out>
		</c:if>
						<c:out value="${changeAddressValue.nameEng}"/></p>
	</td>
  </tr>
  <tr>
	<td style="height: 20px; vertical-align: top">&nbsp;</td>
  </tr>
  <tr>
	<td style="height: 130px; vertical-align: top">
		<p style="text-align: justify;margin-top: -0.4cm;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2">多謝你通知本署你現時的地址。現時你於本署的最新地址記錄載列如下，以供參考。如有任何查詢，請與本署聯絡或致電1823。</span></p>
		<p style="text-align: justify;margin-top: -0.1cm;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE1">Thank you for your notification of your present address.&nbsp;Your updated address record in this Department is appended below for your reference.&nbsp;Should you have any enquiries, please contact this Department or 1823.</span></p>
	</td>
  </tr>
  <tr style="height: 230px; vertical-align: top">
	<td>
		<br>
		<p style="text-align: center;margin-top: -0.2cm;">
		<strong><u><span style="letter-spacing: 4px" class="STYLE2">住址/公司地址   </span><span class="STYLE1">Residential/Company Address</span></u></strong><br>
		</p>
		<div style="text-align: center" class="address">
		<c:out value="${changeAddressValue.resAddress1}"/><br>
		<c:out value="${changeAddressValue.resAddress2}"/><br>
		<c:out value="${changeAddressValue.resAddress3}"/><br>
		</div>
		<c:if test="${changeAddressValue.sameAsResidentiaAddress != 'Y'}">
		<p style="text-align: center;margin-top: -0.2cm;">
		<strong><u><span style="letter-spacing: 4px" class="STYLE2">通訊地址  </span><span class="STYLE1">Correspondence Address</span></u></strong><br>
		</p>
		<div style="text-align: center" class="address">
		<c:out value="${changeAddressValue.posAddress1}"/><br>
		<c:out value="${changeAddressValue.posAddress2}"/><br>
		<c:out value="${changeAddressValue.posAddress3}"/><br>
		</div>
		</c:if>
	</td>
  </tr>
  <!-- Updated by Danny Tsang for production bug SD18742414 on 11/11/2016 START -->
  <!--
  <tr>
	<td style="height: 20px; vertical-align: top">&nbsp;</td>
  </tr>
  -->
  <!-- Updated by Danny Tsang for production bug SD18742414 on 11/11/2016 END -->
  <tr style="vertical-align: bottom">
	<td style="height: 310px; vertical-align: bottom">
		<p style="text-align: right;margin-top: -0.35cm;">
		<span style="letter-spacing: 4px; font-size: 13pt"  class="STYLE2" >牌照事務處 </span><br>
		<span class="STYLE1" style="font-size: 13pt">Licensing  Office</span>
		</p>
		<p style="text-align: justify;margin-top: -0.3cm;">
		<span class="STYLE3"><u>注意</u></span> <u><span class="STYLE4"><strong>Note</strong></span></u>
		</p>
		<ol>
		  <li class="STYLE8" style=" line-height:16px">
		    <p style="text-align: justify;line-height: 15px;"><span class="STYLE8" style=" line-height:16px">上述地址更改只適用於本署牌照事務處「駕駛執照持有人及／或車輛登記車主」的紀錄。如須更改你在本署其他服務下的地址紀錄（包括「司機接載行動不便的殘疾人士泊車證明書」、「車牌拍賣申請人」及「限制區 / 禁區 / 巴士專線 / 封閉道路 / 通行許可證」等），請另行通知相關分組或使用香港政府一站通地址更改服務進行更改。</span></p>
		  </li>
		  <li class="STYLE8" style=" line-height:16px">
		    <p style="text-align: justify;line-height: 15px;"><span class="STYLE8" style=" line-height:16px">如任何駕駛執照持有人/登記車主曾向運輸署署長提供其姓名、地址或身分證明文件有所改變，他/她須在改變出現後72小時內以書面或遞交已填妥的運輸署表格TD559，將有關改變通知運輸署署長，並需提交有關改變的證明。任何人無合理辯解而違反此規定，即屬違法，一經定罪，可處第1級罰款。</span></p>
		  </li>
		</ol>
		<ol>
		  <li class="STYLE8" style=" line-height:16px">
		    <p style="text-align: justify;line-height: 15px;margin-top: -0.1cm;"><span class="STYLE8" style=" line-height:16px">The above address change only applies to the records of “driving licence holders and/ or registered vehicle owners” of the Licensing Offices of the Transport Department. Please notify the relevant team separately or use the Change of Address Service of GovHK if you need to change your address record for other services (including “Parking Certificate for Drivers Who Carry People with Mobility Disabilities”, “Vehicle Registration Marks Auction Applicant” and “Various permits/closed road permits including Restricted Zone / Prohibited Zone / Bus Lane / Closed Road Permits” etc.). </span></p>
		  </li>
		  <li class="STYLE8" style=" line-height:16px">
		    <p style="text-align: justify;line-height: 15px;margin-top: -0.13cm;"><span class="STYLE8" style=" line-height:16px">If a change occurs in the name, address or identity document of a driving licence holder/registered vehicle owner previously provided by the driving licence holder/registered vehicle owner to the Commissioner for Transport, the driving licence holder/registered vehicle owner shall, within 72 hours of the change, notify the Commissioner for Transport in writing or by submitting the completed Transport Department Form (TD559) with the proof of change. Any person who without reasonable excuse contravenes such requirement commits an offence and is liable on conviction to a fine at level 1.</span></p>
		  </li>
		</ol>
	</td>
  </tr>
  </table>
 </body>
</html>
