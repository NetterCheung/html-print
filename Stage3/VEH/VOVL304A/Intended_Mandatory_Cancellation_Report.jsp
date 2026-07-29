<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: yandp
  Date: 2005-2-22
  Time: 16:39:52
  @author yandp
  @version 1.0
  VVL06s04_Intended_Mandatory_Cancellation.jsp
--%>
<%@ page import="hk.gov.valid.util.RequestConstant" %>
<%@ page import="hk.gov.valid.vehicle.util.VehicleConstant" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%@ page import="hk.gov.valid.vehicle.model.VlConfirmPageValue"%>
<%@ page import="hk.gov.valid.vehicle.model.MandatoryCancelValue"%>
<%@ page import="hk.gov.valid.vehicle.model.InspectionOrderValue"%>

<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>

<c:set var="APP_TYPE_MAIL"><%=CbmConstant.APP_TYPE_MAIL%></c:set>
<c:set var="First_Registration_Tax_Recovery_SearchValue"><%=RequestConstant.VL_CONFIRM_PAGE_VALUE%></c:set>
<c:set var="VlConfirmPageValue" value="${sessionScope[First_Registration_Tax_Recovery_SearchValue]}"/>
<c:set var="First_Registration_Tax_Recovery_SearchValue"><%=RequestConstant.VEH_MAN_CAN_LETTER_VALUE%></c:set>
<c:set var="vehManCanLetterPageValue" value="${sessionScope[First_Registration_Tax_Recovery_SearchValue]}"/>

<c:set var="ACTION_TYPE"><%=RequestConstant.ACTION_TYPE%></c:set>

<c:set var="ACTION_TYPE"><%=RequestConstant.FLOW_HANDLE_FLAG%></c:set>
<c:set var="actionType" value="${requestScope[ACTION_TYPE]}"/>

<c:set var="vehicleValue" value="${VlConfirmPageValue.vehicleValue}" scope="request"/>
<c:set var="legalEntityValue" value="${VlConfirmPageValue.legalEntityValue}" scope="request"/>
<c:set var="searchRegDocValue" value="${VlConfirmPageValue.searchRegDocValue}"/>
<c:set var="inspectionOrderValue" value="${VlConfirmPageValue.inspectionOrderValue}"/>
<c:set var="inspectionOrderValues" value="${VlConfirmPageValue.inspectionOrderValues}"/>
<c:set var="mandatoryCancelValue" value="${VlConfirmPageValue.mandatoryCancelValue}"/>
<c:set var="cancellationLetterValue" value="${VlConfirmPageValue.cancellationLetterValue}"/>
<c:set var="printButtonEnable" value="${VlConfirmPageValue.printButtonEnable}"/>

<c:set var="legalEntity" value="${VlConfirmPageValue.legalEntityValue}"  scope="request"/>
<c:set var="COMMON_LEGAL_ENTITY_VALUE" value="${legalEntity}" scope="request"/>

<c:set var="maxRow" value="2"/>
<c:if test="${param['reportFlag']=='3' || param['reportFlag']=='4'}" >
<c:set var="maxRow" value="4"/>
</c:if>

<c:set var="iocount" value="0"/>
<c:forEach var="IoValue" items="${inspectionOrderValues}">
	<c:set var="iocount" value="${iocount+1}"/>
</c:forEach>
<c:set var="twoPage" value="false"/>
<c:if test="${iocount>maxRow}">
	<c:set var="twoPage" value="true"/>
</c:if>


<html lang="en">
<head>
<!-- saved from url=(0014)about:internet -->
<meta charset="UTF-8">
<meta name="header" content="">
<meta name="footer" content=" ">
<meta name="custom" content="false">

<meta name="margin-top" content="0">
<meta name="margin-bottom" content="0">
<meta name="margin-left" content="0">
<meta name="margin-right" content="0">

<meta name="duplex" content="2">
<title>&nbsp;</title>

<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:MingLiU_HKSCS;
	panose-1:2 2 3 0 0 0 0 0 0 0;}
@font-face
	{font-family:"\@MingLiU_HKSCS";
	panose-1:2 2 3 0 0 0 0 0 0 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";}
p.MsoHeader, li.MsoHeader, div.MsoHeader
	{margin:0cm;
	margin-bottom:.0001pt;
	layout-grid-mode:char;
	font-size:10.0pt;
	font-family:"Times New Roman";}
p.MsoFooter, li.MsoFooter, div.MsoFooter
	{margin:0cm;
	margin-bottom:.0001pt;
	layout-grid-mode:char;
	font-size:10.0pt;
	font-family:"Times New Roman";}
 /* Page Definitions */
 @page Section1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.Section1
	{page:Section1;}
div.page
	{page-break-before:always;margin-left:6pt; margin-top:0pt; margin-bottom:0pt}
-->
@media print {
	@page {
		margin: 12pt 12pt 12pt 12pt !important;
	}
	body {
		margin: 0 !important;
		padding: 0 !important;
	}
}
</style>


</head>
<body>

<table style="width: 100%; margin: 0 auto;"><tr><td>


<p class=MsoNormal style='text-align:center;line-height:12.0pt;
text-autospace:none'><b><span lang=EN-US style='font-family:Arial;color:black'>On-line
Report on Mandatory Cancellation</span></b></p>

<p class=MsoNormal style='text-align:center;line-height:12.0pt;
text-autospace:none'><b><u><span lang=EN-US style='font-family:Arial;
color:black'>Input of Intended Mandatory Cancellation Date</span></u></b></p>

<p class=MsoNormal style='line-height:12.0pt;text-autospace:none'><span
lang=EN-US style='font-family:Arial;color:black'>&nbsp;</span></p>

<p class=MsoNormal style='line-height:12.0pt;text-autospace:none'><span
lang=EN-US style='font-family:Arial;color:black'>&nbsp;</span></p>

<p class=MsoNormal style='line-height:12.0pt;text-autospace:none'><span
lang=EN-US style='font-family:Arial;color:black'>Transaction Date:&nbsp; </span><span
lang=EN-US style='font-family:Arial;color:black'><fmt:formatDate value="${mandatoryCancelValue.txnDate}" pattern="dd/MM/yyyy"/></span></p>

<p class=MsoNormal style='line-height:12.0pt;text-autospace:none'><span
lang=EN-US style='font-family:Arial'>Transaction No:&nbsp;&nbsp;&nbsp;&nbsp; <span
style='color:black'><c:out value="${mandatoryCancelValue.txnNo}"/></span></span></p>

<p class=MsoNormal style='line-height:12.0pt;text-autospace:none'><span
lang=EN-US style='font-family:Arial;color:black'>Transaction Time:&nbsp; </span><span
lang=EN-US style='font-family:Arial;color:black'><fmt:formatDate value="${mandatoryCancelValue.txnDate}" pattern="HH:mm:ss"/></span></p>

<p class=MsoNormal style='line-height:12.0pt;text-autospace:none'><span
lang=EN-US style='font-family:Arial;color:black'>&nbsp;</span></p>

<p class=MsoNormal style='line-height:12.0pt;text-autospace:none'><span
lang=EN-US style='font-family:Arial;color:black'>User ID:&nbsp; </span><span
lang=EN-US style='font-family:Arial;color:black'><c:out value="${sessionScope.userProfile.operatorId}" /></span></p>

<p class=MsoNormal style='line-height:12.0pt;text-autospace:none'><span
lang=EN-US style='font-family:Arial;color:black'>&nbsp;</span></p>

<p class=MsoNormal style='line-height:12.0pt;text-autospace:none'><span
lang=EN-US style='font-family:Arial;color:black'>One transaction has been
completed: </span></p>

<p class=MsoNormal style='line-height:12.0pt;text-autospace:none'><span
lang=EN-US style='font-family:Arial;color:black'>&nbsp;</span></p>

<p class=MsoNormal style='line-height:12.0pt;text-autospace:none'><span
lang=EN-US style='font-family:Arial;color:black'>* 
<%
    VlConfirmPageValue vlConfirmPageValue = (VlConfirmPageValue)session.getAttribute(RequestConstant.VL_CONFIRM_PAGE_VALUE);
    MandatoryCancelValue mandatoryCancelValue = vlConfirmPageValue.getMandatoryCancelValue();
    InspectionOrderValue inspectionOrderValue = vlConfirmPageValue.getInspectionOrderValue();
%>
<c:if test="${param['reportFlag']=='1'}" >
The intended cancellation date <fmt:formatDate value="${mandatoryCancelValue.intendedCancelDate}" pattern="dd/MM/yyyy"/> has been recorded and
the inspection code '<%if(inspectionOrderValue!=null) out.print(inspectionOrderValue.getReasonCode());%>' added.
</c:if>
<c:if test="${param['reportFlag']=='2'}" >
The vehicle licence has been expired and the inspection code '<%if(inspectionOrderValue!=null) out.print(inspectionOrderValue.getReasonCode());%>' added.
</c:if>
<c:if test="${param['reportFlag']=='3'}" >
The intended cancellation date has been removed.
The latest inspection code is '<% String[] codesArr=vlConfirmPageValue.getInspectionCodes(); if( codesArr != null ) {for(int i=0; i<codesArr.length; i++) out.print(codesArr[i]+(i==codesArr.length - 1 ? "" : "/"));} %>'. 
<% //Modified by LuYuanxian 2005-09-26 %>
<%//The latest inspection code is '<=mandatoryCancelValue.getSubType()>' %>

</c:if>
<c:if test="${param['reportFlag']=='4'}" >
The TD/EPD order has been withdrawn. No mandatory cancellation is required. The associated inspection code previously added '<%if(inspectionOrderValue!=null) out.print(inspectionOrderValue.getReasonCode());%>' has been deleted.
</c:if>
Detail as follows:

</span></p>

<br>

</td></tr>

<tr><td style="text-align: center;">
<!----------------  Basic Information --------------------------->

<table style="width: 100%; border-spacing: 0px; font-family:Arial;color:black;font-size:8pt">      
	<tr><td colspan=4 style="padding: 2px;"><b><u>Basic Information</u></b></td></tr>
	<tr>
		<td style="width: 130px; padding: 2px;" class="content_field"> Registration Mark</td>
		<td style="width: 370px; padding: 2px;" class="content_field_v" >
		<c:out value="${vehicleValue.regMark}"/>

		<c:if test="${vehicleValue.checkDigital != ''}">		
			(<c:out value="${vehicleValue.checkDigital}"/>)
		</c:if>
		</td>
		<td style="width: 130px; padding: 2px;" class="content_field">Vehicle ID</td>
        <td style="width: 270px; padding: 2px;" class="content_field_v" ><c:out value="${vehicleValue.vehicleId}"/></td>
	</tr>	
</table>

</td></tr>

<tr><td>
<!----------------  Vehicle Particulars --------------------------->

		
        	<table style="width: 100%; border-spacing: 0px; font-family:Arial;color:black;font-size:8pt">
				<tr style="display: none;"><th>col1</th><th>col2</th><th>col3</th><th>col4</th><th>col5</th><th>col6</th></tr>
				<tr><td colspan=4 style="padding: 2px;"><b><u>Vehicle Particulars</u></b></td><td style="display: none"></td><td style="display: none"></td></tr>
        		<tr>
    	        		<td style="width: 130px; padding: 2px;" class="MsoNormal"> Vehicle ID</td>
        	    		<td style="width: 270px; padding: 2px;" class="MsoNormal" ><c:out value="${vehicleValue.vehicleId}"/></td>
                		<td style="width: 130px; padding: 2px;" class="MsoNormal"></td>
				<td style="width: 270px; padding: 2px;" class="MsoNormal" ></td>
				<td style="display: none"></td><td style="display: none"></td>
        		</tr>
        		<tr>
            			<td style="width: 130px; padding: 2px;" class="MsoNormal"> Vehicle Class</td>
	            		<td style="width: 270px; padding: 2px;" class="MsoNormal" >
            				<codetable:out value="<%=CodeTableConstant.VEHICLE_CLASS_CODE%>"
							formatType="<%=CodeTableConstant.CODE_INTERPRETATION%>"
							selected="${vehicleValue.vehicleClass}" />
				</td>
        	    		<td style="width: 130px; padding: 2px;" class="MsoNormal"> Chassis No.</td>
            			<td style="width: 270px; padding: 2px;" class="MsoNormal" ><c:out value="${vehicleValue.chassisNo}"/></td>
				<td style="display: none"></td><td style="display: none"></td>
        		</tr>
        		<tr>
				<td style="width: 130px; padding: 2px;" class="MsoNormal"> Engine Type</td>
            			<td style="width: 270px; padding: 2px;" class="MsoNormal" >
              				<codetable:out value="<%=CodeTableConstant.ENGINE_TYPE_CODE%>"
				    			formatType="<%=CodeTableConstant.INTERPRETATION_ENG%>"
							language="<%=CodeTableConstant.ENGLISH%>"
							selected="${vehicleValue.engineType}" />
				</td>
       				<td style="width: 130px; padding: 2px;" class="MsoNormal"> Engine Size</td>
       				<td style="width: 270px; padding: 2px;" class="MsoNormal" ><c:out value="${vehicleValue.engineSize}"/> CC</td>
				<td style="display: none"></td><td style="display: none"></td>
        		</tr>
        		<tr>
       				<td style="width: 130px; padding: 2px;" class="MsoNormal"> Body Type</td>
       				<td style="width: 270px; padding: 2px;" class="MsoNormal" >
   					<codetable:out value="<%=CodeTableConstant.BODY_TYPE_CODE%>"
							formatType="<%=CodeTableConstant.CODE_INTERPRETATION%>"
							selected="${vehicleValue.bodyType}" />
				</td>
      				<td style="width: 130px; padding: 2px;" class="MsoNormal"> Engine No.</td>
       				<td style="width: 270px; padding: 2px;" class="MsoNormal" ><c:out value="${vehicleValue.engineNumber}"/></td>
				<td style="display: none"></td><td style="display: none"></td>
        		</tr>
        		<tr>
              			<td style="width: 130px; padding: 2px;" class="MsoNormal">Colour</td>
              			<td style="width: 270px; padding: 2px;" class="MsoNormal" >
              				<codetable:out value="<%=CodeTableConstant.COLOUR_CODE%>" formatType="<%=CodeTableConstant.INTERPRETATION_ENG%>" language="<%=CodeTableConstant.ENGLISH%>" selected="${vehicleValue.primaryColour}"/>
              				<c:if test="${vehicleValue.secondaryColour != null}">
              					/ <codetable:out value="<%=CodeTableConstant.COLOUR_CODE%>" formatType="<%=CodeTableConstant.INTERPRETATION_ENG%>" language="<%=CodeTableConstant.ENGLISH%>" selected="${vehicleValue.secondaryColour}"/>
              				</c:if>
              			</td>
       				<td style="width: 130px; padding: 2px;" class="MsoNormal">1st Reg Date</td>
                		<td style="width: 270px; padding: 2px;" class="MsoNormal" ><fmt:formatDate value="${vehicleValue.frtDate}" pattern="dd/MM/yyyy"/></td>
				<td style="display: none"></td><td style="display: none"></td>
		        </tr>
        		<tr>
                		<td style="width: 130px; padding: 2px;" class="MsoNormal"> MFT Year</td>
       				<td style="width: 270px; padding: 2px;" class="MsoNormal" ><c:out value="${vehicleValue.yearOfManufacture}"/></td>
              			<td style="width: 130px; padding: 2px;" class="MsoNormal"> Lantau Use</td>
              			<td style="width: 270px; padding: 2px;" >
                        		<table style="border-spacing: 0px; font-family:Arial;color:black;font-size:8pt">
                            			<tr style="white-space: nowrap;">
                                			<td style="width: 80px;" class="MsoNormal" >
                                    				<c:choose><c:when test="${vehicleValue.lantauVehicleIndicator == 'Y'}">YES</c:when><c:otherwise>NO</c:otherwise></c:choose>
			                                </td>
              					        <td style="width: 100px;" class="MsoNormal"> Private Road </td>
              			        		<td class="MsoNormal" ><c:choose><c:when test="${vehicleValue.privateRoadIndicator == 'Y'}">YES</c:when><c:otherwise>NO</c:otherwise></c:choose></td>
                            			</tr>
                          		</table>
                        	</td>
				<td style="display: none"></td><td style="display: none"></td>
        		</tr>
            		<tr>
              			<td style="padding: 2px;" class="MsoNormal"> Make</td>
              			<td style="padding: 2px;" class="MsoNormal" >
            				<codetable:out value="<%=CodeTableConstant.VEHICLE_MAKE_CODE%>"
						formatType="<%=CodeTableConstant.CODE_INTERPRETATION%>"
                                                selected="${vehicleValue.vehicleMakeCode}" />
						</td>
                        	<td style="padding: 2px;" class="MsoNormal"> Model</td>
                			<td colspan="3" style="padding: 2px;" class="MsoNormal" >
							    <c:out value="${vehicleValue.vehicleModel}"/>
                        	</td>
            		</tr>
					
																
            		<tr>
              			<td style="padding: 2px;" class="MsoNormal"> Origin</td>
              			<td style="padding: 2px;" class="MsoNormal" >
            				<codetable:out value="<%=CodeTableConstant.COUNTRY_CODE%>"
							formatType="<%=CodeTableConstant.CODE_INTERPRETATION%>"
							selected="${vehicleValue.countryOrigin}" />
				</td>
			        <td style="padding: 2px;" class="MsoNormal">PGVW</td>
            			<td style="padding: 2px;" >
                        		<table style="border-spacing: 0px; font-family:Arial;color:black;font-size:8pt">
                            			<tr style="white-space: nowrap;">
                                			<td style="width: 80px;" class="MsoNormal" >
                                    				<c:out value="${vehicleValue.wtPgv}"/> MT
			                                </td>
              					        <td style="width: 100px;" class="MsoNormal"> PGCW</td>
              			        		<td class="content_field_v" >
              			        			<c:out value="${vehicleValue.wtGross}"/> MT
              			        		</td>
                            			</tr>
                          		</table>
                        	</td>
				<td style="display: none"></td><td style="display: none"></td>
            		</tr>
            		<tr>
              			<td style="padding: 2px;" class="MsoNormal"> Seats (Lower/Upper)</td>
              			<td style="padding: 2px;" class="MsoNormal" >
                        		  <c:out value="${vehicleValue.capSeatLower }"/>
					/ <c:out value="${vehicleValue.capSeatUpper }"/>
				</td>
                        	<td style="padding: 2px;" class="MsoNormal">Stand</td>
              			<td style="padding: 2px;" class="MsoNormal" ><c:out value="${vehicleValue.capStanding}"/></td>
				<td style="display: none"></td><td style="display: none"></td>
            		</tr>
		</table>

		
</td></tr>


<% /*<c:if test="${twoPage==true}">
</table>
<div class="page">
<table style="width: 100%; border-spacing: 0px; font-family:Arial;color:black;font-size:8pt"> 	
</c:if> */ %>


<%------------------------- Registration and Licence Particulars ----------------------------------------%>
<tr>
	<td>
		
		<table style="width: 100%; border-spacing: 0px; font-family:Arial;color:black;font-size:8pt">
		     <tr style="display: none;"><th>col1</th><th>col2</th><th>col3</th><th>col4</th><th>col5</th><th>col6</th><th>col7</th><th>col8</th><th>col9</th><th>col10</th></tr>
		     <tr><td colspan=10 style="padding: 2px;"><b><u>Registration and Licence Particulars</u></b></td></tr>
			<tr>
				<td colspan="10" style="padding: 2px;" class="content_field_top" ><b>Vehicle Licence</b></td>
			</tr>
       		<tr>
				<td style="padding: 2px;" class="content_field"> Current Renewal Date</td>
	        		<td style="padding: 2px;" class="content_field_v" ><fmt:formatDate value="${vehicleValue.currentRenewalDate}" pattern="dd/MM/yyyy"/>&nbsp;</td>
				<td style="padding: 2px; text-align: right;" class="content_field" colspan=3> Previous Renewal Date</td>
	        		<td style="padding: 2px;" class="content_field_v" ><fmt:formatDate value="${vehicleValue.previousRenewalDate}" pattern="dd/MM/yyyy"/></td>
				<td style="padding: 2px; text-align: right;" class="content_field" colspan=3> Previous Upto Date</td>
                <td style="padding: 2px;" class="<c:out value="${previousUptoDateHightlight}"/>&nbsp;&nbsp;" ><fmt:formatDate value="${vehicleValue.previousUptoDate}" pattern="dd/MM/yyyy"/></td>
			</tr>
			<tr>
				<td style="padding: 2px;" class="content_field">Issue Date</td>
<%--
	Log # 2534651 Fixed By Eric
	        		<td ><fmt:formatDate value="${vehicleValue.regDocIssueDate}" pattern="dd/MM/yyyy"/></td>
--%>
	        		<td style="padding: 2px;" ><fmt:formatDate value="${vehicleValue.issueDate}" pattern="dd/MM/yyyy"/></td>
				<td style="padding: 2px;" class="content_field">Trans. No</td>
				<td style="padding: 2px;" ><c:out value="${vehicleValue.txnNo}"/></td>
              	<td style="padding: 2px;" class="content_field"> Dup </td>
              	<td style="padding: 2px;" class="content_field_v" ><c:out value="${vehicleValue.duplicateCount}"/></td>
				<%-- td style="width: 270px;">
					<table style="border-spacing: 0px;">
                            			<tr style="white-space: nowrap;">
                                			<td style="width: 80px;" class="<c:out value="${currentTranHighlight}"/>" ><c:out value="${vehicleValue.txnNo}"/></td>
              					        <td style="width: 100px;" class="content_field"> Dup. Count</td>
              			        		<td class="content_field_v" ><c:out value="${vehicleValue.duplicateCount}"/></td>
                            			</tr>
                          		</table>
                </td --%>
				<td style="padding: 2px;" class="content_field"> Start Date</td>
	        		<td style="padding: 2px;" class="content_field_v" ><fmt:formatDate value="${vehicleValue.startDate}" pattern="dd/MM/yyyy"/></td>
				<td style="padding: 2px;" class="content_field">Upto Date</td>
				    <% //Modified by LuYuanxian 2005-09-26:  Add id="uptoDateId" %>
	        		<td id="uptoDateId" style="padding: 2px;" class="<c:out value="${currentTranHighlight}"/>&nbsp;&nbsp;" ><fmt:formatDate value="${vehicleValue.uptoDate}" pattern="dd/MM/yyyy"/></td>
			</tr>

			<!-- --------------------------------------------------------------------------->
			<tr>
				<td colspan="10" style="padding: 2px;" class="content_field_top" ><b>Registration Document</b></td>
			</tr>
			<tr>
				<td style="padding: 2px;" class="content_field"> Issue Date</td>
<%--
	Log # 2534651 Fixed By Eric
	        		<td style="padding: 2px;" class="content_field_v" ><fmt:formatDate value="${vehicleValue.issueDate}" pattern="dd/MM/yyyy"/></td>
--%>
	        		<td style="padding: 2px;" class="content_field_v" ><fmt:formatDate value="${vehicleValue.regDocIssueDate}" pattern="dd/MM/yyyy"/></td>

				<td style="padding: 2px;" class="content_field">Trans. No</td>
        			<td style="padding: 2px;" >
						<c:out value="${vehicleValue.regDocTxnNo}"/></td>
              		<td style="padding: 2px;" class="content_field"> Dup </td>
              		<td style="padding: 2px;" class="content_field_v" ><c:out value="${vehicleValue.regDocDuplicateCount}"/></td>
				<td style="padding: 2px;" class="content_field">Tax Code</td>
				<td style="padding: 2px;" class="content_field_v" >
                    <codetable:out value="<%=CodeTableConstant.FRT_EXM_REASON_CODE%>" formatType="<%=CodeTableConstant.CODE_INTERPRETATION%>" selected="${vehicleValue.frtExemptionCode}" />
                </td>
				<td style="padding: 2px;" class="content_field">Lic Fee Code</td>
	            <td style="padding: 2px;" class="content_field_v" >
	       			<codetable:out value="<%=CodeTableConstant.VEH_LICENCE_FEE_CODE%>" formatType="<%=CodeTableConstant.INTERPRETATION_ENG%>"
					language="<%=CodeTableConstant.ENGLISH%>" selected="${vehicleValue.licenceFeeCode}"/>

	            </td>
			</tr>

		</table>
		
	</td>
</tr>

<%------------------------- Vehicle Owner Particulars ----------------------------------------%>
<%@ page import="hk.gov.valid.util.RequestConstant" %>
<%@ page import="hk.gov.valid.cbm.model.AddressValue" %>
<%@ page import="hk.gov.valid.util.CodeTableConstant"%>
<%@ page import="hk.gov.valid.util.ValidConstant"%>
<%@ page import="hk.gov.valid.cbm.util.CbmConstant"%>
<c:set var="ADDR_IS_STRUC"><%=ValidConstant.ADDR_IS_STRUC%></c:set>
<c:set var="IS_POS_SAME_RES_ADDRESS"><%=CbmConstant.IS_POS_SAME_RES_ADDRESS%></c:set>
<c:set var="COMPANY_SET"><%=CodeTableConstant.COMPANYS%></c:set>
<c:set var="COMMON_LEGAL_ENTITY_VALUE" value="${legalEntity}"/> 
<c:set var="hkidType"><%=ValidConstant.HKID_ID_TYPE_CODE%></c:set>
<!--<c:out value="${COMMON_LEGAL_ENTITY_VALUE}"/> -->
<c:set var="IS_COMPANY" value="false" scope="request"/>
<c:forTokens var="COMPANY" items="${COMPANY_SET}" delims=",">
    <c:if test="${COMPANY == legalEntity.idType}">
        <c:set var="IS_COMPANY" value="true" scope="request"/>
    </c:if>
</c:forTokens>

<tr><td>
<table style="width: 100%; border-spacing: 0px; font-family:Arial;color:black;font-size:8pt">
	<tr style="display: none;"><th>col1</th><th>col2</th><th>col3</th><th>col4</th></tr>
	<tr><td colspan=4 style="padding: 2px;"><b><u>Vehicle Owner Particulars</u></b></td></tr>
   <tr style="height: 1px;">
   <td style="height: 1px; width: 130px; padding: 2px;"></td>
   <td style="height: 1px; padding: 2px;" colspan=3></td>
   </tr>

	<tr>
    <td style="width: 130px; padding: 2px;" class="content_field"> Owner ID</td>
    <td colspan=3 style="padding: 2px;" class="content_field_v" > 
        <% // Modified by LuYX 2005-10-20 fixed bug P400235   %>
        <c:if test="${issueResult ne null and issueResult.ownerId ne null}" >
           <c:out value="${issueResult.ownerId}"/>
        </c:if>                
        <c:if test="${issueResult eq null or issueResult.ownerId eq null}" >
            <c:choose>
               <c:when test="${(COMMON_LEGAL_ENTITY_VALUE.idType == ' ') || (COMMON_LEGAL_ENTITY_VALUE.idType == '')}">
                  <codetable:out value="<%=CodeTableConstant.IDENTITY_TYPE_CODE%>" selected="${COMMON_LEGAL_ENTITY_VALUE.idType}"><codetable:column codeColumn="<%=CodeTableConstant.IDENTITY_TYPE%>" interpretationColumn="<%=CodeTableConstant.INTERPRETATION_COLUMN%>"/></codetable:out> -
                  <SCRIPT>
                  	var idNo = "<c:out value="${COMMON_LEGAL_ENTITY_VALUE.idNo}"/>";
                  	document.write(idNo.substr(0,idNo.length - 1) + "(" + idNo.substr(idNo.length - 1,idNo.length) + ")");
                  </SCRIPT>
               </c:when>
               <c:otherwise>
                  <codetable:out value="<%=CodeTableConstant.IDENTITY_TYPE_CODE%>" selected="${COMMON_LEGAL_ENTITY_VALUE.idType}"><codetable:column codeColumn="<%=CodeTableConstant.IDENTITY_TYPE%>" interpretationColumn="<%=CodeTableConstant.INTERPRETATION_COLUMN%>"/></codetable:out> - <c:out value="${COMMON_LEGAL_ENTITY_VALUE.idNo}"/>
               </c:otherwise>
            </c:choose>
        </c:if>   
        
    </td>    
	</tr>
	<tr>
	  <td style="padding: 2px;" class="content_field" >Name
	  </td>
	  <td colspan=3 style="padding: 2px; text-align: left;">
          <codetable:out value="<%=CodeTableConstant.TITLE_CODE%>" selected="${legalEntity.titleCode}"><codetable:column codeColumn="<%=CodeTableConstant.TITLE_CODE%>" interpretationColumn="<%=CodeTableConstant.INTERPRETATION_COLUMN%>"/></codetable:out>&nbsp;
        	<c:out value="${legalEntity.nameEng}"/>
        	<c:if test="${!empty legalEntity.nameChi}">
            	(<span style="font-family:MingLiU_HKSCS;"><c:out value="${legalEntity.nameChi}"/></span>)
            </c:if>	  </td>
	 </tr>	
	<tr>
		<td style="width: 130px; padding: 2px;" class="content_field">Ownership Start Date</td>
		<td  colspan=3 style="padding: 2px;" class="content_field_v" ><fmt:formatDate value="${vehicleValue.ownershipStartDate}" pattern="dd/MM/yyyy"/></td> 
	</tr>
<tr>
	  <td style="width: 130px; padding: 2px;" class="content_field">Phone</td>
	  <td style="padding: 2px;" class="content_field_v">
	    <c:out value="${legalEntity.contactTel1}"/>&nbsp;&nbsp;&nbsp;
	    <c:out value="${legalEntity.contactTel2}"/>&nbsp;&nbsp;&nbsp;
	    <c:out value="${legalEntity.contactTel3}"/>
	  </td>
	  <td style="display: none"></td><td style="display: none"></td>
</tr>
<!-- Amend by Zouhb on 2007-11-23 for prodcution internal log VEHICLE-0015 -->
    <jsp:include page="/common/Common_R_Address.jsp"/>
</table>

</td></tr>

<%--------------------Mandatory Cancellation Details--------------------------%>        

<tr><td>

<div style="display:true">
<table style="width: 100%; border-spacing: 0px; font-family:Arial;color:black;font-size:8pt">
<tr style="display: none;"><th>col1</th><th>col2</th><th>col3</th><th>col4</th></tr>
<tr><td colspan=2 style="padding: 2px;"><b><u>Mandatory Cancellation Details</u></b></td><td style="display: none"></td><td style="display: none"></td></tr>
<tr> 
   <td style="padding: 2px;" class="content_field"></td>
   <td style="width: 200px; padding: 2px;" class="content_field_v_highlight">
			<b>Before Update</b>

   </td>
   <td style="width: 200px; padding: 2px;" class="content_field_v_highlight">
           <b>After Update</b>

   </td>
   <td style="padding: 2px;"></td>
</tr>
<tr> 
   <td style="width: 250px; padding: 2px;" class="content_field">Intended Mandatory Cancellation Date</td>
   <td style="padding: 2px;"><c:out value="${param.intendBefore}"/></td>
   <c:choose> 
   <c:when test="${actionType == 161}">
   <td style="width: 200px; padding: 2px;" class="content_field_v_highlight">
      <c:out value=""/>
   </td>
   </c:when> 
   <c:otherwise>
   <td style="width: 200px; padding: 2px;" class="content_field_v_highlight">
           <fmt:formatDate value="${mandatoryCancelValue.intendedCancelDate}" pattern="dd/MM/yyyy"/>
   </c:otherwise>
   </c:choose>
   </td>
   <td style="display: none"></td>
</tr>


<c:if test="${param['reportFlag']=='1' || param['reportFlag']=='2'}" >


</table>
</div>

</td></tr>

<%-----------------Cancellation Letter-----------------------%>

<tr><td>

<div style="display:true">
<table style="width: 100%; border-spacing: 0px; font-family:Arial;color:black;font-size:8pt">
<tr style="display: none;"><th>col1</th><th>col2</th><th>col3</th><th>col4</th></tr>
<tr><td style="padding: 2px;"><b><u>Cancellation Letter</u></b></td><td style="display: none"></td><td style="display: none"></td><td style="display: none"></td></tr>
<% //Amended by LuYuanxian 2005-10-06   %>
<%/*
<tr style="height: 1px;"> 
<td style="height: 1px; padding: 2px;" class="content_field" colspan="4">
    <!--<input type="checkbox" name='k1' value="ON" checked> Print Cancellation Letter-->
    <c:choose> 
        <c:when test="${VlConfirmPageValue.removeFlag == 1 }">
            <input name="<=RequestConstant.VEHICLE_PRINT_BUTTON>" type="checkBox" class="inputRadio" value="<=RequestConstant.VEHICLE_PRINT_BUTTON_N>" disabled />Print Cancellation Letter
        </c:when> 
        <c:otherwise>
            <input name="<=RequestConstant.VEHICLE_PRINT_BUTTON>" type="checkBox" class="inputRadio" value="<=RequestConstant.VEHICLE_PRINT_BUTTON_Y>" checked/>Print Cancellation Letter
        </c:otherwise>
    </c:choose>    
</td>
</tr>
*/%>
<tr> 
    <td style="width: 160px; padding: 2px;" class="content_field" >Order From*</td>
    <td style="padding: 2px;" class="content_field_v">
		<c:if test="${inspectionOrderValue.reasonCode=='5'}"><%=VehicleConstant.MANDATORY_CAN_ORDER_FORM_TD%></c:if>
		<c:if test="${inspectionOrderValue.reasonCode=='C'}"><%=VehicleConstant.MANDATORY_CAN_ORDER_FORM_EPD_EMISSION%></c:if>
		<c:if test="${inspectionOrderValue.reasonCode=='F'}"><%=VehicleConstant.MANDATORY_CAN_ORDER_FORM_EPD_ERD%></c:if>
    </td> 
    <td style="padding: 2px;" class="content_field">Sub Type</td>
    <td style="padding: 2px;" class="content_field_v">
		<c:if test="${mandatoryCancelValue.subType == '1' }">Vehicle Exam Order</c:if>
		<c:if test="${mandatoryCancelValue.subType == '2' }">Repair Order</c:if>
		<c:if test="${mandatoryCancelValue.subType == '3' }">Emission Testing Notic</c:if>
		<c:if test="${mandatoryCancelValue.subType == '4' }">Emission Standard</c:if>
		<c:if test="${mandatoryCancelValue.subType == '5' }">Vehicle Exam Order</c:if>
		<c:if test="${mandatoryCancelValue.subType == '6' }">Repair Order</c:if>
		<c:if test="${mandatoryCancelValue.subType == '7A' }">Emission Reduction Device(Road Side-No Device)</c:if>
		<c:if test="${mandatoryCancelValue.subType == '7B' }">Emission Reduction Device(Road Side-No Filter)</c:if>
		<c:if test="${mandatoryCancelValue.subType == '7C' }">Emission Reduction Device(Road Side-No Good Condition)</c:if>
		<c:if test="${mandatoryCancelValue.subType == '7D' }">Emission Reduction Device(Road Side-No Approved Device)</c:if>
		<c:if test="${mandatoryCancelValue.subType == '8' }">Emission Reduction Device(Notice)</c:if>
	</td>           
</tr>

<tr> 
    <td style="padding: 2px;" class="content_field">Our File Reference No.</td>
    <td style="padding: 2px;" class="content_field_v">
        (<c:out value='${mandatoryCancelValue.fileRefNoPrefix}'/>)&nbsp; in &nbsp;
        <c:out value='${mandatoryCancelValue.fileRefNoSuffix}'/>
    </td>            
    <td style="width: 180px; padding: 2px;" class="content_field">Issue Date</td>    
        <td style="padding: 2px;" class="content_field_v">
            <fmt:formatDate value="${mandatoryCancelValue.issueDate}" pattern="dd/MM/yyyy"/>
        </td>  
</tr>

<tr>
    <!--<td style="padding: 2px;" class="content_field" >EPD Reference No.</td>
    <td style="padding: 2px;" class="content_field_v"><input type="text" name="<%=RequestConstant.VEHICLE_EPD_REFERENCE_NO%>" value="<c:out value='${mandatoryCancelValue.EPDRefNo}'/>" class=inputText size="50"></td>
    -->
    <td style="padding: 2px;" class="content_field" >Order No.</td>
    <td style="padding: 2px;" class="content_field_v"><c:out value='${mandatoryCancelValue.orderNo}'/></td>
     
    <td style="padding: 2px;" class="content_field">Order Date</td>
    <td style="padding: 2px;" class="content_field_v">
        <fmt:formatDate value="${mandatoryCancelValue.orderDate}" pattern="dd/MM/yyyy"/>
    </td>
</tr>
<tr> 
    <td style="width: 160px; padding: 2px;" class="content_field" >Registered Mail No.</td>
    <td style="padding: 2px;" class="content_field_v">
        <c:out value='${mandatoryCancelValue.regMailNo}'/>
    </td>
    <td style="padding: 2px;" class="content_field" >Inspection Date</td>
    <td style="padding: 2px;" class="content_field_v">
        <fmt:formatDate value="${mandatoryCancelValue.inspectionDate}" pattern="dd/MM/yyyy"/> 
    </td>
</tr>
</c:if>
</table>
</div>
</td></tr>
<%-------------------------Inspection Order Details----------------------------------------%>
<tr><td>

<div class="page"><span style="visibility: hidden;">&nbsp;</span>
<div style="display:true">
<table style="width: 100%; border-spacing: 0px; font-family:Arial;color:black;font-size:8pt">
<tr> 
    <td style="width: 160px; padding: 2px;" class="content_field" >Trans. Date</td>
    <td style="padding: 2px;" class="content_field_v">
		<fmt:formatDate value="${mandatoryCancelValue.txnDate}" pattern="dd/MM/yyyy HH:mm:ss"/>
		<%-- c:out value="${param.txnDate}"/> <c:out value="${param.txnTime}"/ --%>
    </td>
    <td style="padding: 2px;" class="content_field" >Trans. No.</td>
    <td style="padding: 2px;" class="content_field_v">
        <c:out value="${mandatoryCancelValue.txnNo}"/>
    </td>
</tr>
<tr> 
    <td style="width: 160px; padding: 2px;" class="content_field" >User ID</td>
    <td style="padding: 2px;" class="content_field_v">
		<c:out value="${sessionScope.userProfile.operatorId}" />
    </td>
    <td style="display: none"></td><td style="display: none"></td>
</tr>

</table>
</div>

<table style="width: 100%; border-spacing: 0px; font-family:Arial;color:black;font-size:8pt">
	<tr><td colspan=5 style="padding: 2px;"><b><u>Inspection Order Details</u></b></td></tr>
  <tr style="height: 1px;">
   <td style="height: 1px; width: 220px; padding: 2px;" class="content_field">Inspection Code</td>
   <td style="height: 1px; width: 100px; padding: 2px;" class="content_field">Creation Date</td>
   <td style="height: 1px; width: 100px; padding: 2px;" class="content_field">Creation Time</td>
   <td style="height: 1px; width: 220px; padding: 2px;" class="content_field">Department/Division</td>
   <td style="height: 1px; width: 160px; padding: 2px;" class="content_field">File Reference</td>
  </tr>
  <c:set var="iocount" value="1"/>
    <c:forEach var="IoValue" items="${inspectionOrderValues}">
          <tr style="height:20pt">
		   <td style="width: 220px; padding: 2px;" class="content_field_v_highlight">
             <codetable:out value="<%=CodeTableConstant.INSPECTION_REASON_CODE%>" formatType="<%=CodeTableConstant.CODE_INTERPRETATION%>" selected="${IoValue.reasonCode}" />
		   </td>
		   <td style="width: 100px; padding: 2px;">
		      <fmt:formatDate value="${IoValue.createDate}" pattern="dd/MM/yyyy"/>
		   </td>
		   <td style="width: 100px; padding: 2px;">
		      <fmt:formatDate value="${IoValue.createDate}" pattern="HH:mm:ss"/>
		   </td>
		   <td style="width: 220px; padding: 2px;">
              <codetable:out value="<%=CodeTableConstant.DEPT_DIVISION_CODE%>" formatType="<%=CodeTableConstant.INTERPRETATION_ENG%>" language="<%=CodeTableConstant.ENGLISH%>" selected="${IoValue.deptCode}"/>
		   </td>
		   <td style="width: 160px; padding: 2px;">
		     <c:out value="${IoValue.fileRefNo}"/>
		   </td>
		 </tr>
		 <c:set var="iocount" value="${iocount+1}"/>
     </c:forEach>
</table>

</div>

</td></tr>

</table>

</table>
</body>
</html>