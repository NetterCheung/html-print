<!DOCTYPE html>
<%@ page import="hk.gov.valid.util.RequestConstant" %>
<%@ page import="hk.gov.valid.util.CodeTableConstant" %>
<%@ page import="hk.gov.valid.util.SessionConstant" %>
<%@ page import="hk.gov.valid.driver.model.DrivingLicencePageValue" %>
<%@ page import="hk.gov.valid.hkpf.util.CodeTableDescription" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="hk.gov.valid.util.Util" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print" %>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>

<c:set var="pageVal" value="${sessionScope.driverLicencePageValueletter}" scope="request"/>


<%
    DrivingLicencePageValue val = (DrivingLicencePageValue) session.getAttribute(SessionConstant.DRIVER_LICENCE_PAGE_VALUE_LETTER);
    String nameEng = val.getNameEng();
    ;
    String nameChi = val.getNameChi();
    String titlecode = val.getTitleCode();
    String titleDescEng = CodeTableDescription.getCodeTableDescription(CodeTableConstant.TITLE_CODE, titlecode, CodeTableConstant.ENGLISH);
    String titleDescChi = CodeTableDescription.getCodeTableDescription(CodeTableConstant.TITLE_CODE, titlecode, CodeTableConstant.CHINESE);

    String nameAndTitleChi = "";
    String nameAndTitleEng = "";
    if (nameChi == null || nameChi.trim().equals("")) {
        nameAndTitleChi = titleDescEng + " " + nameEng;
    } else {
        nameAndTitleChi = nameChi + " " + titleDescChi;
    }

    if (nameEng == null || nameEng.trim().equals("")) {
        nameAndTitleEng = nameChi + " " + titleDescChi;
    } else {
        nameAndTitleEng = titleDescEng + " " + nameEng;

    }

    Date letterDate = val.getAcceptanceLetterDate();
    String letterDateYear = (new SimpleDateFormat("yyyy")).format(letterDate);
    String letterDateMonth = (new SimpleDateFormat("MM")).format(letterDate);
    String letterDateDay = (new SimpleDateFormat("dd")).format(letterDate);
%>

<html lang="en">
<head>
    <title>Document</title>
    <!-- saved from url=(0014)about:internet -->
    <meta charset="UTF-8">
    <meta name="margin-top" content="2">
    <meta name="margin-bottom" content="2">
    <meta name="margin-left" content="2">
    <meta name="margin-right" content="2">
    <meta name="copies" content="1">
    <meta name="papersize" content="A4">
    <meta name="orientation" content="0">
    <meta name="duplex" content="2">

    <style>
        <!--
        .ENGLISH_FORMAT1 {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            font-size: 12pt;
        }

        .ENGLISH_FORMAT2 {
            font-family: "Times New Roman", Times, serif;
            font-size: 12pt;
        }

        .CHINESE_FORMAT1 {
            font-family: "MingLiU_HKSCS";
            font-weight: bold;
            font-size: 12pt;
        }

        .CHINESE_FORMAT2 {
            font-family: "MingLiU_HKSCS";
            font-size: 12pt;
        }

        -->
    </style>
</head>
<body>

<table style="width:620px;margin:0 auto;border-spacing:0px">
    <tr>
        <td style="text-align:left">
            <table style="width:100%;border-spacing:1px">
                <tr>
                    <td style="padding:2px"><img style="border:0" alt=""
                                                 src="<print:BlankFormPrint imageName='logo.gif'/>"></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td style="text-align:center">
            <table style="width:100%;border-spacing:1px">
                <tr style="display:none">
                    <th>Col1</th>
                    <th>Col2</th>
                    <th>Col3</th>
                </tr>
                <tr>
                    <td style="width:11%;padding:2px;text-align: left;">Our Ref.:</td>
                    <td colspan="2" style="padding:2px"></td>
                </tr>
                <tr>
                    <td style="padding:2px;text-align: left;">Tel No.:</td>
                    <td colspan="2" style="padding:2px;text-align: left;"><c:out
                            value="${pageVal.issuePrintingCtlValue.telNo1}"/></td>
                </tr>
                <tr>
                    <td style="padding:2px;text-align: left;">Date:</td>
                    <td colspan="2" style="padding:2px;text-align: left;"><fmt:formatDate pattern="dd/MM/yyyy"
                                                                                          value="${pageVal.acceptanceLetterDate}"/></td>
                </tr>
                <tr>
                    <td colspan="3" style="padding:2px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="padding:2px;text-align: left;">To：</td>
                    <td colspan="2" style="padding:2px;text-align: left;"><%= nameAndTitleEng%>
                    </td>
                </tr>
                <tr>
                    <td style="padding:2px">&nbsp;</td>
                    <td colspan="2" style="padding:2px;text-align: left;"><c:out value="${pageVal.threeLineAddrEng[0]}"
                                                                                 escapeXml="false"/></td>
                </tr>
                <tr>
                    <td style="padding:2px">&nbsp;</td>
                    <td colspan="2" style="padding:2px;text-align: left;"><c:out value="${pageVal.threeLineAddrEng[1]}"
                                                                                 escapeXml="false"/></td>
                </tr>
                <tr>
                    <td style="padding:2px">&nbsp;</td>
                    <td colspan="2" style="padding:2px;text-align: left;"><c:out value="${pageVal.threeLineAddrEng[2]}"
                                                                                 escapeXml="false"/></td>
                </tr>

                <tr>
                    <td colspan="3" style="padding:2px">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" style="padding:2px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="padding:2px">&nbsp;</td>
                    <td colspan="2" style="padding:2px;text-align: left;">

                        <p>
                            <%
                                if (null == nameEng || "".equals(nameEng)) {
                                    if (null != nameChi && !"".equals(nameChi)) {
                            %>
                            <%
                                String browserVersion = (String) session.getAttribute(SessionConstant.IE_VERSION);

                                if (SessionConstant.IE9.equals(browserVersion)) {
                                    // IE9
                            %>
                            <span style="font-family:MingLiU_HKSCS;">
          	  	<%= nameAndTitleChi%>;
</span>
                            <%
                            } else {
                            %>
                            <%= nameAndTitleChi%>
                            <%
                                }
                            %>

                            <%
                                }
                            } else {
                            %>
                            <%= nameAndTitleEng%>
                            <%
                                }
                            %>
                        </p>

                        <p style="text-align:center;">
                        <div style="text-align:center;text-decoration:underline;font-weight:bold;">Application for
                            Renewal of Full Driving Licence
                        </div>
                        <div style="text-align:center;">(Driving Licence No.: <c:out
                                value="${pageVal.legalEntityValue.idNo}"/>)
                        </div>
                        </p>


                        <p style="text-indent:1cm;text-align:justify;">
                            Transport Department has completed your application for renewal of full driving licence and
                            attach herewith your new driving licence. Please note that your old driving licence shall
                            cease to be valid and you are advised to destroy immediately.
                        </p>


                        <table style="width:100%;float:right;border-spacing:0px">
                            <tr>
                                <td style="text-align:right;padding:2px">
                                    <br><br><br><br>
                                    Transport Department &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right;padding:2px">
                                    (This is a computer print-out. Signature is not required.)<br>
                                </td>
                            </tr>
                        </table>

                    </td>
                </tr>
            </table>

        </td>
    </tr>
</table>
<DIV style="page-break-before:always;" class="first_page">&nbsp;</DIV>

<DIV style="page-break-after:auto;" class="page_last">
    <!-- print on another page -->

    <table style="width:620px;margin:0 auto;border-spacing:0px">
        <tr>
            <td>
                <table style="width:100%;float:left;border-spacing:1px">
                    <tr style="text-align:left">
                        <td style="padding:2px"><img style="border:0" alt=""
                                                     src="<print:BlankFormPrint imageName='logo.gif'/>"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table style="width:100%;margin:0 auto;border-spacing:1px">
                    <tr style="display:none">
                        <th>Col1</th>
                        <th>Col2</th>
                        <th>Col3</th>
                    </tr>
                    <tr>
                        <td style="width:14%;padding:2px" class="CHINESE_FORMAT2">本署檔號：</td>
                        <td colspan="2" style="padding:2px"></td>
                    </tr>
                    <tr>
                        <td style="padding:2px" class="CHINESE_FORMAT2">電話：</td>
                        <td colspan="2" style="padding:2px"><c:out
                                value="${pageVal.issuePrintingCtlValue.telNo1}"/></td>
                    </tr>
                    <tr>
                        <td style="padding:2px" class="CHINESE_FORMAT2">日期：</td>
                        <td colspan="2" style="padding:2px"><%=letterDateYear %>年<%=letterDateMonth %>
                            月<%=letterDateDay %>日
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="padding:2px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="padding:2px" class="CHINESE_FORMAT2">致：</td>
                        <td colspan="2" style="padding:2px" class="CHINESE_FORMAT2"><%= nameAndTitleChi%>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding:2px">&nbsp;</td>
                        <td colspan="2" style="padding:2px"><c:out value="${pageVal.threeLineAddrChi[0]}"
                                                                   escapeXml="false"/></td>
                    </tr>
                    <tr>
                        <td style="padding:2px">&nbsp;</td>
                        <td colspan="2" style="padding:2px"><c:out value="${pageVal.threeLineAddrChi[1]}"
                                                                   escapeXml="false"/></td>
                    </tr>
                    <tr>
                        <td style="padding:2px">&nbsp;</td>
                        <td colspan="2" style="padding:2px"><c:out value="${pageVal.threeLineAddrChi[2]}"
                                                                   escapeXml="false"/></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="padding:2px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3" style="padding:2px">&nbsp;</td>
                    </tr>

                    <tr>
                        <td style="padding:2px">&nbsp;</td>
                        <td colspan="2" style="padding:2px">

                            <p class="CHINESE_FORMAT2">
                                <%
                                    if (null == nameChi || "".equals(nameChi)) {
                                        if (null != nameEng && !"".equals(nameEng)) {
                                %>
                                <%= nameAndTitleEng%>
                                <%
                                    }
                                } else {
                                %>

                                <%= nameAndTitleChi%>

                                <%
                                    }
                                %>
                            </p>

                            <p style="text-align:center;">
                            <div style="text-align:center;text-decoration:underline;text-underline-offset: 0.3em;"
                                 class="CHINESE_FORMAT2">
                                續領正式駕駛執照
                            </div>
                            <div style="text-align:center;" class="CHINESE_FORMAT2">(駕駛執照編號： <c:out
                                    value="${pageVal.legalEntityValue.idNo}"/>)
                            </div>
                            </p>

                            <p style="text-indent:1cm;text-align:justify;" class="CHINESE_FORMAT2">
                                運輸署已完成你的續領正式駕駛執照手續，現隨函附上新簽發的駕駛執照。請你注意，你的舊駕駛執照已宣告無效，請你立即將之撕毀。
                            </p>


                            <table style="width:100%;float:right;border-spacing:0px">
                                <tr style="display:none">
                                    <th>Col1</th>
                                    <th>Col2</th>
                                    <th>Col3</th>
                                </tr>
                                <tr>
                                    <td style="text-align:right;padding:2px" class="CHINESE_FORMAT2">
                                        <br><br><br><br>
                                        運輸署 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td style="display: none;" colspan="2"></td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="padding:2px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="text-align:right;padding:2px" class="CHINESE_FORMAT2">
                                        (此乃電腦列印文件，無須簽署)<br>
                                    </td>
                                    <td style="display: none;" colspan="2"></td>
                                </tr>
                            </table>

                        </td>
                    </tr>
                </table>


            </td>
        </tr>
    </table>

</DIV>


</body>
</html>
