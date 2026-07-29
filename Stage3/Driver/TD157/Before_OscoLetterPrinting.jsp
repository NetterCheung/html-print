<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print" %>
<%@ page import="hk.gov.valid.util.CodeTableConstant" %>
<html lang="en">
<head>
    <title>Document</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=5"/>
    <meta name="header" content="">
    <meta name="footer" content="&bpage &p of &P">
    <meta name="margin-top" content="2">
    <meta name="margin-bottom" content="2">
    <meta name="margin-left" content="2">
    <meta name="margin-right" content="2">
    <meta name="custom" content="false">
    <meta name="papersize" content="A4">
    <meta name="orientation" content="0">
    <meta name="duplex" content="2">
    <meta name="multifunctionind" content="false">

    <STYLE>
        td {
            font-family: "Times New Roman", Times, serif;
            font-size: 9pt;
        }

        #page_last tr {
            line-height: 13px;
        }

        .footer-context {
            font-size: 6pt;
        }

        .hr_style {
            color: black;
            height: 1px;
        }

    </STYLE>
</head>
<body>
<script>
    function parseToCurrencyNormal(sCurrency) {

        var sCurr = sCurrency + "";
        if (isNaN(parseFloat(sCurr)))
            return "$0.00";
        // round up sCurrency at the third bit
        var dCurr = parseFloat(sCurr) + 0.005;
        sCurr = "" + dCurr;
        var sCurrList = sCurr.split(".");
        var sInteger = sCurrList[0];
        var sFloat = "00";
        if (sCurr.indexOf(".") > -1)
            sFloat = sCurrList[1];
        var sCurrInt = "";
        for (i = 0; i < sInteger.length; i++) {
            if (i != 0 && i % 3 == 0) {
                sCurrInt = ",".concat(sCurrInt);
            }
            sCurrInt = sInteger.charAt(sInteger.length - 1 - i).concat(sCurrInt);
        }
        if (sFloat.length < 2) sFloat = sFloat + "0";
        sFloat = sFloat.substring(0, 2);
        sCurrInt = "$" + sCurrInt.concat(".");
        return sCurrInt.concat(sFloat);
    }

</script>
<%@ page import="hk.gov.valid.driver.util.DriverConstant" %>
<%@ page import="hk.gov.valid.util.RequestConstant" %>
<%@ page import="hk.gov.valid.cbm.model.OscoPrintValue" %>
<%@ page import="hk.gov.valid.cbm.model.FpmOscoValue" %>
<%@ page import="hk.gov.valid.cbm.model.FppOscoValue" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.math.BigDecimal" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.Date" %>
<c:set var="HKD_CURRENCY_SYMBOL" scope="request"><%=DriverConstant.HKD_CURRENCY_SYMBOL%>
</c:set>

<!--amend by Justin Du start 2005-04-19-->
<c:set var="TXN_NO" value="${requestScope.txnNo}" scope="request"/>
<c:set var="RO_LIST_EXIST" value="${requestScope.roListExist}" scope="request"/>
<c:set var="IO_LIST_EXIST" value="${requestScope.ioListExist}" scope="request"/>
<c:set var="IO_LIST_STRING" value="${requestScope.ioListString}" scope="request"/>
<c:set var="IO_LIST_EXIST2" value="${requestScope.ioListExist2}" scope="request"/>
<c:set var="IO_LIST_STRING2" value="${requestScope.ioListString2}" scope="request"/>
<!--amend by Justin Du end 2005-04-19-->

<%
    /* ==============================================================================================
     * ========     print first pages
     * ==============================================================================================
     */
%>
<table border="0" cellpadding="0" style="margin:0 auto;border-spacing:0;width:626px">
    <tr>
        <td style="width:626px">
            <table style="margin:0 auto;border-spacing:1px;width:100%">
                <tr style="text-align:-webkit-left">
                    <td style="padding:2px;border:0"><img style="border:0" alt=""
                                                          src="<print:BlankFormPrint imageName='logo.gif'/>"></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <table style="margin:0 auto;border-spacing:0;width:100%">

                <tr style="text-align:-webkit-center">
                    <td style="padding:0px;border:0"><B>香 港 特 別 行 政 區 政 府 運 輸 署</B></td>
                </tr>
                <tr style="text-align:-webkit-center">
                    <td style="padding:0px;border:0"><B>The Government of the Hong Kong Special Administrative Region
                        Transport Department</B></td>
                </tr>
                <tr style="text-align:-webkit-center">
                    <td style="padding:0px;border:0"><B>備忘錄</B></td>
                </tr>
                <tr style="text-align:-webkit-center">
                    <td style="padding:0px;border:0"><B>Memorandum</B></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <%--amended by Daphne Keung for CR-2017-008 on 09APr2018 begin --%>
            <table style="margin:0 auto;border-spacing:0;width:100%">
                <%--<tr><td width="75%">身 份 證 件 編 號：&nbsp;&nbsp;<c:out value="${requestScope.pageValue.idNo}" /> </td><td width="25%">日 期：&nbsp;&nbsp;<fmt:formatDate value="${requestScope.pageValue.currentDate}" pattern="dd/MM/yyyy" /></td></tr>
                <tr ><td><I>Identity No.：</I></td><td> <I>Date </I> </td></tr> --%>
                <tr>
                    <td style="width:7%;padding:0px;border:0">姓 名：</td>
                    <td style="width:37%;padding:0px;border:0"><c:out value="${requestScope.pageValue.nameChi}"/></td>
                    <td style="width:39%;padding:0px;border:0">身 份 證 編 號：&nbsp;&nbsp;<c:out
                            value="${requestScope.pageValue.idNo}"/></td>
                    <td style="width:17%;padding:0px;border:0">日 期：&nbsp;&nbsp;<fmt:formatDate
                            value="${requestScope.pageValue.currentDate}" pattern="dd/MM/yyyy"/></td>
                </tr>
                <tr>
                    <td style="padding:0px;border:0"><I>Name:</I></td>
                    <td style="padding:0px;border:0"><I><c:out value="${requestScope.pageValue.nameEng}"/></I></td>
                    <td style="padding:0px;border:0"><I>Identity No.：</I></td>
                    <td style="padding:0px;border:0"><I>Date </I></td>
                </tr>
                <tr>
                    <td colspan="4" style="padding:0px;border:0">
                        <hr class="hr_style">
                    </td>
                </tr>
            </table>
            <%--amended by Daphne Keung for CR-2017-008 on 09Apr2018 end --%>
        </td>
    </tr>
    <tr>
        <td>
            <table style="margin:0 auto;border-spacing:0;width:100%">
                <tr>
                    <td style="padding:0px;border:0">
                        <div style="text-align:justify"> 根據司法機構提供的資料，下列針對你／你的車輛的各項依據定額罰款（交通違例事項）條例（第237章）、
                            定額罰款（刑事訴訟）條例（第240章）及房屋（交通違例事項）（定額罰款）附例（第283C章）而裁定應繳的罰款尚未清繳。運輸署署長根據相關法例/法庭命令，須拒絕為欠款人辦理有關牌照事務的申請，除非該等罰款能盡早清繳。你可在背頁所列的裁判法院以現金或支票繳付該等罰款，以履行你對該等法庭命令的責任。
                            <br><br>
                            本備忘錄僅列出仍未繳清的有關法庭命令，但並不包括法庭尚未裁定或正在處理中的任何未繳交之定額罰款告票。如欲查詢有關針對你的未繳款告票，你可與香港警務處中央交通違例檢控組聯絡。（地址：<c:out
                                    value="${requestScope.pageValue.issuePrintingCtlValue.officeAddressChi}"/>；電話：<c:out
                                    value="${requestScope.pageValue.issuePrintingCtlValue.telNo1}"/>）
                            <br>
                            <br>
                            在遞交申請書時，請將本備忘錄及一切罰款（包括其他在本備忘錄發出後未繳清的法庭命令罰款）收據正本一併提交。
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="padding:0px;border:0">&nbsp;</td>
                </tr>
                <tr>
                    <td style="padding:0px;border:0">
                        <div style="text-align:justify">
                            According to information provided by the Judiciary， the underlisted court orders made under
                            the Fixed Penalty （Traffic
                            Contraventions）Ordinance，Chapter 237，the Fixed Penalty（Criminal
                            Proceedings）Ordinance，Chapter 240 and the Housing （Traffic Contraventions）（Fixed
                            Penalty）Bylaw，
                            Chapter 283C against you/your vehicle remain unsettled. Commissioner for Transport shall
                            refuse to process licensing applications from the defaulter in accordance with the
                            respective legislative provisions/court order. You may discharge
                            liability to these court orders by making payment in cash or cheque at any Magistrates'
                            Courts set out overleaf.
                            <br><br>
                            This memorandum only contains list of outstanding court orders against
                            you and does not include any outstanding fixed penalty case to be
                            determined by Court. For inquiry of outstanding tickets against
                            you，you may approach the Central Traffic Prosecutions Division，<c:out
                                value="${requestScope.pageValue.issuePrintingCtlValue.officeAddressEng}"/>（Tel:<c:out
                                value="${requestScope.pageValue.issuePrintingCtlValue.telNo1}"/>）
                            <br><br>
                            You are requested to produce this memorandum and all original payment receipts to all cases
                            and to any other which arises after the issue of this memorandum
                            at the time of application.
                        </div>
                    </td>
                </tr>
                <!-- add by Liuzj for caseman cheque enhancement begin-->
                <tr>
                    <td style="height:1px;padding:0px;border:0">
                        <hr class="hr_style">
                    </td>
                </tr>
                <!---<tr><td>&nbsp;</td></tr>--->
                <tr>
                    <td style="padding:0px;border:0">
                        <div style="text-align:justify"> <span lang=ZH-TW
                                                               style='font-family:MingLiU_HKSCS;font-family:MingLiU_HKSCS'>
			 有關申領駕駛執照、車輛牌照或車輛過戶的申請，如執照持有人/車主曾以支票支付未繳付的交通罰款，運輸署會在以支票付款日七個工作天後，才辦理有關申請。</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="padding:0px;border:0">&nbsp;</td>
                </tr>
                <tr>
                    <td style="padding:0px;border:0">
                        <div style="text-align:justify">
                            If the licence holder/vehicle owner has used cheque to settle payment of outstanding traffic
                            fines, application for issue/renewal of driving/vehicle licence and/or transfer of ownership
                            would only be processed after 7 working days from the date of cheque payment.

                        </div>
                    </td>
                </tr>
                <!-- add by Liuzj for caseman cheque enhancement end-->
                <tr>
                    <td style="height:1px;padding:0px;border:0">
                        <hr class="hr_style">
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <table style="margin:0 auto;border-spacing:0;width:100%">
                <tr>
                    <td style="padding:0px;border:0">法 庭 案 件 編 號</td>
                    <td style="padding:0px;border:0">控 票 編 號</td>
                    <td style="padding:0px;border:0">罰 款</td>
                    <td style="padding:0px;border:0">訴 訟 費</td>
                    <td style="padding:0px;border:0">違 法 日 期</td>
                    <td style="padding:0px;border:0">定 罪 日 期</td>
                </tr>
                <tr>
                    <td style="padding:0px;border:0"> Court Case No.</td>
                    <td style="padding:0px;border:0"> Ticket No.</td>
                    <td style="padding:0px;border:0"> Fines</td>
                    <td style="padding:0px;border:0"> Costs</td>
                    <td style="padding:0px;border:0"> Date of Offence</td>
                    <td style="padding:0px;border:0"> Date of Conviction</td>
                </tr>
                <tr>
                    <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                </tr>
                <% OscoPrintValue oscoPrintVal = (OscoPrintValue) request.getAttribute(RequestConstant.PAGE_VALUE);

                    if (oscoPrintVal != null) {
                        SimpleDateFormat sdFmt = new SimpleDateFormat("dd/MM/yyyy");
                        SimpleDateFormat dfFmt = new SimpleDateFormat("yyMMdd");
                        DecimalFormat decFmt = new DecimalFormat("###,##0.00");

                        Collection oscoColl = oscoPrintVal.getOscoValues();
                        int oscoSize = oscoColl.size();
                        int currentSize = 0;
                        int pageSize = 9;
                        int pageNo = 1;
                        int remainderCount = 0;
                        // added by ST on log SD15643732 start
                        int additionalLines = 0;
                        // added by ST on log SD15643732 end

                        if (oscoSize > 3) {
                            remainderCount = (oscoSize - 3) % pageSize;
                        }

                        boolean printDateFlag = false;
                        String courtCaseNo = null;
                        String ticketNoAndCheckDigit = null;
                        String osPenaltyStr = null;
                        String osCourtCostStr = null;
                        String offenceDate = null;
                        String convictionDate = null;
                        String regMark = null;
                        String newRegMark = null;
                        String atmPaymentNo = null;
                        String offenceEng = null;
                        String locationEng = null;

                        //Add by wujian for CR-2009-029 on 2010-01-18 begin
                        String paymentCourtFlag = "";
                        //Add by wujian for CR-2009-029 on 2010-01-18 end

                        Object oscoObj = null;
                        FpmOscoValue fpmOscoVal = null;
                        FppOscoValue fppOscoVal = null;
                        Date atmDate = null;
                        Date printDate = oscoPrintVal.getCurrentDate();
                        Iterator oscoIter = oscoColl.iterator();
                        while (oscoIter.hasNext()) {
                            currentSize++;
                            printDateFlag = false;
                            paymentCourtFlag = "";
                            boolean displayAtmNoFlag = false;
                            oscoObj = oscoIter.next();
                            if (oscoObj instanceof FpmOscoValue) {
                                fpmOscoVal = (FpmOscoValue) oscoObj;

                                courtCaseNo = fpmOscoVal.getCourtCaseNo();
                                //Modify by Zhail on 2007-7-3 for Production Log 1804003 begin
                                //Select WARRANT_STATUS to judge whether add a '*' or not in TD157
                                //if( fpmOscoVal.getWarrantPrintDate() != null && !"".equals(fpmOscoVal.getWarrantPrintDate())) printDateFlag = true;
                                if (fpmOscoVal.getWarrantStatus() != null && "I".equals(fpmOscoVal.getWarrantStatus())) {
                                    printDateFlag = true;
                                    //modify by wujian for CR-2009-029 on 2010-01-19 begin
                                    paymentCourtFlag = "*";
                                    //modify by wujian for CR-2009-029 on 2010-01-19 end
                                }
                                //Modify by Zhail on 2007-7-3 for Production Log 1804003 end
                                ticketNoAndCheckDigit = fpmOscoVal.getTicketNo();
                                if (fpmOscoVal.getCheckDigit() != null && !"".equals(fpmOscoVal.getCheckDigit())) {
                                    ticketNoAndCheckDigit = ticketNoAndCheckDigit + "(" + fpmOscoVal.getCheckDigit() + ")";
                                }

                                osPenaltyStr = DriverConstant.HKD_CURRENCY_SYMBOL;
                                if (fpmOscoVal.getOsPenalty() != null && fpmOscoVal.getOsAdditionalPenalty() != null) {
                                    osPenaltyStr += decFmt.format(fpmOscoVal.getOsPenalty().add(fpmOscoVal.getOsAdditionalPenalty()).doubleValue());
                                } else if (fpmOscoVal.getOsPenalty() != null) {
                                    osPenaltyStr += decFmt.format(fpmOscoVal.getOsPenalty().doubleValue());
                                } else if (fpmOscoVal.getOsAdditionalPenalty() != null) {
                                    osPenaltyStr += decFmt.format(fpmOscoVal.getOsAdditionalPenalty().doubleValue());
                                } else {
                                    osPenaltyStr = "";
                                }

                                osCourtCostStr = DriverConstant.HKD_CURRENCY_SYMBOL + decFmt.format(fpmOscoVal.getOsCourtCost().doubleValue());

                                if (fpmOscoVal.getOffenceDate() != null) {
                                    offenceDate = sdFmt.format(fpmOscoVal.getOffenceDate());
                                } else {
                                    offenceDate = "";
                                }
                                if (fpmOscoVal.getConvictionDate() != null) {
                                    convictionDate = sdFmt.format(fpmOscoVal.getConvictionDate());
                                } else {
                                    convictionDate = "";
                                }

                                regMark = (fpmOscoVal.getRegMark() == null ? "" : fpmOscoVal.getRegMark());
                                newRegMark = (fpmOscoVal.getNewRegMark() == null ? "" : fpmOscoVal.getNewRegMark());
                                atmPaymentNo = (fpmOscoVal.getAtmPaymentNo() == null ? "" : fpmOscoVal.getAtmPaymentNo());
                                offenceEng = (fpmOscoVal.getOffenceEng() == null ? "" : fpmOscoVal.getOffenceEng());
                                locationEng = (fpmOscoVal.getLocationEng() == null ? "" : fpmOscoVal.getLocationEng());

                                try {
                                    atmDate = dfFmt.parse(atmPaymentNo.toString().substring(0, 6));
                                    String printDateStr = sdFmt.format(printDate);
                                    printDate = sdFmt.parse(printDateStr);
                                    if (!printDate.after(atmDate)) {
                                        displayAtmNoFlag = true;
                                    }
                                } catch (Exception ex) {

                                }

                            } else if (oscoObj instanceof FppOscoValue) {
                                fppOscoVal = (FppOscoValue) oscoObj;

                                courtCaseNo = fppOscoVal.getCourtCaseNo();
                                //Modify by Zhail on 2007-7-3 for Production Log 1804003 begin
                                //Select WARRANT_STATUS to judge whether add a '*' or not in TD157
                                //if( fppOscoVal.getDeptRefNo() != null && !"".equals(fppOscoVal.getDeptRefNo())) printDateFlag = true;

                                //if( fppOscoVal.getWarrantStatus() != null && "I".equals(fppOscoVal.getWarrantStatus())) printDateFlag = true;
                                //modify by wujian for CR-2009-029 on 2010-01-18 begin
                                if (fppOscoVal.getWarrantStatus() != null && "I".equals(fppOscoVal.getWarrantStatus())) {
                                    printDateFlag = true;
                                    paymentCourtFlag = fppOscoVal.getPaymentCourtFlag();
                                }
                                //modify by wujian for CR-2009-029 on 2010-01-18 end
                                //Modify by Zhail on 2007-7-3 for Production Log 1804003 end

                                ticketNoAndCheckDigit = fppOscoVal.getTicketNo();
                                if (fppOscoVal.getCheckDigit() != null && !"".equals(fppOscoVal.getCheckDigit())) {
                                    ticketNoAndCheckDigit = ticketNoAndCheckDigit + "(" + fppOscoVal.getCheckDigit() + ")";
                                }

                                osPenaltyStr = DriverConstant.HKD_CURRENCY_SYMBOL;
                                if (fppOscoVal.getOsPenalty() != null && fppOscoVal.getOsAdditionalPenalty() != null) {
                                    osPenaltyStr += decFmt.format(fppOscoVal.getOsPenalty().add(fppOscoVal.getOsAdditionalPenalty()).doubleValue());
                                } else if (fppOscoVal.getOsPenalty() != null) {
                                    osPenaltyStr += decFmt.format(fppOscoVal.getOsPenalty().doubleValue());
                                } else if (fppOscoVal.getOsAdditionalPenalty() != null) {
                                    osPenaltyStr += decFmt.format(fppOscoVal.getOsAdditionalPenalty().doubleValue());
                                } else {
                                    osPenaltyStr = "";
                                }

                                osCourtCostStr = DriverConstant.HKD_CURRENCY_SYMBOL + decFmt.format(fppOscoVal.getOsCourtCost().doubleValue());

                                if (fppOscoVal.getOffenceDate() != null) {
                                    offenceDate = sdFmt.format(fppOscoVal.getOffenceDate());
                                } else {
                                    offenceDate = "";
                                }
                                if (fppOscoVal.getConvictionDate() != null) {
                                    convictionDate = sdFmt.format(fppOscoVal.getConvictionDate());
                                } else {
                                    convictionDate = "";
                                }

                                regMark = (fppOscoVal.getRegMark() == null ? "" : fppOscoVal.getRegMark());
                                newRegMark = (fppOscoVal.getNewRegMark() == null ? "" : fppOscoVal.getNewRegMark());
                                atmPaymentNo = (fppOscoVal.getAtmPaymentNo() == null ? "" : fppOscoVal.getAtmPaymentNo());
                                offenceEng = (fppOscoVal.getOffenceEng() == null ? "" : fppOscoVal.getOffenceEng());
                                locationEng = (fppOscoVal.getLocationEng() == null ? "" : fppOscoVal.getLocationEng());

                                try {
                                    atmDate = dfFmt.parse(atmPaymentNo.toString().substring(0, 6));
                                    String printDateStr = sdFmt.format(printDate);
                                    printDate = sdFmt.parse(printDateStr);
                                    if (!printDate.after(atmDate)) {
                                        displayAtmNoFlag = true;
                                    }
                                } catch (Exception ex) {

                                }

                            }
                            if (oscoSize > 3 && (currentSize == (pageNo - 1) * pageSize + 4)) {
                %>

                <% /*============================1. print page header    ============================*/ %>
                <DIV id="page2">
                    <br>
                    <table style="margin:0 auto;border-spacing:0;width:620px">
                        <tr>
                            <td style="padding:0px;border:0">
                                <%--amended by Daphne Keung for CR-2017-008 on 09APr2018 begin --%>
                                <table style="margin:0 auto;border-spacing:0;width:100%">
                                    <%--<tr><td>身 份 證 件 編 號：&nbsp;&nbsp;<c:out value="${requestScope.pageValue.idNo}" /> </td><td>日 期：&nbsp;&nbsp<fmt:formatDate value="${requestScope.pageValue.currentDate}" pattern="dd/MM/yyyy" /></td></tr>
                                            <tr ><td><I>Identity No.：</I></td><td> <I>Date </I> </td></tr>
                                            <tr ><td colspan="3" ><hr class="hr_style"></td></tr> --%>
                                    <tr>
                                        <td style="width:7%;padding:0px;border:0">姓 名：</td>
                                        <td style="width:37%;padding:0px;border:0"><c:out
                                                value="${requestScope.pageValue.nameChi}"/></td>
                                        <td style="width:39%;padding:0px;border:0">身 份 證 編 號：&nbsp;&nbsp;<c:out
                                                value="${requestScope.pageValue.idNo}"/></td>
                                        <td style="width:17%;padding:0px;border:0">日 期：&nbsp;&nbsp;<fmt:formatDate
                                                value="${requestScope.pageValue.currentDate}"
                                                pattern="dd/MM/yyyy"/></td>
                                    </tr>
                                    <tr>
                                        <td style="padding:0px;border:0"><I>Name:</I></td>
                                        <td style="padding:0px;border:0"><I><c:out
                                                value="${requestScope.pageValue.nameEng}"/></I></td>
                                        <td style="padding:0px;border:0"><I>Identity No.：</I></td>
                                        <td style="padding:0px;border:0"><I>Date </I></td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" style="padding:0px;border:0">
                                            <hr class="hr_style">
                                        </td>
                                    </tr>
                                </table>
                                <%--amended by Daphne Keung for CR-2017-008 on 09Apr2018 end --%>
                            </td>
                        </tr>

                        <tr>
                            <td style="padding:0px;border:0">
                                <table style="margin:0 auto;border-spacing:0;width:100%">
                                    <tr style="display:none">
                                        <th>Col1</th>
                                        <th>Col2</th>
                                        <th>Col3</th>
                                        <th>Col4</th>
                                        <th>Col5</th>
                                        <th>Col6</th>
                                        <th>Col7</th>
                                        <th>Col8</th>
                                    </tr>
                                    <tr>
                                        <td style="padding:0px;border:0">法 庭 案 件 編 號</td>
                                        <td style="padding:0px;border:0">控 票 編 號</td>
                                        <td style="padding:0px;border:0">罰 款</td>
                                        <td style="padding:0px;border:0">訴 訟 費</td>
                                        <td style="padding:0px;border:0">違 法 日 期</td>
                                        <td style="padding:0px;border:0">定 罪 日 期</td>
                                    </tr>
                                    <tr>
                                        <td style="padding:0px;border:0"> Court Case No.</td>
                                        <td style="padding:0px;border:0"> Ticket No.</td>
                                        <td style="padding:0px;border:0"> Fines</td>
                                        <td style="padding:0px;border:0"> Costs</td>
                                        <td style="padding:0px;border:0"> Date of Offence</td>
                                        <td style="padding:0px;border:0"> Date of Conviction</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                        <%}%>

                                        <% /*============================2. print page body   ===========================*/ %>
                                    <tr>
                                        <!-- <td><% if( printDateFlag ) out.print("*&nbsp;&nbsp;"); out.print(courtCaseNo);%></td> -->
                                        <!-- modify by wujian for CR-2009-029 begin -->
                                        <td style="padding:0px;border:0"><%
                                            if (printDateFlag) out.print(paymentCourtFlag + "&nbsp;&nbsp;");
                                            out.print(courtCaseNo);%></td>
                                        <!-- modify by wujian for CR-2009-029 end -->
                                        <td style="padding:0px;border:0"><% out.print(ticketNoAndCheckDigit); %></td>
                                        <td style="padding:0px;border:0"><% out.print(osPenaltyStr); %></td>
                                        <td style="padding:0px;border:0"><% out.print(osCourtCostStr); %></td>
                                        <td style="padding:0px;border:0"><% out.print(offenceDate); %></td>
                                        <td style="padding:0px;border:0"><% out.print(convictionDate); %></td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" style="padding:0px;border:0">
                                            &nbsp;&nbsp;REGISTRATION MARK：&nbsp;&nbsp;<% out.print(regMark); %>
                                            &nbsp;(<% out.print(newRegMark); %>)
                                        </td>
                                        <!-- Remark by Zhail for Production Log 1849620 on 2007-8-1 -->
                                        <% if (displayAtmNoFlag) {%>
                                        <td colspan="2" style="padding:0px;border:0">
                                            &nbsp;ATM Payment No：&nbsp;&nbsp;<% out.print(atmPaymentNo); %>
                                        </td>
                                        <% } else {%>
                                        <td colspan="2" style="padding:0px;border:0">&nbsp;</td>
                                        <% }%>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;&nbsp;OFFENCE：&nbsp;&nbsp;<%
                                            out.print(offenceEng); %></td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;&nbsp;LOCATION：&nbsp;&nbsp;<%
                                            out.print(locationEng); %></td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>

                                        <%
           // added by ST on log SD15643732 start
           if (currentSize <= 3){
        	   if (offenceEng.length() > 76 || locationEng.length() > 75){
        		   additionalLines += 1;
        	   }
           }
           // added by ST on log SD15643732 end
           
           if ( currentSize == oscoSize && (oscoSize < 3 || remainderCount > 0 ) )
           {
			  int additionCount = pageSize - remainderCount;

              if ( oscoSize < 3 ) additionCount = 3 - oscoSize;
              
			  if ( oscoSize > 3 )
			  {
				  if (additionCount == 1)
				  {
			  %>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>


                                        <%
				  }else if (additionCount == 2)
				  {
			  %>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>


                                        <%
				  }else if (additionCount == 3)
				  {
			  %>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>


                                        <%
				  }else if (additionCount == 4)
				  {
			  %>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>


                                        <%
				  }else if (additionCount == 5)
				  {
			  %>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>


                                        <%
				  }else if (additionCount == 6)
				  {
			  %>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>


                                        <%
				  }else if (additionCount == 7)
				  {
			  %>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>


                                        <%
				  }else if (additionCount == 8)
				  {
			  %>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>


                                        <%
				  }
			  }
			  else if ( oscoSize <= 3 )
			  {
				  for( int i = 0; i < additionCount; i ++ ) 
				  {
			%>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                        <%
							if (i+1 < additionCount) {
			%>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                        <%			}
				  }
			%>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                        <%
			  }
		   }

		   if ( currentSize == oscoSize )
		   {
				if (currentSize == 3 || (currentSize - 3) % 9 == 0)
						   {
					 %>
                                    <tr>
                                        <td style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                        <%	   }

							  if ((currentSize - 3 != 0) && (currentSize - 3) % 9 == 0)
							  {
					 %>
                                    <tr>
                                        <td style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="padding:0px;border:0">&nbsp;</td>
                                    </tr>
                                        <%	   }

			%>

                                        <% /*============================2.1 print OSCO page's IO, RO   ===========================*/ %>
                                    <table style="margin:0 auto;border-spacing:0;width:620px">
                                        <% if (currentSize == 3 || (currentSize == oscoSize && oscoSize < 3)) {
                                        %>
                                        <% } %>
                                        <tr style="text-align:-webkit-center">
                                            <td style="width:83%;padding:0px;border:0">
                                                <div style="text-align:left"><B>
                                                    <c:choose>
                                                        <c:when test="${RO_LIST_EXIST == 'true'}"> REFRAINING ORDER ACTIVE </c:when>
                                                        <c:when test="${RO_LIST_EXIST == 'false'}"> NO REFRAINING ORDER </c:when>
                                                        <c:when test="${RO_LIST_EXIST == ''}"> NO REFRAINING ORDER </c:when>
                                                    </c:choose>
                                                </B></div>
                                            </td>
                                            <td style="width:17%;padding:0px;border:0">
                                                <div style="text-align:right"><B><c:out value="${TXN_NO}"/></B></div>
                                            </td>
                                        </tr>
                                        <c:if test="${IO_LIST_EXIST == 'true'}">
                                            <tr style="text-align:-webkit-center">
                                                <td style="width:83%;padding:0px;border:0">
                                                    <div style="text-align:left"><B>
                                                        INSPECTION ORDER ACTIVE (<c:out
                                                            value="${requestScope.pageValue.regMark}"/> :<c:out
                                                            value="${IO_LIST_STRING}"/>)
                                                    </B></div>
                                                </td>
                                                <td style="width:17%;padding:0px;border:0"></td>
                                            </tr>
                                        </c:if>
                                        <c:if test="${IO_LIST_EXIST2 == 'true'}">
                                            <tr style="text-align:-webkit-center">
                                                <td style="width:83%;padding:0px;border:0">
                                                    <div style="text-align:left"><B>
                                                        INSPECTION ORDER ACTIVE (<c:out
                                                            value="${requestScope.pageValue.regMark2}"/> :<c:out
                                                            value="${IO_LIST_STRING2}"/>)
                                                    </B></div>
                                                </td>
                                                <td style="width:17%;padding:0px;border:0"></td>
                                            </tr>
                                        </c:if>
                                        <c:if test="${IO_LIST_EXIST != 'true' && !empty requestScope.pageValue.regMark && requestScope.pageValue.regMark != ''}">
                                            <tr style="text-align:-webkit-center">
                                                <td style="width:83%;padding:0px;border:0">
                                                    <div style="text-align:left"><B>
                                                        NO INSPECTION ORDER (<c:out
                                                            value="${requestScope.pageValue.regMark}"/>)
                                                    </B></div>
                                                </td>
                                                <td style="width:17%;padding:0px;border:0"></td>
                                            </tr>
                                        </c:if>
                                        <c:if test="${IO_LIST_EXIST2 != 'true' && !empty requestScope.pageValue.regMark2 && requestScope.pageValue.regMark2 != ''}">
                                            <tr style="text-align:-webkit-center">
                                                <td style="width:83%;padding:0px;border:0">
                                                    <div style="text-align:left"><B>
                                                        NO INSPECTION ORDER (<c:out
                                                            value="${requestScope.pageValue.regMark2}"/>)
                                                    </B></div>
                                                </td>
                                                <td style="width:17%;padding:0px;border:0"></td>
                                            </tr>
                                        </c:if>
                                    </table>
                                        <% } else if (currentSize == 3 || currentSize == (pageNo * pageSize + 3) )
	    {
	 %>
                                    <table style="margin:0 auto;border-spacing:0;width:620px">
                                        <tr style="display:none">
                                            <th>Col1</th>
                                            <th>Col2</th>
                                        </tr>
                                        <% if (currentSize == 3 || (currentSize - 3) % 9 == 0) {
                                        %>
                                        <tr>
                                            <td style="padding:0px;border:0">&nbsp;</td>
                                        </tr>
                                        <!-- updated by ST on log SD15643732 start-->
                                        <!-- <tr><td>&nbsp;</td></tr>-->
                                        <%
                                            if (additionalLines < 3) {
                                                for (int i = 3; i > additionalLines; i--) {
                                        %>
                                        <tr>
                                            <td style="padding:0px;border:0">&nbsp;</td>
                                        </tr>
                                        <%
                                                    }
                                                }
                                            }
                                            // updated by ST on log SD15643732 end
                                            if ((currentSize - 3 != 0) && (currentSize - 3) % 9 == 0) {
                                        %>
                                        <tr>
                                            <td style="padding:0px;border:0">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="padding:0px;border:0">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="padding:0px;border:0">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="padding:0px;border:0">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="padding:0px;border:0">&nbsp;</td>
                                        </tr>
                                        <% }
                                        %>
                                        <tr style="text-align:-webkit-center">
                                            <td style="width:83%;padding:0px;border:0">
                                                <div style="text-align:left"><B>&nbsp;</B></div>
                                            </td>
                                            <td style="width:17%;padding:0px;border:0">
                                                <div style="text-align:right"><B>&nbsp;</B></div>
                                            </td>
                                        </tr>
                                        <tr style="text-align:-webkit-center">
                                            <td style="width:83%;padding:0px;border:0">
                                                <div style="text-align:left"><B>&nbsp;</B></div>
                                            </td>
                                            <td style="width:17%;padding:0px;border:0">&nbsp;</td>
                                        </tr>
                                    </table>
                                        <% }
	    if (currentSize == 3 || currentSize == oscoSize || currentSize == (pageNo * pageSize + 3) )
	    {  if ( currentSize > 3 ) pageNo ++;
	 %>

                                        <% /*============================3. print page tailer  ============================*/  %>
                                    <br>
                                    <table style="margin:0 auto;border-spacing:0;width:100%">

                                        <% if (currentSize == 3 || (currentSize == oscoSize && oscoSize < 3)) {
                                        %>
                                        <tr>
                                            <td style="padding:0px;border:0">*/#1/#2/#3&nbsp;&nbsp;請參閱後頁附注 Please
                                                refer to the footnotes on last page for details.
                                                <br>
                                                <c:out value="${sessionScope.userProfile.workStationId}"/>&nbsp;<c:out
                                                        value="${sessionScope.userProfile.operatorId}"/>&nbsp;<fmt:formatDate
                                                        value="${requestScope.pageValue.currentDate}"
                                                        pattern="dd/MM/yyyy  HH:mm:ss"/>
                                            </td>
                                        </tr>
                                        <!-- updated by ST on log SD16676928 start-->

                                        <% if (currentSize == oscoSize && oscoSize < 3) {
                                        %>
                                        <!-- updated by ST on log SD15643732 end-->

                                        <!-- Changed by Daphne Keung for CR-2015-023 (Office Hour) on 17-11-2015 start-->
                                        <tr>
                                            <td style="padding:0px;border:0">
                                                <DIV style="PAGE-BREAK-AFTER: always">&nbsp;</DIV>
                                            </td>
                                        </tr>
                                        <!-- Changed by Daphne Keung for CR-2015-023 (Office Hour) on 17-11-2015 end-->

                                        <!-- updated by ST on log SD16676928 start-->
                                        <%
                                        } else {
                                        %>
                                        <tr>
                                            <td style="padding:0px;border:0">
                                                <DIV style="PAGE-BREAK-AFTER: auto">&nbsp;</DIV>
                                            </td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                        <!-- updated by ST on log SD16676928 end-->

                                        <% } else {
                                        %>
                                        <tr>
                                            <td style="padding:0px;border:0">*/#1/#2/#3&nbsp;&nbsp;請參閱後頁附注 Please
                                                refer to the footnotes on last page for details.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding:0px;border:0">
                                                <DIV style="PAGE-BREAK-AFTER: always">&nbsp;</DIV>
                                            </td>
                                        </tr>
                                        <% } %>

                                    </table>
                            </td>
                        </tr>
                    </table>

                    <%--     if (currentSize == 3 || (currentSize == oscoSize && oscoSize < 3) )
                       {
                 --%>
                    <%--	 /*
                    <tr>
                        <td>
                          <table width="100%" cellspacing="0" align="center">
                                //<tr><td style="padding:0px;border:0">&nbsp;</td></tr>
                                <tr><td style="padding:0px;border:0"><c:out value="${sessionScope.userProfile.workStationId}" />&nbsp;<c:out value="${sessionScope.userProfile.operatorId}" />&nbsp;<fmt:formatDate value="${requestScope.pageValue.currentDate}" pattern="dd/MM/yyyy  HH:mm:ss" /></td></tr>
                                <tr>
                              <td align="left" class="footer-context" style="PAGE-BREAK-AFTER: always;padding:0px;border:0">&nbsp;</td>
                            </tr>
                          </table>
                        </td>
                    </tr>
                    */
                    </table>
                    <DIV id="first page">
                    </DIV>--%>
                    <%--  } else
                         {
                     --%>
            </table>
            </DIV>
            <%--      }--%><%
     } 	   				  
 	} // end of while	
 
 //if(pageSize>0)out.print(pageSize);
  } //end of if oscoPrintVal != null 			    
%>
            <%
                /* ==============================================================================================
                 * ========     print last page
                 * ==============================================================================================
                 */
            %>


            <DIV id="page_last">
                <table style="margin:0 auto;border-spacing:0;width:620px">
                    <tr>
                        <td style="padding:0px;border:0">
                            <table style="margin:0 auto;border-spacing:0;width:100%">
                                <tr style="display:none">
                                    <th>Col1</th>
                                    <th>Col2</th>
                                </tr>
                                <!-- commented for CR-2014-010 (Barcode System) by DaphneKeung 2015-11-11 start -->
                                <!--  <tr>
                                     <td colspan="2">&nbsp;&nbsp;</td>
                                 </tr> -->
                                <!-- commented for CR-2014-010 (Barcode System) by DaphneKeung 2015-11-11 end -->
                                <tr>
                                    <td colspan="2" style="padding:0px;border:0">附註<br>Footnotes</td>

                                </tr>
                                <tr>
                                    <td colspan="2" style="padding:0px;border:0">&nbsp;&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="vertical-align:top;width:2%;padding:0px;border:0">*&nbsp;&nbsp;</td>
                                    <td style="padding:0px;border:0">
                                        欠交有關罰款的手令已發出，該等罰款必須在原審裁判法院繳交，請參閱詳列於下的各裁判法院會計部地址及查詢電話。如所發出的手令已逾3個月，你必須向就近警署報到以便執行有關手令。
                                        <br>
                                        Warrant in respect of the outstanding fines has been issued. The payment of the
                                        outstanding amount must be made at the Magistrates' Courts where the case
                                        originated.
                                        Please see below the addresses and enquiry telephone no. of the Accounts Office
                                        of the Magistrates' Courts. If the warrant has been issued against you for more
                                        than 3 months, you are required to report to the nearest Police Station in
                                        relation to the execution of this warrant.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align:top;width:2%;padding:0px;border:0">#&nbsp;&nbsp;</td>
                                    <td style="padding:0px;border:0">定額罰款財物扣押令已發出。<br>Fixed penalty distress
                                        warrant has been issued.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align:top;width:2%;padding:0px;border:0">1&nbsp;&nbsp;</td>
                                    <td style="padding:0px;border:0">該等罰款必須在<codetable:out
                                            value="<%=CodeTableConstant.WARRANT_COURT_MAPPING%>"
                                            formatType="<%=CodeTableConstant.INTERPRETATION%>"
                                            language="<%=CodeTableConstant.CHINESE%>" selected="ES"></codetable:out>繳交。<br>The
                                        payment of the outstanding amount must be made at <codetable:out
                                                value="<%=CodeTableConstant.WARRANT_COURT_MAPPING%>"
                                                formatType="<%=CodeTableConstant.INTERPRETATION%>"
                                                language="<%=CodeTableConstant.ENGLISH%>" selected="ES"></codetable:out>.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align:top;width:2%;padding:0px;border:0">2&nbsp;&nbsp;</td>
                                    <td style="padding:0px;border:0">該等罰款必須在<codetable:out
                                            value="<%=CodeTableConstant.WARRANT_COURT_MAPPING%>"
                                            formatType="<%=CodeTableConstant.INTERPRETATION%>"
                                            language="<%=CodeTableConstant.CHINESE%>" selected="KC"></codetable:out>繳交。<br>The
                                        payment of the outstanding amount must be made at <codetable:out
                                                value="<%=CodeTableConstant.WARRANT_COURT_MAPPING%>"
                                                formatType="<%=CodeTableConstant.INTERPRETATION%>"
                                                language="<%=CodeTableConstant.ENGLISH%>" selected="KC"></codetable:out>.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align:top;width:2%;padding:0px;border:0">3&nbsp;&nbsp;</td>
                                    <td style="padding:0px;border:0">該等罰款必須在<codetable:out
                                            value="<%=CodeTableConstant.WARRANT_COURT_MAPPING%>"
                                            formatType="<%=CodeTableConstant.INTERPRETATION%>"
                                            language="<%=CodeTableConstant.CHINESE%>" selected="ST"></codetable:out>繳交。<br>The
                                        payment of the outstanding amount must be made at <codetable:out
                                                value="<%=CodeTableConstant.WARRANT_COURT_MAPPING%>"
                                                formatType="<%=CodeTableConstant.INTERPRETATION%>"
                                                language="<%=CodeTableConstant.ENGLISH%>" selected="ST"></codetable:out>.
                                    </td>
                                </tr>
                            </table>
                        </td>

                    </tr>
                    <tr>
                        <td style="padding:0px;border:0">
                            <table style="margin:0 auto;border-spacing:0;width:100%">
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;&nbsp;&nbsp;</td>
                                    <td style="padding:0px;border:0">&nbsp;&nbsp;&nbsp;</td>
                                    <td style="padding:0px;border:0">&nbsp;&nbsp;&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0"><U><B>Code 代號</B></U></td>
                                    <td style="padding:0px;border:0"><U><B>Magistrates' Courts （Accounts Office）</B></U>
                                    </td>
                                    <td style="padding:0px;border:0"><U><B>裁判法院 （會計部）</B></U></td>
                                </tr>
                                <tr style="height:5px">
                                    <td colspan="3" style="height:5px;padding:0px;border:0"></td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"><U><B>HONG KONG</B></U></td>
                                    <td style="padding:0px;border:0"><U><B>香港區</B></U></td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0"> ES</td>
                                    <td style="padding:0px;border:0"> Eastern Magistrates' Courts</td>
                                    <td style="padding:0px;border:0"> 東區裁判法院</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"> 7/F, Eastern Law Courts Building</td>
                                    <td style="padding:0px;border:0"> 香港西灣河太安街 29 號</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"> 29 Tai On Street</td>
                                    <td style="padding:0px;border:0"> 東區法院大樓 7 樓</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"> Sai Wan Ho, Hong Kong</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"></td>
                                </tr>
                                <%--
                                <tr height="5px">
                                  <td height="5px"></td>
                                  <td height="5px"></td>
                                  <td height="5px"></td>
                                </tr>
                                 --%>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"><U><B>KOWLOON</B></U></td>
                                    <td style="padding:0px;border:0"><U><b>九龍區</b></U></td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0"> KT</td>
                                    <td style="padding:0px;border:0"> Kwun Tong Magistrates' Courts</td>
                                    <td style="padding:0px;border:0"> 觀塘裁判法院</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"> 2/F, Kwun Tong Law Courts Building</td>
                                    <td style="padding:0px;border:0"> 九龍觀塘鯉魚門道 10 號</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"> 10 Lei Yue Mun Road, Kowloon</td>
                                    <td style="padding:0px;border:0">觀塘法院大樓 2 樓</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                </tr>
                                <%--
                                <tr height="5px">
                                  <td height="5px"></td>
                                  <td height="5px"></td>
                                  <td height="5px"></td>
                                </tr>
                                --%>
                                <tr>
                                    <td style="padding:0px;border:0"> KC</td>
                                    <td style="padding:0px;border:0"> Kowloon City Magistrates' Courts</td>
                                    <td style="padding:0px;border:0">九龍城裁判法院</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"> 3/F, Kowloon City Law Courts Building</td>
                                    <td style="padding:0px;border:0"> 九龍亞皆老街 147 M 號</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"> 147M Argyle Street, Kowloon</td>
                                    <td style="padding:0px;border:0"> 九龍城法院大樓 3 樓</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                </tr>

                                <!-- Added by Danny Tsang for CR-2015-029(Tsuen Wan Magistrates' Courts) on 26/10/2016 -->
                                <tr>
                                    <td style="padding:0px;border:0"> WK</td>
                                    <td style="padding:0px;border:0">West Kowloon Magistrates' Courts</td>
                                    <td style="padding:0px;border:0">西九龍裁判法院</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"> 3/F, Tower A, West Kowloon Law Courts Building
                                    </td>
                                    <td style="padding:0px;border:0"> 九龍深水埗通州街501號</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"> 501 Tung Chau Street</td>
                                    <td style="padding:0px;border:0"> 西九龍法院大樓A座3樓</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"> Sham Shui Po, Kowloon</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"></td>
                                </tr>
                                <!-- Added by Danny Tsang for CR-2015-029(Tsuen Wan Magistrates' Courts) on 26/10/2016 -->

                                <%--
                                <tr height="3px">
                                  <td height="3px"></td>
                                  <td height="3px"></td>
                                  <td height="3px"></td>
                                </tr>
                                 --%>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"><U><B>NEW TERRITORIES</B></U></td>
                                    <td style="padding:0px;border:0"><U><b>新界區</b></U></td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0"> FL</td>
                                    <td style="padding:0px;border:0"> Fanling Magistrates' Courts</td>
                                    <td style="padding:0px;border:0">粉嶺裁判法院</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"> 2/F, Fanling Law Courts Building</td>
                                    <td style="padding:0px;border:0"> 新界粉嶺璧峰路 1 號</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"> 1 Pik Fung Road</td>
                                    <td style="padding:0px;border:0"> 粉嶺法院大樓 2 樓</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"> Fanling, New Territories</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"></td>
                                </tr>
                                <%--
                                <tr height="5px">
                                  <td height="5px"></td>
                                  <td height="5px"></td>
                                  <td height="5px"></td>
                                </tr>
                                 --%>
                                <tr>
                                    <td style="padding:0px;border:0"> ST</td>
                                    <td style="padding:0px;border:0"> Shatin Magistrates' Courts</td>
                                    <td style="padding:0px;border:0"> 沙田裁判法院</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"> 2/F, Shatin Law Courts Building</td>
                                    <td style="padding:0px;border:0"> 新界沙田宜正里 1 號</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"> 1 Yi Ching Lane</td>
                                    <td style="padding:0px;border:0"> 沙田法院大樓 2 樓</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"> Shatin, New Territories</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"></td>
                                </tr>
                                <%--
                                <tr height="5px">
                                  <td height="5px"></td>
                                  <td height="5px"></td>
                                  <td height="5px"></td>
                                </tr>
                                --%>
                                <tr>
                                    <td style="padding:0px;border:0"> TM</td>
                                    <td style="padding:0px;border:0"> Tuen Mun Magistrates' Courts</td>
                                    <td style="padding:0px;border:0">屯門裁判法院</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"> 2/F, Tuen Mun Law Courts Building</td>
                                    <td style="padding:0px;border:0"> 新界屯門屯喜路 1 號</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"> 1 Tuen Hi Road</td>
                                    <td style="padding:0px;border:0"> 屯門法院大樓 2 樓</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"> Tuen Mun, New Territories</td>
                                </tr>
                                <tr>
                                    <td style="padding:0px;border:0">&nbsp;</td>
                                    <td style="padding:0px;border:0"></td>
                                </tr>
                                <%--
                                <tr height="5px">
                                  <td height="5px"></td>
                                  <td height="5px"></td>
                                  <td height="5px"></td>
                                </tr>
                                 --%>
                                <%--      <tr>
                                            <td> TW </td>
                                            <td>※ Tsuen Wan Magistrates' Courts </td>
                                            <td>※荃灣裁判法院 </td>
                                          </tr>
                                          <tr>
                                            <td>&nbsp; </td>
                                            <td> G/F, Tsuen Wan Law Courts Building </td>
                                            <td> 荃灣大河道 70 號</td>
                                          </tr>
                                          <tr>
                                            <td>&nbsp; </td>
                                            <td> 70 Tai Ho Road </td>
                                            <td> 荃灣法院大樓地下</td>
                                          </tr>
                                          <tr>
                                            <td>&nbsp; </td>
                                            <td> Tsuen Wan, New Territories </td>
                                            <td>（電話 ： 2412 5978）^ </td>
                                          </tr>
                                          <tr>
                                            <td>&nbsp; </td>
                                            <td> （Tel.： 2412 5978）^ </td>
                                            <td> </td>
                                          </tr> --%>

                                <tr style="height:5px">
                                    <td style="height:5px;padding:0px;border:0"></td>
                                    <td style="height:5px;padding:0px;border:0"></td>
                                    <td style="height:5px;padding:0px;border:0"></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding:0px;border:0">
                            <!-- Changed by Daphne Keung for CR-2015-023 (Office Hour) on 5-11-2015 start-->
                            <!--<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
          <tr>
            <td width="39%"> Opening Hours （Accounts Office）： </td>
			<td width="12%"> </td>
            <td width="49%">辦公時間（會計部）：</td>
          </tr>
          <tr>
            <td colspan="3">
				<table width="100%">
				<tr>
                    <td width="16%">Monday-Friday：</td>
					<td width="35%"><c:out value="${requestScope.pageValue.judiOfficeHourAmEng}" /></td>
					<td width="">星期一至五 ：</td>
					<td ><c:out value="${requestScope.pageValue.judiOfficeHourAmChi}" /></td>
                <tr>
                <tr>
					<td></td>
					<td><c:out value="${requestScope.pageValue.judiOfficeHourPmEng}" /></td>
					<td> </td>
					<td ><c:out value="${requestScope.pageValue.judiOfficeHourPmChi}" /></td>
				</tr>
                </table>
            </td>
          </tr>          
          <c:if test="${requestScope.pageValue.judiOfficeHour5day != 'Y' && requestScope.pageValue.judiOfficeHour5day != 'y'}" > 
          <tr>
		  <td colspan="3">
		  	<table width="100%">
				<tr>
					<td width="16%">Saturday&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;：</td>
					<td width="35%">9:00a.m. - 12:00noon</td>
					<td width="13%">星期六&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;：</td>
					<td>上午九時至中午十二時</td>
				</tr>
			</table>
			</td>
          </tr>
          </c:if>
		  -->
                            <table style="margin:0 auto;border-spacing:0;width:100%">
                                <tr style="display:none">
                                    <th>Col1</th>
                                    <th>Col2</th>
                                    <th>Col3</th>
                                    <th>Col4</th>
                                    <th>Col5</th>
                                    <th>Col6</th>
                                </tr>
                                <tr>
                                    <td colspan="3" style="text-align:-webkit-left;width:50%;padding:0px;border:0">
                                        Opening Hours （Accounts Office）：
                                    </td>
                                    <td colspan="3" style="text-align:-webkit-left;width:50%;padding:0px;border:0">
                                        辦公時間（會計部）：
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:14%;padding:0px;border:0">Monday-Friday</td>
                                    <td style="width:1%;padding:0px;border:0">:&nbsp;</td>
                                    <td style="width:35%;padding:0px;border:0"><c:out
                                            value="${requestScope.pageValue.judiOfficeHourAmEng}"/></td>
                                    <td style="width:14%;padding:0px;border:0">星期一至五</td>
                                    <td style="width:1%;padding:0px;border:0">：</td>
                                    <td style="text-align:-webkit-left;white-space:nowrap;width:35%;padding:0px;border:0">
                                        <c:out value="${requestScope.pageValue.judiOfficeHourAmChi}"/></td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="padding:0px;border:0"></td>
                                    <td style="padding:0px;border:0"><c:out
                                            value="${requestScope.pageValue.judiOfficeHourPmEng}"/></td>
                                    <td colspan="2" style="padding:0px;border:0"></td>
                                    <td style="text-align:-webkit-left;padding:0px;border:0"><c:out
                                            value="${requestScope.pageValue.judiOfficeHourPmChi}"/></td>
                                </tr>
                                <c:if test="${requestScope.pageValue.judiOfficeHour5day != 'Y' && requestScope.pageValue.judiOfficeHour5day != 'y'}">
                                <tr>
                                    <td style="padding:0px;border:0">Saturday</td>
                                    <td style="padding:0px;border:0">:</td>
                                    <td style="padding:0px;border:0">9:00a.m. - 12:00noon</td>
                                    <td style="padding:0px;border:0">星期六</td>
                                    <td style="padding:0px;border:0">：</td>
                                    <td style="padding:0px;border:0">上午九時至中午十二時</td>
                                </tr>
                    </tr>
                    </c:if>
                    <!-- Changed by Daphne Keung for CR-2015-023 (Office Hour) on 5-11-2015 end-->
                </table>
        </td>
    </tr>
    <!-- Added by Danny Tsang for CR-2015-029(Tsuen Wan Magistrates' Courts) on 26/10/2016 Start -->
    <tr>
        <td style="padding:0px;border:0">&nbsp;</td>
    </tr>
    <tr>
        <td style="padding:0px;border:0">如有任何查詢，請致電2677 8373。</td>
    </tr>
    <tr>
        <td style="padding:0px;border:0">For enquiries, please contact 2677 8373.</td>
    </tr>

    <!-- Added by Danny Tsang for CR-2015-029(Tsuen Wan Magistrates' Courts) on 26/10/2016 End -->
    <%--  <tr><td>&nbsp;</td></tr>  --%>
    <%--  <tr><td>&nbsp;</td></tr>  --%>
    <tr>
        <td style="padding:0px;border:0">
            <table style="margin:0 auto;border-spacing:1px;width:100%">
                <tr>
                    <td style="height:1px;padding:2px;border:0">
                        <hr class="hr_style">
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td style="padding:0px;border:0">
            <table style="margin:0 auto;border-spacing:0;width:100%">
                <tr>
                    <td style="text-align:-webkit-center;padding:0px;border:0"><B>FOR OFFICIAL USE （本 欄 不 必 填
                        寫）</B></td>
                </tr>
                <tr>
                    <td style="padding:0px;border:0">&nbsp;</td>
                </tr>
                <tr>
                    <td style="padding:0px;border:0"> I certify that all the receipt numbers entered below the case
                        numbers on the front page are correct and no outstanding court
                    </td>
                </tr>
                <tr>
                    <td style="padding:0px;border:0"> order in respect of the driving licence holder/registered owner is
                        received to-date.
                    </td>
                </tr>
                <tr>
                    <td style="padding:0px;border:0">&nbsp;</td>
                </tr>
                <tr>
                    <td style="padding:0px;border:0">&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td style="padding:0px;border:0">
            <table style="margin:0 auto;border-spacing:1px;width:100%">
                <tr>
                    <td style="padding:2px;border:0"><I>Date</I>:...................................................
                    </td>
                    <td style="padding:2px;border:0"><I>F. P. Clerk:</I>...................................................
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</DIV>
</body>
</html>