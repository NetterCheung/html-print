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
<%@ page import="hk.gov.valid.util.RequestConstant" %>
<%@ page import="hk.gov.valid.util.CodeTableConstant" %>
<%@ page import="hk.gov.valid.util.Util" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print" %>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>

<c:set var="PAGE_VALUE"><%=RequestConstant.PAGE_VALUE%>
</c:set>
<c:set var="pageValue" value="${requestScope[PAGE_VALUE]}" scope="request"/>
<c:set var="RunDate"><%=Util.getTimestampString(Util.getOnlineBusinessDate(), "dd/MM/yyyy")%>
</c:set>
<c:set var="COMMON_ID_TYPE" scope="request" value="${pageValue.idType}"/>
<c:set var="COMMON_ID_NO" scope="request" value="${pageValue.idNo}"/>

<html>
<head>
    <!-- saved from url=(0014)about:internet -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="margin-top" content="2">
    <meta name="margin-bottom" content="2">
    <meta name="margin-left" content="2">
    <meta name="margin-right" content="2">
    <meta name="copies" content="1">
    <meta name="papersize" content="A4">
    <meta name="orientation" content="0">
    <meta name="duplex" content="0">
    <title>&nbsp;</title>
    <style type="text/css">
        .STYLE1 {
            font-family: "Times New Roman";
            font-size: 12pt;
        }

        .STYLE2 {
            font-family: "MingLiU_HKSCS";
            font-size: 12pt;
        }
    </style>
</head>
<body>
<table style="width: 564px; margin: 0 auto; border-spacing: 0px">
    <tr>
        <td style="width: 200px; height: 20px; vertical-align: top">&nbsp;</td>
        <td style="width: 364px"></td>
    </tr>
    <tr>
        <td style="height: 20px; vertical-align: top; text-align: right" colspan="2"><span class="STYLE1"><c:out
                value="${RunDate}"/></span></td>
    </tr>
    <tr>
        <td style="height: 90px; vertical-align: top; text-align: left" colspan="2"><img alt=""
                                                                                         src="<print:BlankFormPrint imageName='logo.gif'/>">
        </td>
    </tr>
    <tr>
        <td style="height: 20px; vertical-align: top" colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 20px; vertical-align: top"><span class="STYLE1">File Reference No.</span></td>
        <td><span class="STYLE1">:&nbsp;<c:out value="${pageValue.fileCaseType}"/><c:out
                value="${pageValue.fileRefNo}"/></span></td>
    </tr>
    <tr>
        <td style="height: 20px; vertical-align: top"><span class="STYLE1">Name</span></td>
        <td><span class="STYLE1">:&nbsp;<c:out value="${pageValue.nameEng}"/></span><span class="STYLE2">(<c:out
                value="${pageValue.nameChi}"/>)</span></td>
    </tr>
    <tr>
        <td style="height: 20px; vertical-align: top"><span class="STYLE1">ID</span></td>
        <td><span class="STYLE1">:<jsp:include page="/enquiry/Common_R_Id_Value.jsp"/></span></td>
    </tr>
    <tr>
        <td style="height: 20px; vertical-align: top"><span class="STYLE1">Nature of Disability</span></td>
        <td><span class="STYLE1">:&nbsp;<c:out value="${pageValue.natureOfDisability}"/></span></td>
    </tr>
    <tr>
        <td style="vertical-align: top" colspan="2">
            <table>
                <tr>
                    <td style="width: 64px; height: 20px; vertical-align: top">&nbsp;</td>
                    <td style="width: 250px"></td>
                    <td style="width: 250px"></td>
                </tr>
                <tr>
                    <td style="height: 20px; vertical-align: top" colspan="3"><span class="STYLE1">The following driving entitlement(s) is (are) qualified:</span>
                    </td>
                </tr>
                <tr>
                    <td style="height: 20px" colspan="3">
                        <hr>
                    </td>
                </tr>

                <c:choose>
                    <c:when test="${!empty pageValue.qualifiedDeMap}">
                        <c:forEach var="qualifiedDe" items="${pageValue.qualifiedDeMap}">
                            <c:set var="formattedDe"><fmt:formatNumber pattern="00" value="${qualifiedDe.key}"/></c:set>
                            <tr>
                                <td style="height: 20px; vertical-align: top"><span class="STYLE1">-&nbsp;<c:out
                                        value="${formattedDe}"/><c:out value="${qualifiedDe.value}"/></span></td>
                                <td><span class="STYLE1"><codetable:out value="<%=CodeTableConstant.DRIVING_ENTL_CODE%>"
                                                                        formatType="<%=CodeTableConstant.INTERPRETATION%>"
                                                                        selected="${qualifiedDe.key}"/></span></td>
                                <td><span class="STYLE2"><codetable:out value="<%=CodeTableConstant.DRIVING_ENTL_CODE%>"
                                                                        formatType="<%=CodeTableConstant.INTERPRETATION%>"
                                                                        language="<%=CodeTableConstant.CHINESE%>"
                                                                        selected="${qualifiedDe.key}"/></span></td>
                            </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <td style="height: 20px" colspan="3"></td>
                        <tr>
                            <td style="height: 20px" colspan="3">
                                Please refer to the below restriction(s) for driver.
                            </td>
                        </tr>
                        <td style="height: 20px" colspan="3"></td>
                    </c:otherwise>
                </c:choose>


                <tr>
                    <td style="height: 20px" colspan="3">
                        <hr>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td style="vertical-align: top" colspan="2">
            <table>
                <tr>
                    <td style="width: 282px; height: 20px; vertical-align: top">&nbsp;</td>
                    <td style="width: 282px"></td>
                </tr>
                <tr>
                    <td style="height: 20px; vertical-align: top" colspan="2"><span class="STYLE1">The following restriction(s) for driver / vehicle modification(s) is (are) required:</span>
                    </td>
                </tr>
                <tr>
                    <td style="height: 20px" colspan="2">
                        <hr>
                    </td>
                </tr>

                <c:forEach var="remarks" items="${pageValue.remarksList}">
                    <tr>
                        <td colspan="2" style="height: 20px"><span class="STYLE1">-
			<codetable:out value="<%=CodeTableConstant.DISABLED_LETTER_REMARK_CODE%>" selected="${remarks}">
                <codetable:column codeColumn="<%=CodeTableConstant.REMARK_CODE%>"
                                  interpretationEngColumn="<%=CodeTableConstant.INTERPRETATION_ENG_COLUMN%>"/>
            </codetable:out></span>
                            &nbsp;&nbsp;
                            <span class="STYLE2">
			<codetable:out value="<%=CodeTableConstant.DISABLED_LETTER_REMARK_CODE%>"
                           language="<%=CodeTableConstant.CHINESE%>" selected="${remarks}">
                <codetable:column codeColumn="<%=CodeTableConstant.REMARK_CODE%>"
                                  interpretationChiColumn="<%=CodeTableConstant.INTERPRETATION_CHI_COLUMN%>"/>
            </codetable:out></span>
                        </td>

                    </tr>
                </c:forEach>

                <c:if test="${!empty pageValue.remarksOther}">
                    <tr>
                        <td style="height: 20px" colspan="2"><span class="STYLE1">-&nbsp;<c:out
                                value="${pageValue.remarksOther}"/></span></td>
                    </tr>
                </c:if>
                <tr>
                    <td style="height: 20px" colspan="2">
                        <hr>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td style="height: 20px; vertical-align: top" colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 20px; vertical-align: top" colspan="2"><span class="STYLE1">Issue Date : <fmt:formatDate
                value="${pageValue.issueDate}" pattern="dd/MM/yyyy"/></span></td>
    </tr>
</table>
</body>
</html>