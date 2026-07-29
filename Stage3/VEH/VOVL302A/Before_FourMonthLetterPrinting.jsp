<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt"%>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print"%>
<jsp:useBean id="now" class="hk.gov.valid.util.ValidIVDate"/>

<%-- Add by Bruce for CR-2008-051 on 2009-3-31 begin ---%>
<%@ page import="hk.gov.valid.vehicle.util.VehicleConstant"%>
<%@ page import="com.td.j2ee.util.config.SystemParameter" %>
<c:set var="VEH_EXAM_EFFECTIVE_DATE" scope="request"><%=SystemParameter.getInstance().getParameter(VehicleConstant.VEH_EAXM_EFFECTIVE_DATE)%></c:set>
<%-- Add by Bruce for CR-2008-051 on 2009-3-31 end ---%>

<html lang="en">
<head>
<!-- saved from url=(0014)about:internet -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="header" content="">
<meta name="footer" content=" ">
<meta name="margin-top" content="0">
<meta name="margin-bottom" content="0">
<meta name="margin-left" content="2">
<meta name="margin-right" content="2">
<meta name="custom" content="false">
<meta name="papersize" content="A4">
<meta name="orientation" content="0">
<meta name="duplex" content="2">
<meta name="multifunctionind" content="false">
<title>&nbsp;</title>
<STYLE>
td {
	font-family: "Times New Roman", Times, serif;
	font-size: 13pt;
}
.footer-context{
	font-size: 4pt;
}
.hr_style{
	color:black;
	height:1px;
}
p.four
{
border-color: #ffffff #ffffff #000000 #ffffff;
border-style: solid;
border-bottom-width: 1px
}

.style0 {font-size: 8pt;
         font-family:"MingLiU_HKSCS";}
.style1 {font-size: 8pt;
         font-family:"Times New Roman";}
.style2 {font-size: 13.5pt;
	font-family:"MingLiU_HKSCS";}

</STYLE>
</head>
<body>
<%@ page import="hk.gov.valid.util.RequestConstant" %>
<div style="text-align: center"><c:set var="FOUR_MONTH_PAGEVALUE">
  <%=RequestConstant.PAGE_VALUE%>
  </c:set> <c:set var="fourMonthPv" value="${sessionScope[FOUR_MONTH_PAGEVALUE]}"/>
  <c:set var="strMonths" value="${'JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC'}" />
  <c:set var="intExamDateMonth" ><fmt:formatDate value="${fourMonthPv.examDate}" pattern="M"/></c:set>
  <c:set var="strExamDate" value="" /> <c:forTokens var="strMonth" items="${strMonths}" delims="," varStatus="status">
  <c:if test="${intExamDateMonth == status.count && fourMonthPv.examDate != null}">
  <c:set var="strExamDate" ><fmt:formatDate value="${fourMonthPv.examDate}"
           pattern="dd"/> <c:out value="${strMonth}"/> <fmt:formatDate value="${fourMonthPv.examDate}"
           pattern="yyyy"/></c:set> </c:if> </c:forTokens> <c:set var="intUptoDateMonth" ><fmt:formatDate value="${fourMonthPv.uptoDate}" pattern="M"/></c:set>
  <c:set var="strUptoDate" value="" /> <c:forTokens var="strMonth" items="${strMonths}" delims="," varStatus="status">
  <c:if test="${intUptoDateMonth == status.count && fourMonthPv.uptoDate != null}">
  <c:set var="strUptoDate" ><fmt:formatDate value="${fourMonthPv.uptoDate}"
           pattern="dd"/> <c:out value="${strMonth}"/> <fmt:formatDate value="${fourMonthPv.uptoDate}"
           pattern="yyyy"/></c:set> </c:if> </c:forTokens> <c:set var="intNowDateMonth" ><fmt:formatDate value="${now}" pattern="M"/></c:set>
  <c:set var="strNowDate" value="" /> <c:forTokens var="strMonth" items="${strMonths}" delims="," varStatus="status">
  <c:if test="${intNowDateMonth == status.count && now != null}"> <c:set var="strNowDate" ><fmt:formatDate value="${now}"
           pattern="dd"/> <c:out value="${strMonth}"/> <fmt:formatDate value="${now}"
           pattern="yyyy"/></c:set> </c:if> </c:forTokens>
  <table class="cellpadding-0" style="border-spacing: 0px; width: 578px; margin: 0 auto">
    <tr>
      <td style="width: 578px"> <table class="cellpadding-2" style="border-spacing: 1px; width: 100%; margin: 0 auto">
          <tr style="text-align: left">
            <td>&nbsp;</td>
          </tr>
          <tr style="text-align: left">
            <td><img alt="" src="<print:BlankFormPrint imageName='logo.gif'/>" ></td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td><span class="style2">本 署 檔 號 ： </span><c:out value="${fourMonthPv.txnNo}"/></td>
    </tr>
    <tr>
      <td><span class="style2">電 話 號 碼 ： </span><c:out value="${fourMonthPv.phoneNo}"/></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><span class="style2">先生/女士：</span></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td> <table class="cellpadding-0" style="border-spacing: 0px; width: 100%; margin-left: auto">
          <tr>
            <td style="width: 4%; height: 24px">&nbsp;</td>
            <td style="width: 33%"><span class="style2">檢驗汽車機械及格證書</span></td>
            <td style="width: 51%">&nbsp;</td>
            <td style="width: 12%">&nbsp;</td>
          </tr>
          <tr>
            <td style="height: 25px">&nbsp;</td>
            <td><span class="style2">簽發日期：</span></td>
            <td><p class="four"><B>
            <c:if test="${fourMonthPv.examDate != null}"> 
	            <fmt:formatDate value="${fourMonthPv.examDate}" pattern="yyyy"/>年
	            <fmt:formatDate value="${fourMonthPv.examDate}" pattern="M"/>月
	            <fmt:formatDate value="${fourMonthPv.examDate}" pattern="d"/>日
            </c:if>
            </B></p></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><span class="style2">車輛登記號碼：</span></td>
            <td><p class="four"><B><c:out value="${fourMonthPv.regMark}"/></B></p></td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="height: 22px"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style2">以上檢驗汽車機械及格證書讓你可在其簽發日期後四個月內</span></td>
    </tr>
    <tr>
      <td style="height: 21px"><span class="style2">申領一張為期12個月的車輛牌照。</span></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="height: 24px"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style2">由於你選擇以上述證書申領有效期只有4個月的車輛牌照，</span></td>
    </tr>
    <tr>
      <td style="height: 28px"><span class="style2">該證書仍可供為同一車輛申請續領有效期不超逾<U>&nbsp;
        <c:if test="${fourMonthPv.uptoDate != null}"> <fmt:formatDate value="${fourMonthPv.uptoDate}" pattern="yyyy"/>年<fmt:formatDate value="${fourMonthPv.uptoDate}" pattern="MM"/>月<fmt:formatDate value="${fourMonthPv.uptoDate}" pattern="dd"/>日
</c:if></U></span></td>
    </tr>
    <tr>
      <td style="height: 25px"><span class="style2">的4個月車輛牌照之用；即若你能依時換領牌照以致牌照有效期沒有</span></td>
    </tr>
    <tr>
      <td style="height: 25px"><span class="style2">中斷的話，你可再申領兩個各為期4個月的車輛牌照。</span></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="height: 24px"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style2">請注意，若你須申請有效期超逾上述第二段所訂明的日期的</span></td>
    </tr>
    <tr>
      <td style="height: 23px"><span class="style2">車輛牌照，你便須將有關車輛再次提交檢驗並獲取新的及格證書方可。</span></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp; </td>
    </tr>
    <tr>
      <td style="text-align: right"><span class="style2">運輸署署長</span><span style="font-family: MingLiU_HKSCS">&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: right">&nbsp;（&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="style2">代行</span>）
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp; </td>
    </tr>
    <tr>
      <td><U>&nbsp;&nbsp;&nbsp;&nbsp; <fmt:formatDate value="${now}" pattern="yyyy"/>
        </U><span class="style2">年</span><U>&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<fmt:formatDate value="${now}" pattern="MM"/>&nbsp; </U><span class="style2">月</span><U>&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<fmt:formatDate value="${now}" pattern="dd"/>&nbsp; </U><span class="style2">日</span>
      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
  </table>
</div>
<div id="first_page" style="PAGE-BREAK-BEFORE: always; text-align: center">&nbsp;</DIV>
<!-- print on another page -->
<div id="page_last" style="PAGE-BREAK-AFTER: auto; text-align: center">
  <table class="cellpadding-0" style="border-spacing: 0px; width: 642px; margin: 0 auto">
    <tr>
      <td style="width: 642px"> <table class="cellpadding-2" style="border-spacing: 1px; width: 100%; margin: 0 auto">
          <tr style="text-align: left">
            <td>&nbsp;</td>
          </tr>
          <tr style="text-align: left">
            <td><img alt="" src="<print:BlankFormPrint imageName='logo.gif'/>" ></td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td>File Ref.: <c:out value="${fourMonthPv.txnNo}"/></td>
    </tr>
    <tr>
      <td>Tel. No.: <c:out value="${fourMonthPv.phoneNo}"/></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: right"><c:out value="${strNowDate}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Dear Sir/Madam,</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td> <table class="cellpadding-0" style="border-spacing: 0px; width: 100%; margin-left: auto">
          <tr>
            <td style="width: 3%">&nbsp;</td>
            <td style="width: 43%">Date of Issue of </td>
            <td style="width: 37%">&nbsp;</td>
            <td style="width: 17%">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>Certificate of Roadworthiness/Fitness:</td>
            <td><p class="four"><B><c:out value="${strExamDate}"/></B></p></td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td> <table class="cellpadding-0" style="border-spacing: 0px; width: 100%; margin-left: auto">
          <tr>
            <td style="width: 3%">&nbsp;</td>
            <td style="width: 21%">Vehicle No.:</td>
            <td style="width: 59%"><p class="four"><B><c:out value="${fourMonthPv.regMark}"/></B></p></td>
            <td style="width: 17%">&nbsp;</td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The &nbsp;above &nbsp;Certificate &nbsp;of
        &nbsp;Roadworthiness/Fitness &nbsp;entitles&nbsp; you &nbsp;to &nbsp;apply</td>
    </tr>
    <tr>
      <td>within 4 months from its date of issue for a 12-month vehicle licence.</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You &nbsp;have &nbsp;opted &nbsp;to &nbsp;use
        &nbsp;the &nbsp;above &nbsp;certificate &nbsp;for &nbsp;issuance &nbsp;of
        &nbsp;a &nbsp;4-month</td>
    </tr>
    <tr>
      <td>vehicle licence. Hence, the certificate is still valid to allow application
        for renewal of</td>
    </tr>
    <tr>
      <td>4-month licence with expiry date not exceeding<U>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${strUptoDate}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</U>for
        the</td>
    </tr>
    <tr>
      <td>same vehicle. &nbsp;In other words, if you apply for renewal of vehicle
        licence on time and</td>
    </tr>
    <tr>
      <td>the licences are consecutive to each other, &nbsp;you may be issued
        with two more 4-month</td>
    </tr>
    <tr>
      <td>vehicle licences.</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span lang=EN-US style='letter-spacing:0.5pt'>Please
        note that when you apply for a vehicle licence, of which the</span></td>
    </tr>
    <tr>
      <td>expiry date exceeds the date specified in paragraph 2 above, you are
        required to submit</td>
    </tr>
    <tr>
      <td>a fresh Certificate of Roadworthiness/Fitness, i.e. your vehicle has
        to undergo and pass</td>
    </tr>
    <tr>
      <td>a vehicle examination again.</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: right">&nbsp;&nbsp;&nbsp;Yours faithfully, &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td style="text-align: right">&nbsp;&nbsp;（&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; ）&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td style="height: 19px; text-align: right">&nbsp;&nbsp;&nbsp;for Commissioner for Transport
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
</DIV>

<div id=arrow style="width:100%; Z-INDEX: 10; text-align: center; VISIBILITY: visible; POSITION: absolute; TOP: 753pt">
<table class="cellpadding-0" style="border-spacing: 0px; width: 100%">
          <tr>
            <td class="style0" style="text-align: center"><script>document.write(unescape("<c:out value="${fourMonthPv.chiDivisionName}" escapeXml="false"/>"));</script></td>
          </tr>
          <tr>
            <td class="style1" style="text-align: center"><c:out value="${fourMonthPv.engDivisionName}"/></td>
          </tr>
          <tr>
            <td class="style0" style="text-align: center"><script>document.write(unescape("<c:out value="${fourMonthPv.chiDivisionAddr}" escapeXml="false"/>"));</script></td>
          </tr>
          <tr>
            <td class="style1" style="text-align: center"><c:out value="${fourMonthPv.engDivisionAddr}"/></td>
          </tr>
        </table>
</div>

<div id=arrow style="width:100%; Z-INDEX: 10; text-align: center; VISIBILITY: visible; POSITION: absolute; TOP: 1540pt">
<table class="cellpadding-0" style="border-spacing: 0px; width: 100%">
          <tr>
            <td class="style0" style="text-align: center"><script>document.write(unescape("<c:out value="${fourMonthPv.chiDivisionName}" escapeXml="false"/>"));</script></td>
          </tr>
          <tr>
            <td class="style1" style="text-align: center"><c:out value="${fourMonthPv.engDivisionName}"/></td>
          </tr>
          <tr>
            <td class="style0" style="text-align: center"><script>document.write(unescape("<c:out value="${fourMonthPv.chiDivisionAddr}" escapeXml="false"/>"));</script></td>
          </tr>
          <tr>
            <td class="style1" style="text-align: center"><c:out value="${fourMonthPv.engDivisionAddr}"/></td>
          </tr>
        </table>
</div>
<script>
initPage();
function initPage(){
	var effDateStr = "<c:out value="${VEH_EXAM_EFFECTIVE_DATE}"/>";
    var effYear = parseInt(effDateStr.substr(0,4),10);
    var effMonth = parseInt(effDateStr.substr(5,2),10)-1;
    var effDay = parseInt(effDateStr.substr(8,2),10);

    var effDate = new Date(effYear,effMonth,effDay);
    
    var nowStr = "<fmt:formatDate value="${now}" pattern="dd/MM/yyyy"/>";
    var nowDay = parseInt(nowStr.substr (0,2),10);
    var nowMonth = parseInt(nowStr.substr(3,2),10)-1;
    var nowYear = parseInt(nowStr.substr(6,4),10);
    
    var nowDate = new Date(nowYear,nowMonth,nowDay);

    if(effDate <= nowDate){
    	document.all.hidcnexam.style.display="";
    	document.all.hidenexam.style.display="";
    }
}
</script>
</body>
</html>