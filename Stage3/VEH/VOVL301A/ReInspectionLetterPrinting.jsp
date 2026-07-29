<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt"%>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print"%>
<%@ page import="hk.gov.valid.util.RequestConstant" %>


<%@ page import="hk.gov.valid.vehicle.model.VLMandatoryCancelPageValue"%>
<%@ page import="hk.gov.valid.cbm.model.VehicleValue" %>
<%@ page import="hk.gov.valid.cbm.util.CbmConstant"%>
<%@ page import="hk.gov.valid.util.CodeTableConstant"%>
<%@ taglib uri="../WEB-INF/tld/codetable.tld" prefix="codetable" %>


<c:set var="COMMON_SEARCH_RESULT"><%=RequestConstant.COMMON_SEARCH_RESULT%></c:set>
<c:set var="vLMandatoryCancelPageValue" value="${sessionScope[COMMON_SEARCH_RESULT]}"/>
<c:set var="vehicleValue" value="${vLMandatoryCancelPageValue.vehicleValue}" scope="request"/>


<html lang="en">
<head>
<!-- saved from url=(0014)about:internet -->
<meta charset="UTF-8">
<meta name="header" content="">
<meta name="footer" content="">
<meta name="margin-top" content="0">
<meta name="margin-bottom" content="0">
<meta name="margin-left" content="0">
<meta name="margin-right" content="0">
<meta name="custom" content="false">
<title>&nbsp;</title>
<STYLE>

.footer-context{
	font-size: 4pt;
}
.hr_style{
	color:black;
	height:1px;
}

.style0 {font-size: 12pt;
         font-family:"MingLiU_HKSCS";}
.style1 {font-size: 12pt;
         font-family:"Times New Roman";}
.style2 {font-size: 8pt;
         font-family:"MingLiU_HKSCS";}
.style3 {font-size: 8pt;
         font-family:"Times New Roman";}
.win10_bold {
	font-family: "MingLiU_HKSCS", "MingLiU", "PMingLiU";
	font-weight: bold;
	-webkit-text-stroke: 0.3px;
}		 
</STYLE>
</head>
<body>

<%@ page import="hk.gov.valid.util.RequestConstant" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<c:set var="vehClassEn" value="${param.vehClassEn}" />
<c:set var="regMark" value="${param.regMark}" />

<script>
	<!--var vehClassChi = unescape('<c:out value="${param.vehClassChi}" />');-->
	<!--var inspectionAddressChi = unescape('<c:out value="${param.inspectionAddressChi}" />');-->
	<!--var inspectionCentreNameChi = unescape('<c:out value="${param.inspectionCentreNameChi}" />');-->
	var vehClassChi = unescape('<c:out value="${param.vehClassChi}" />');
	var inspectionAddressChi = unescape('<c:out value="${param.inspectionAddressChi}" />');
	var inspectionCentreNameChi = unescape('<c:out value="${param.inspectionCentreNameChi}" />');
	
	<!--alert('vehClassChi = ' + vehClassChi );-->
	<!--alert('inspectionAddressChi = ' + inspectionAddressChi );-->
	<!--alert('inspectionCentreNameChi = ' + inspectionCentreNameChi );-->
</script>

<c:set var="inspectionAddressEng" value="${param.inspectionAddressEng}"/>
<c:set var="inspectionCentreNameEng" value="${param.inspectionCentreNameEng}"/>
<c:set var="inspectionCentreTelNo" value="${param.inspectionCentreTelNo}"/>
<c:set var="ownerName" value="${param.ownerName}"/>
<c:set var="address1" value="${param.address1Eng}"/>
<c:set var="address2" value="${param.address2Eng}"/>
<c:set var="address3" value="${param.address3Eng}"/>

<%
java.sql.Date sysDate = new java.sql.Date(new java.util.Date().getTime());
String sysDateEn = (new SimpleDateFormat("dd/MM/yyyy")).format(sysDate);
//String sysDateYear = (new SimpleDateFormat("yyyy")).format(sysDate);
//String sysDateMonth = (new SimpleDateFormat("MM")).format(sysDate);
//String sysDateDay = (new SimpleDateFormat("dd")).format(sysDate);
%>


<table style="width: 610px; border-spacing: 0px; margin: 0 auto;">
	<tr style="text-align: left;">
		<td><img src="<print:BlankFormPrint imageName='logo.gif'/>" style="width: 263px; height: 88px;" alt=""></td>
	</tr>
</table>
<table style="width: 610px; border-spacing: 0px; margin: 0 auto;">
	<tr style="vertical-align: top;">
		<td class="style0" style="width: 140px;">本署檔號 Our Ref.</td>
		<td class="style0" colspan="2" style="text-align: left;">: <c:out value="${param.fileRefNo}"/></td>
	</tr>
	<tr style="vertical-align: top;">
		<td class="style0">電話號碼 Tel. No.</td>
		<td class="style0" colspan="2">: <c:out value="${vLMandatoryCancelPageValue.telNo}"/></td>
	</tr>
	<tr style="vertical-align: top;">
		<td class="style0">傳真號碼 Fax No.</td>
		<td class="style0">: <c:out value="${vLMandatoryCancelPageValue.fax}"/></td>
		<td  class="style0" style="text-align: right;"><%out.print(sysDateEn); %></td>
	</tr>
</table>
<table style="width: 610px; border-spacing: 0px; margin: 0 auto;">
	<tr>
		<td class="style0" style='height: 20px; padding-left:0pt; padding-right:0pt; padding-top:5pt; padding-bottom:3pt' >先生 / 女士：</td>
	</tr>
	<tr>
		<td class="style0" style='height: 20px; padding-left:147pt; padding-right:0pt; padding-top:0cm; padding-bottom:0pt' ><span class="win10_bold">車輛檢驗</span></td>
	</tr>
	<tr> 
    	<td class="style0" style='height: 20px; padding-left:147pt; padding-right:0pt; padding-top:0cm; padding-bottom:0pt' ><span class="win10_bold">車輛類別：<codetable:out value="<%=CodeTableConstant.VEHICLE_CLASS_CODE%>" language="chinese" selected="${vehicleValue.vehicleClass}"/></span></td>
	</tr>
	<tr> 
		<td class="style0" style='height: 20px; padding-left:147pt; padding-right:0pt; padding-top:0cm; padding-bottom:3pt' ><span class="win10_bold"><u>登記號碼：<c:out value="${vehicleValue.regMark}"/></u></span></td>
	</tr>
	<tr> 
	    <td class="style0" style='height: 20px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:3pt' ><div style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;上述車輛牌照已經根據道路交通條例第 25(1)(b) 條而取消。如果你想該車輛能夠重新在道路上行走，該車輛必須經過檢驗合格。如是者，請你帶同本信到<u><c:out value="${vLMandatoryCancelPageValue.inspectionAddressChi}"/><c:out value="${vLMandatoryCancelPageValue.inspectionCentreNameChi}"/> (電話號碼：<c:out value="${vLMandatoryCancelPageValue.inspectionCentreTelNo}"/>)</u> 預約該車輛的檢驗日期及繳付有關驗車費用。</div></td>
	</tr>
	<tr> 
    	<td class="style0" style='height: 20px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:3pt' ><div style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;當該車輛檢驗合格後，請你攜同合格證書連同影印本一份，前往<c:out value="${vLMandatoryCancelPageValue.deptAddress_CH}"/>運輸署車輛記錄辦事處辦理有關事宜。</div></td>
	</tr>
	<tr> 
    	<td class="style0" style='height: 20px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:3pt' ><div style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如果你有任何疑問，請致電 <c:out value="${vLMandatoryCancelPageValue.telNo}"/> 與車輛記錄辦事處聯絡。</div></td>
	</tr>
</table>
<table style="width: 610px; border-spacing: 0px; margin: 0 auto;">
	<tr>
		<td><br>&nbsp;<br>&nbsp;</td><td class="style0" style='padding-left:0pt; padding-right:0pt; padding-top:0pt; text-align: center;'>運輸署署長</td>
	</tr>
	<tr>
		<td style='width: 60%; padding-left:0pt; padding-right:0pt; padding-top:0pt; padding-bottom:0pt'><div style="text-align: right;">&nbsp;</div></td>
		<td class="style0" style='text-align: center;'>&nbsp;&nbsp;(<c:out value="${vLMandatoryCancelPageValue.commissorNameChi}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;代行)</td>
	</tr>
</table>
<table style="width: 610px; border-spacing: 0px; margin: 0.25cm auto 0;;">
	<tr>
		<td style='padding-left:80pt; padding-right:0pt; padding-top:35pt; padding-bottom:0pt'><c:out value="${ownerName}" escapeXml= "false"/></td>
    </tr>  
    <tr>
		<td style='padding-left:80pt; padding-right:0pt; padding-top:0pt; padding-bottom:0pt'><c:out value="${vLMandatoryCancelPageValue.address1}"/></td>
    </tr>
    <tr>
		<td style='padding-left:80pt; padding-right:0pt; padding-top:0pt; padding-bottom:0pt'><c:out value="${vLMandatoryCancelPageValue.address2}"/></td>
    </tr>
    <tr>
		<td style='padding-left:80pt; padding-right:0pt; padding-top:0pt; padding-bottom:0pt'><c:out value="${vLMandatoryCancelPageValue.address3}"/></td>
    </tr>
</table>
<table style="width: 610px; border-spacing: 0px; margin: 0 auto;">
	<tr>
		<td class="style1" style='height: 20px; padding-left:0pt; padding-right:0pt; padding-top:35pt; padding-bottom:3pt' >Dear Sir/Madam,</td>
	</tr>
	<tr>
		<td class="style1" style='height: 20px; padding-left:147pt; padding-right:0pt; padding-top:0pt; padding-bottom:0pt' ><b>Vehicle Examination</b></td>
	</tr>
	<tr> 
    	<td class="style1" style='height: 20px; padding-left:147pt; padding-right:0pt; padding-top:0pt; padding-bottom:0pt' ><b>Vehicle Class : <codetable:out value="<%=CodeTableConstant.VEHICLE_CLASS_CODE%>" language="english" selected="${vehicleValue.vehicleClass}"/></b></td>
	</tr>
	<tr> 
		<td class="style1" style='height: 20px; padding-left:147pt; padding-right:0pt; padding-top:0pt; padding-bottom:3pt' ><b><u>Registration Mark : <c:out value="${vehicleValue.regMark}"/></u></b></td>
	</tr>
	<tr> 
	    <td class="style1" style='height: 20px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:3pt' ><div style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The vehicle licence of the captioned vehicle has been cancelled under Section 25(1)(b) of the Road Traffic Ordinance. Should you wish to put the vehicle back on the road, the vehicle must pass a vehicle examination. If this is the case, please pay the appropriate examination fee and arrange an examination appointment by producing this letter to the <u><c:out value="${vLMandatoryCancelPageValue.inspectionCentreNameEng}"/>, <c:out value="${vLMandatoryCancelPageValue.inspectionAddressEng}"/> (Tel: <c:out value="${vLMandatoryCancelPageValue.inspectionCentreTelNo}"/> )</u>.</div></td>
	</tr>
	<tr> 
    	<td class="style1" style='height: 20px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:3pt' ><div style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;After the vehicle has passed 
        the vehicle examination, please attend the Vehicle Records Office at 
        <c:out value="${vLMandatoryCancelPageValue.deptAddress_EN}"/>, bringing 
        along with the original pass certificate together with a photocopy thereof 
        to complete the neccessary formalities.</div></td>
	</tr>
	<tr> 
    	<td style='height: 20px; padding-left:0pt; padding-right:0pt; padding-top:0cm; padding-bottom:3pt' ><div style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Should you have any enquiries, please contact the Vehicle Records Office at <c:out value="${vLMandatoryCancelPageValue.telNo}"/>.</div></td>
	</tr>
</table>
<table style="width: 610px; border-spacing: 0px; margin: 0 auto;">
	<tr>
		<td style="width: 60%;"></td><td style='padding-left:0pt; padding-right:0pt; padding-top:1pt; text-align: center;'><span style="font-family: Times New Roman, Times, serif;">Yours faithfully,</span></td>
		<td>&nbsp;</td>
	</tr>
    <tr>
		  <td></td><td style='padding-left:0pt; padding-right:0pt; padding-top:1pt; padding-bottom:0pt; text-align: center;'><span style="font-family: Times New Roman, Times, serif;">( <c:out value="${vLMandatoryCancelPageValue.commissorNameEng}"/> )</span></td>
		  <td>&nbsp;</td>
    </tr>
    <tr>
		  <td></td><td style='padding-left:0pt; padding-right:0pt; padding-top:1pt; padding-bottom:0pt; text-align: center;'><span style="font-family: Times New Roman, Times, serif;">for Commissioner
          for Transport</span></td>
		  <td>&nbsp;</td>
    </tr>
</table>

<DIV id=arrow style="width:100%; Z-INDEX: 10; text-align: center; VISIBILITY: visible; POSITION: absolute; TOP: 773pt">
<table style="width: 100%; border-spacing: 0px;">
          <tr>
            <td style="text-align: center;" class="style2"><c:out value="${vLMandatoryCancelPageValue.deptName_CH}"/></td>
          </tr>
          <tr>
            <td style="text-align: center;" class="style3"><c:out value="${vLMandatoryCancelPageValue.deptName_EN}"/></td>
          </tr>
          <tr>
            <td style="text-align: center;" class="style2"><c:out value="${vLMandatoryCancelPageValue.deptAddress_CH}"/></td>
          </tr>
          <tr>
            <td style="text-align: center;" class="style3"><c:out value="${vLMandatoryCancelPageValue.deptAddress_EN}"/></td>
          </tr>
        </table>
</div>

</body>
</html>