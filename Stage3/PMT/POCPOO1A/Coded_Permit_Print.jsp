<!DOCTYPE html>
<%--
 * <p>Title: Coded_Permit_Print.jsp</p>
 * <p>Project: VALID IV</p>
 * <p>Description: permit</p>
 * <p>Copyright: Copyright (c) 2004</p>
 * <p>Company: HEWLETT BUTONE</p>
 *
 * @author Stanley wjl
 * @version 1.0
 *          Date: 2004-12-20
 *          Time: 13:34:00
--%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt"%>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable"%>
<%@ page import="hk.gov.valid.util.RequestConstant"%>
<%@ page import="hk.gov.valid.util.SessionConstant"%>
<%@ page import="hk.gov.valid.util.CodeTableConstant"%>
<html lang="en">
<head>
<!-- saved from url=(0014)about:internet -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="header" content="">
<meta name="footer" content="">
<meta name="margin-top" content="0">
<meta name="margin-bottom" content="0">
<meta name="margin-left" content="-2">
<meta name="margin-right" content="-2">
<meta name="copies" content="1">				<!--打印份数(默认值:1)-->
<meta name="papersize" content="A4">		<!--纸张大小(默认值:A4,注意A5请用"A5 Plus")-->
<meta name="orientation" content="0">          	<!--打印方向(默认值:0  参数说明:0–纵向 ;1-横向)-->
<c:choose>
<c:when test="${requestScope.myprintername != 'Lexmark T652'}">  <!--  Modified for CR-2013-036(SWB Printing)-->
<meta name="duplex" content="0">
</c:when>
<c:otherwise> 
<meta name="duplex" content="1">
</c:otherwise>
</c:choose>
<!--<meta name="duplex" content="1">				是否双面(默认值:0 参数说明:0–无 ; 1- 短边翻转; 2–长边翻转)-->

<title>香港特別行政區政府運輸署</title>

<STYLE>
td {
	font-family: "Times New Roman", Times, serif;
	font-size: 10pt;
}

div.page
	{
	page-break-before:always;
	margin-left:14pt;
	margin-top:0pt;
	margin-right: 10pt;
	margin-bottom: 10pt;
	width: 360px;
}
div.firstpage
	{
	margin-left:14pt;
	margin-top:0pt;
	margin-right: 10pt;
	margin-bottom: 10pt;
	width: 360px;
}
.win10_bold {
	font-family:"MingLiU_HKSCS";
	font-weight:bold;
}

.horizontaldottedline {
    border-bottom: 1px dotted grey;
    margin-top:1.1cm;
}
.verticaldottedline {
	height: 1070px;
    border-right: 1px dotted grey;
    position: absolute;
    right: 50%;
}
</STYLE>
</head>

<c:set var="PERMIT_PRINT_VALUE"><%=RequestConstant.PAGE_VALUE%></c:set>
<c:set var="codedPermitPrintValue" value="${requestScope[PERMIT_PRINT_VALUE]}"/>

<c:set var="PermitPrintValues" value="${codedPermitPrintValue.blankPrintValues}" scope="request"/>
<c:set var="optMandatoryCondValues" value="${codedPermitPrintValue.optMandatoryCondValues}" scope="request"/>


<%-- Modified by Eric for CR-2012-023 (Windows 7 Upgrade) Start --%>
<jsp:include page="/common/Common_ClientPrinting4Win7.jsp"/>
<%-- Modified by Eric for CR-2012-023 (Windows 7 Upgrade) End --%>



<body>

<%if (SessionConstant.IE9.equals((String)session.getAttribute(SessionConstant.IE_VERSION))) {%>
<c:set var="count" value="0" />
<c:forEach var="PermitPrintValue" items="${PermitPrintValues}">
		<c:if test="${count > 0}">
			<div id="first page" style="PAGE-BREAK-BEFORE: always"></div>
		</c:if>
		<div class="firstpage" style="text-align: center;">
		
		<table>
				<tr>
					<td style="text-align: center;vertical-align: top;">
								<table style="width: 360px;margin: 0 auto;">
		<tr>
			<td style="text-align: center;width: 360px;">
			<table style="width: 100%;margin: 0 auto;">
				<tr style="display: none;"><th>col1</th><th>col2</th></tr>
				<tr> 
				<td colspan="2" style="height: 21px;width: 100%;"> 
					<table style="width: 100%;border-spacing: 1px; margin: 0 auto;">
					<tr> 
					  <td style="width: 50%;padding: 2px;"><strong><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:Times New Roman'> <fmt:formatNumber value="${PermitPrintValue.vehId}" pattern="00000000"/> </span></strong></td>
					  <td style="width: 50%;padding: 2px;text-align: right;">No. &nbsp;<strong><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:Times New Roman'><c:out value="${PermitPrintValue.permitNo}" /></span></strong></td>
					</tr>
					</table>
				</td>
				</tr>
		  		<tr> 
		  			<td colspan ="2" style="width: 360px;vertical-align: bottom;"> <div style="text-align: center;"><span lang=ZH-TW style='font-size:8.0pt;mso-bidi-font-size:12.0pt;letter-spacing:1.24pt;'><span class="win10_bold">香港特別行政區政府運輸署</span></span></div></td>
				</tr>
				<tr> 
		  	 		<td colspan ="2" style="width: 360px;height: 15px;"> <div style="text-align: center;"><b><span lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:12.0pt;font-family:Times New Roman'>TRANSPORT DEPARTMENT</span></b></div></td>
				</tr>
				<tr> 
		  			<td colspan="2" style="height: 15px;"> <div style="text-align: center;"><b> <span lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:12.0pt;font-family:Times New Roman'>THE GOVERNMENT OF THE HONG KONG<br>SPECIAL ADMINISTRATIVE REGION</span></b></div></td>
		  		</tr>
		  		<tr> 
		    		<td colspan="2" style="width: 100%;height: 6px;"></td>
		  		</tr>
		  		<!-- 
		  		<tr> 
		  			<td colspan="2" align="center" height="15"><div align="center"><b><span lang=ZH-TW style='font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:MingLiU_HKSCS;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";letter-spacing:1.13pt;font-family:MingLiU_HKSCS'>香港法例第三百七十四章道路交通(車輛構造及保養)規例</span></b></div></td>
		  		</tr>
		  		<tr> 
		  			<td colspan="2" align="center" height="15"><p align="center"><strong><span lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:9.0pt;font-family:Times New Roman'>ROAD TRAFFIC (CONSTRUCTION&nbsp;&amp;&nbsp;MAINTENANCE OF VEHICLES) REGULATIONS&nbsp;(CAP.374)</span></strong></p></td>
				</tr>
				 -->
		  		<tr> 
		    		<td colspan="2" style="width: 100%;height: 7px;"></td>
				</tr>
			  	<tr> 	
					<td colspan="2" style="width: 360px;height: 15px;"><div style="text-align: center;"><span lang=ZH-TW style='font-size:8.0pt;mso-bidi-font-size:12.0pt;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";letter-spacing:1.0pt;'><span class="win10_bold">許可證</span></span></div></td>
				</tr>
				<tr> 
		    		<td colspan="2" style="width: 360px;height: 22px;vertical-align: top;"><div style="text-align: center;"><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:Times New Roman'><strong>P&nbsp;E&nbsp;R&nbsp;M&nbsp;I&nbsp;T</strong></span></div></td>
				</tr>
		    	<tr> 
		  			<td style="width: 15px;"></td>
		    		<td style="width: 360px;">
		      			<table style="width: 100%;border-collapse: collapse;border-color: #111111;"  id="AutoNumber1">
		        			<tr>
		        				<td>
		        					<p class=MsoNormal style='text-align: justify; text-justify: distribute-all-lines; layout-grid-mode: char'>
										<span lang=EN-US style='font-size: 8pt;font-family:MingLiU'>
											根據道路交通(車輛構造及保養)規例(第 374A 章)第
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											條
										</span>
									</p>
		        				</td>
		        			</tr>
		      			</table>
		    		</td>
		  		</tr>
				<tr>
					<td style="width: 15px;"></td>
					<td style="width: 345px;">
						<div style="text-align: justify; text-justify: distribute-all-lines; layout-grid-mode: char">
							<span
								style='font-size: 8.0pt; mso-bidi-font-size: 12.0pt; font-family: Times New Roman'>In
								accordance with the provisions of regulation &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
							<b><span
								lang=EN-US
								style='font-size: 9.0pt; mso-bidi-font-size: 11.0pt; font-family: Times New Roman'><c:out
										value="${PermitPrintValue.numberStr}" />
							</span>
							</b>
							<span
								style='font-size: 8.0pt; mso-bidi-font-size: 12.0pt; font-family: Times New Roman'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								of the Road</span>
						</div>
					</td>
				</tr>  
				<tr> 
					<td style="width: 360px;" colspan="2"><p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;
		layout-grid-mode:char'><span lang=EN-US style='font-size:8.0pt'>&nbsp;</span></p></td>
				</tr>
				<tr> 
		  			<td colspan="2" style="width: 360px;height: 15px;padding-left:1pt">
		      			<table style="width: 100%;border-collapse: collapse;border-color: #111111;" id="AutoNumber1">
		        			<tr>
		        				<td>
		        					<p class=MsoNormal style='text-align: justify; text-justify: distribute-all-lines; layout-grid-mode: char'>
										<span lang=EN-US style='font-size: 8pt;font-family:MingLiU'>
											的規定，授權
										</span>
									</p>
		        				</td>
		        			</tr>
		      			</table>
		    		</td>
		  		</tr>
				<tr>
					<td colspan="2" style="width: 360px;padding-left:1pt">
						<p class=MsoNormal style='text-align: justify; text-justify: distribute-all-lines; layout-grid-mode: char'>
							<span lang=EN-US style='font-size: 8pt'>
							Traffic (Construction & Maintenance of Vehicles) Regulations (Cap. 374A),
							</span>
						</p>
					</td>
				</tr>  
				<tr> 
					<td style="width: 360px;" colspan="2"><p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;
		layout-grid-mode:char'><span lang=EN-US style='font-size:7.0pt'>&nbsp;</span></p></td>
				</tr>
				<tr> 
		  			<td colspan="2" style="width: 100%;height: 15px;vertical-align: bottom;">
		  			<!-- 
		      			<table style="border-collapse: collapse;width: 360px;" >
		                <tr>
		        <td style="width: 360px;" colspan="2"><p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;
		layout-grid-mode:char'><span lang=EN-US style='font-size:8.0pt'>&nbsp;</span></p></td>
		        </tr>
		        			<tr>
		        				<td style="width: 35%;"  colspan="2">
								<span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt;letter-spacing:0.4pt;font-family:MingLiU_HKSCS'> (登記車主姓名)</span><span lang=EN-US style='font-family:Times New Roman;font-size:8.0pt'>&nbsp;(Name of Registered Owner)</span>
							    </td>
							</tr>
		      				<tr>
		          				<td  colspan="2" style="width: 100%;height: 30px;vertical-align: top;">
								<strong>
								  <span  style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:MingLiU_HKSCS;word-break:normal;word-wrap:normal'>						  
								     <c:out value="${PermitPrintValue.ownerNameChi}" /><br>
							      </span>
								</strong>
								<strong>
								   <span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:Courier New;word-break:normal;word-wrap:normal'>
									   <c:out value="${PermitPrintValue.ownerNameEng}"/>
								   </span>
								</strong>
							  </td>
		       				</tr>
		       			</table>
		       			 -->
						<table class=MsoTableGrid 
						 style='border-collapse:collapse;width: 360px;'>
						    <tr> 
						      <td style='width: 134px;vertical-align: middle;padding-left:1pt;padding-top:0cm; padding-bottom:0cm'> 
						        <p class=MsoNormal ><span lang=ZH-TW style='font-size:8.0pt;font-family:MingLiU'>(登記車主姓名)</span></p>
						         
						        </td>
						      <td rowspan="2" style='height: 32px;vertical-align: top;padding-left:2pt;padding-top:0cm; padding-bottom:0cm'><span style='font-size:10.0pt;letter-spacing:1.0pt;color:black;word-break:normal;word-wrap:normal'><span class="win10_bold">             
								     <c:if test="${PermitPrintValue.ownerNameChi != null}">
									     <c:out value="${PermitPrintValue.ownerNameChi}"/><br>
								     </c:if>
								     <c:out value="${PermitPrintValue.ownerNameEng}"/>
								  </span></span>
							 </td>
								  
								  <!-- style='font-size:10pt;font-family:MingLiU_HKSCS;color:black;word-break:normal;word-wrap:normal' -->
						    </tr>
						    <tr>
						    	<td style='vertical-align: top;padding-left:1pt;padding-top:0cm; padding-bottom:0cm'>
						    	<p class=MsoNormal ><span lang=EN-US style='font-family:Times New Roman;font-size:8.0pt'>(Name 
						     	 of Registered Owner)</span></p>
						    	</td>
						    </tr>
						  </table>
		       		</td>
				</tr>
				<tr> 
					<td style="width: 360px;" colspan="2"><p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;
		layout-grid-mode:char'><span lang=EN-US style='font-size:7.0pt'>&nbsp;</span></p></td>
				</tr>
				<tr> 
					<td style="width: 360px;vertical-align: bottom;" colspan="2"><div style='text-align:justify;text-justify:distribute-all-lines;layout-grid-mode:char'><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:11.0pt;letter-spacing:1.15pt;font-family:MingLiU'><o:p>使用或致使獲他授權的其他人駕駛或使用</o:p></span></div></td>
				</tr>
			   	<tr> 
				 	<td style="width: 360px;vertical-align: top;" colspan="2"><div style='text-align:justify;text-justify:distribute-all-lines;layout-grid-mode:char'><o:p><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:Times New Roman'>is &nbsp;hereby &nbsp;authorized &nbsp;to &nbsp;use &nbsp;or &nbsp;cause &nbsp;to &nbsp;be &nbsp;driven &nbsp;or &nbsp;used</span></o:p></div></td>	
			   	</tr>
		        <tr>
		        <td colspan="2" style="width: 360px;"><p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;layout-grid-mode:char'><span lang=EN-US style='font-size:7.0pt'>&nbsp;</span></p></td>
		        </tr>
				<tr> 
					<td colspan="2" style="width: 360px;vertical-align: bottom;">
					<table  style='border-collapse:collapse;width: 360px;'>
						<tr>
							<td  style="width: 50%;">
								<p style="text-align: left;">
									<span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:11.0pt;font-family:MingLiU'><o:p>(&nbsp;車&nbsp;輛&nbsp;類&nbsp;別&nbsp;)</o:p></span>
								</p>
							</td >
							<td  style="width: 46%;">
								<p style="text-align: left;">
									<span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:11.0pt;font-family:MingLiU'><o:p>(&nbsp;登&nbsp;記&nbsp;號&nbsp;碼&nbsp;)</o:p></span>
								</p>
							</td>
							<td  style="width: 4%;">
								<p style="text-align: right;">
									<span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:11.0pt;font-family:MingLiU'><o:p>的&nbsp;車&nbsp;輛</o:p></span>
								</p>
							</td>
						</tr>
						<tr>
							<td style="width: 50%;">
								<p style="text-align: left;">
									<span lang=EN-US style='font-size:10.0pt;mso-bidi-font-size:11.0pt;letter-spacing:-0.5pt;font-family:Times New Roman'><strong><c:out value="${PermitPrintValue.vehClass}" /></strong></span>
								</p>
							</td>
							<td style="width: 50%;" colspan="2">
								<p style="text-align: left;">
									<span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt'><o:p>of Registration Mark &nbsp;&nbsp;&nbsp;&nbsp;</o:p></span>
									<strong><span lang=EN-US style='font-size:10.0pt;mso-bidi-font-size:11.0pt;font-family:Times New Roman'><c:out value="${PermitPrintValue.regMark}" /></span></strong>
								</p>
							</td>
						</tr>
					</table>
					</td>
				</tr>
					<!-- 
				<tr> 
					<td colspan="2" style="width: 360px;">
					<div style="text-align: left;">
						<span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt;letter-spacing:-0.5pt;font-family:Times New Roman'><strong><c:out value="${PermitPrintValue.vehClass}" /></strong></span>
						<span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt'><o:p>of Registration Mark &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </o:p></span>
						<strong><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:Times New Roman'><c:out value="${PermitPrintValue.regMark}" /></span></strong>
						</div>
					<table border="1" style='border-collapse:collapse;width: 360px;'>
						<tr>
							<td style="width: 50%;border-width: 1px;">
								<p style="text-align: left;">
									<span lang=EN-US style='font-size:10.0pt;mso-bidi-font-size:11.0pt;letter-spacing:-0.5pt;font-family:Times New Roman'><strong><c:out value="${PermitPrintValue.vehClass}" /></strong></span>
								</p>
							</td>
							<td style="width: 50%;border-width: 1px;">
								<p style="text-align: left;">
									<span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt'><o:p>of Registration Mark &nbsp;&nbsp;&nbsp;&nbsp;</o:p></span>
									<strong><span lang=EN-US style='font-size:10.0pt;mso-bidi-font-size:11.0pt;font-family:Times New Roman'><c:out value="${PermitPrintValue.regMark}" /></span></strong>
								</p>
							</td>
						</tr>
					</table>
					</td>
				</tr>
						 -->
				<tr> 
					<td style="width: 360px;" colspan="2"><p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;
		layout-grid-mode:char'><span lang=EN-US style='font-size:7.0pt'>&nbsp;</span></p></td>
				</tr>
				<tr> 
					<td colspan="2"  style="width: 360px;"><div style="text-align: left;"><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt;'><span class="win10_bold"><c:out value="${PermitPrintValue.demensions}" /></span></span>
		            </div></td>
				</tr>
			   <!-- -->
			   <tr> 
					<td colspan="2" style="width: 360px;"><p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;
		layout-grid-mode:char'><span lang=EN-US style='font-size:7.0pt'>&nbsp;</span></p></td>
			   </tr>
			    
			   <tr> 
				<td colspan="2" style='width: 360px;text-align:justify;text-justify:distribute-all-lines;layout-grid-mode:char'><o:p><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:11.0pt;font-family:MingLiU'>並祇在</span>
				  <span style='font-size:10.0pt;mso-bidi-font-size:11.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:11.0pt;font-family:MingLiU'>
				  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				  	至
				  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				  </span>
				  <span style='font-size:10.0pt;mso-bidi-font-size:11.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:11.0pt;font-family:MingLiU'>有效，首尾兩天包括在內。</span></o:p></td>
			   </tr>
		   <tr> 
		    <td colspan="2" style="width: 360px;text-align:justify;"><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt'>for 
		              the period from &nbsp;</span> <strong> <span lang=EN-US style='font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Times New Roman'><fmt:formatDate value="${PermitPrintValue.startDate}" pattern="dd/MM/yyyy" /></span><span style='font-size:9.0pt;mso-bidi-font-size:12.0pt'>&nbsp; 
		              </span></strong><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt'>&nbsp;
		              to </span> <strong>&nbsp;<span lang=EN-US style='font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Times New Roman'>
		      <fmt:formatDate value="${PermitPrintValue.uptoDate}" pattern="dd/MM/yyyy" /></span></strong><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:12.0pt'><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:12.0pt'> 
		              </span></span> <span style='font-size:9.0pt;mso-bidi-font-size:12.0pt'>&nbsp;
		              </span><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt'> inclusive.</span></td>
		   </tr>
		   <!-- -->
		   <tr> 
		  	<td colspan="2" style="width: 360px;"><p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;
		layout-grid-mode:char'><span lang=EN-US style='font-size:7.0pt'>&nbsp;</span></p></td>
		   </tr>
		     
		     
		   <tr> 
		  	<td colspan="2"  style="width: 360px;" height="12"><div style="text-align: left;"><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:11.0pt;letter-spacing:1pt;font-family:MingLiU'><o:p>使用此許可證須遵守下列及後頁的條件。</o:p></span></div></td>
		   </tr>
		   <tr> 
		  	 <td colspan="2"  style="width: 360px;" height="15"><div style="text-align: left;"><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt'><o:p>This permit is subject to the conditions stipulated below and overleaf.</o:p></span></div></td>
		   </tr>
		     <tr> 
		  	<td style="width: 360px;" colspan="2"><p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;
		layout-grid-mode:char'><span lang=EN-US style='font-size:7.0pt'>&nbsp;</span></p></td>
		   </tr>
		     <tr> 
		  	<td style="width: 360px;" colspan="2"><p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;
		layout-grid-mode:char'><span lang=EN-US style='font-size:7.0pt'>&nbsp;</span></p></td>
		   </tr>
		     
		   <tr> 
		    <td colspan="2" style="width: 100%;"> 
		   <table class=MsoTableGrid 
		 style='border-collapse:collapse;width: 360px;'>
		        <tr> 
		          <td style="width: 50%;text-align: left;vertical-align: middle;"><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:MingLiU'>發出日期</span></td>
		          <td style='width: 50%;text-align: center;font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:MingLiU'>&nbsp;</td>

		        </tr>
				<tr> 
		          <td style="width: 50%;text-align: left;vertical-align: middle;"><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt'>Date of issue: </span><strong><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:Times New Roman'>
		            <fmt:formatDate value="${PermitPrintValue.issueDate}" pattern="dd/MM/yyyy" /></span></strong></td>
		          <td style="width: 50%;text-align: center;"><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:MingLiU'>運輸署署長發出</span></td>
		        </tr>
				<tr> 
		          <td style="width: 50%;text-align: left;vertical-align: middle;"><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:MingLiU'>檔案記錄</span></td>
		          <td style="width: 50%;text-align: center;font-size:8.0pt;mso-bidi-font-size:12.0pt;"> Issued by Commissioner for Transport </td>
		        </tr>
				<tr> 
		          <td style="width: 50%;text-align: left;vertical-align: middle;"><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt'>Transaction:</span> <strong><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:Times New Roman'><c:out value="${PermitPrintValue.txnNo}" /></span></strong></td>
		          <td style="width: 50%;text-align: center;" ></td>
		        </tr>
				<tr> 
		          <td style="width: 50%;text-align: left;"><span
		  lang=EN-US style='font-size:9.0pt'></span></td>
		          <td style="width: 50%;text-align: right;vertical-align: middle;"><span
		  lang=EN-US style='font-size:9.0pt'>No. &nbsp;</span><strong><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:Times New Roman'><c:out value="${PermitPrintValue.permitNo}" />&nbsp;&nbsp;&nbsp;&nbsp;</span></strong></td>
		        </tr>
		      </table>
			 </td>
		  </tr>
		</table>
		</td>
		</tr>
		</table>
					</td>
					<td style="padding-left:20pt;text-align: center;vertical-align: top;">
							<table style="margin: 0 auto;width: 360px;">
		<THEAD style="display:table-header-group">
		<tr><td colspan="2" style="width: 350px;">
			<table class=MsoNormalTable
				style='border-collapse: collapse;width: 100%;'>
				<tr>
					<td style='vertical-align: top;width: 13%;padding:0cm 1pt 0cm 1pt'><span lang=EN-US style='font-size:7pt'>Registration Mark </span></td>
	                <td style='vertical-align: top;text-align: left;width: 13%;padding:0cm 1pt 0cm 1pt' nowrap><b><span lang=EN-US style='font-size:7pt;color:black'>&nbsp;
	                  <c:out value="${PermitPrintValue.regMark}"/>
	                </span></b></td>
	                <td style='vertical-align: top;width: 10%;padding:0cm 1pt 0cm 1pt'><span lang=EN-US style='font-size:7pt'>Date of issue</span></td>
	                <td style='vertical-align: top;width: 15%;padding:0cm 1pt 0cm 1pt'><b><span lang=EN-US style='font-size:7pt;color:black'>
	                  <fmt:formatDate value="${PermitPrintValue.issueDate}" pattern="dd/MM/yyyy" />
	                </span></b></td>
	                <td style='vertical-align: top;width: 15%;padding:0cm 1pt 0cm 1pt'><span lang=EN-US style='font-size:7pt'>Transaction</span></td>
	                <td style='vertical-align: top;width: 14%;padding:0cm 1pt 0cm 1pt'><b><span style='font-size: 7pt; color:black'>
	                  <c:out value="${PermitPrintValue.txnNo}"/>
	                </span></b></td>
	                <td style='vertical-align: top;width: 5%;padding:0cm 1pt 0cm 1pt'><span lang=EN-US style='font-size:7pt'>No .</span></td>
	                <td style='vertical-align: top;width: 15%;padding:0cm 1pt 0cm 1pt'><b><span lang=EN-US style='font-size:7pt;color:black'>
	                  <c:out value="${PermitPrintValue.permitNo}"/>
	                </span></b></td>
				</tr>
			</table>
		</td></tr>
		</THEAD>
		  <tr> 
			<td colspan="2" style="height: 30px;text-align: center;vertical-align: bottom;"><span lang=ZH-TW style='font-size:9.0pt;mso-bidi-font-size:12.0pt;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";letter-spacing:1.0pt;'><span class="win10_bold">許 可 證 條 件</span></span></td>
		  </tr>
			<tr> 
			<td colspan="2" style="text-align: center;"><span lang=EN-US style='font-size:9.0pt;line-height:200%'>Conditions of Permit</span></td>
		  </tr>
		  
		  <tr> 
			<td style="height: 15px;text-align: left;width: 10px;"></td>
			<td style="height: 15px;width: 350px;"><div style="text-align: center;"></div></td>
		  </tr>
		  
		<tbody>
		<c:set var="count" value="0" />
		<c:forEach var="optMandatoryCondValue" items="${requestScope.optMandatoryCondValues}">
		<c:set var="count" value="${count + 1}" />	
		 <tr>
		  <td style='text-align: left;vertical-align: top;width:10;padding-left:1pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
			<p class=MsoNormal style='text-align:right;layout-grid-mode:char'><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:Times New Roman'><c:out value="${count}" />.</span></p>
		  </td>
		  <td style='vertical-align: top;width:350;padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
			<p class=MsoNormal style='layout-grid-mode:char'><span lang=ZH-TW style='font-size:8.0pt;mso-bidi-font-size:12.0pt; mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";font-family:MingLiU'><c:out value="${optMandatoryCondValue.interpretationChi}" /></span></p>
		  </td>
		 </tr>
		 <tr>
		  <td style='text-align: left;vertical-align: top;width:10;padding-left:1pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>&nbsp; </td>
		  <td style='vertical-align: top;width:350;padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
			<p class=MsoNormal style='layout-grid-mode:char'><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:Times New Roman'><c:out value="${optMandatoryCondValue.interpretationEng}" /></span></p>
		  </td>
		 </tr>
		 <tr><td colspan="2">&nbsp;</td></tr> 
		</c:forEach>
		</tbody> 
	</table>
					</td>
				</tr>
		</table>
		
		
		
		
		</div>
		
		
		<!-- print on another page -->
		<div class = "page" style="display:none">
		
	</div>
		
</c:forEach>

<%}else{%>
<c:set var="count" value="0" />
<c:forEach var="PermitPrintValue" items="${PermitPrintValues}">
		<c:if test="${count > 0}">
			<DIV id="first page" style="PAGE-BREAK-BEFORE: always"></DIV>
		</c:if>
		<div class="firstpage" style="text-align: center;">
		
		<table>
				<tr>
					<td style="text-align: center;vertical-align: top;">
								<table style="width: 360px;margin: 0 auto;">
		<tr>
			<td style="width: 360px;text-align: center;">
			<table style="width: 100%;margin: 0 auto;">
				<tr> 
				<td colspan="2" style="height: 21px;width: 100%;"> 
					<table style="width: 100%;border-spacing: 1px;margin: 0 auto;">
					<tr> 
					  <td style="width: 50%;padding: 2px;"><strong><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:Times New Roman'> <fmt:formatNumber value="${PermitPrintValue.vehId}" pattern="00000000"/> </span></strong></td>
					  <td style="width: 50%;text-align: right;padding: 3px;">No. &nbsp;<strong><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:Times New Roman'><c:out value="${PermitPrintValue.permitNo}" /></span></strong></td>
					</tr>
					</table>
				</td>
				</tr>
		  		<tr> 
		  			<td colspan ="2" style="width: 360px;vertical-align: bottom;"> <div style="text-align: center;"><span lang=ZH-TW style='font-size:8.0pt;mso-bidi-font-size:12.0pt;letter-spacing:1.24pt;'><span class="win10_bold">香港特別行政區政府運輸署</span></span></div></td>
				</tr>
				<tr> 
		  	 		<td colspan ="2" style="width: 360px;height: 15px;"> <div style="text-align: center;"><b><span lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:12.0pt;font-family:Times New Roman'>TRANSPORT DEPARTMENT</span></b></div></td>
				</tr>
				<tr> 
		  			<td colspan="2" style="height: 15px;"> <div style="text-align: center;"><b> <span lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:12.0pt;font-family:Times New Roman'>THE GOVERNMENT OF THE HONG KONG<br>SPECIAL ADMINISTRATIVE REGION</span></b></div></td>
		  		</tr>
		  		<tr> 
		    		<td colspan="2" style="height: 3px;width: 100%;"></td>
		  		</tr>
		  		<!-- 
		  		<tr> 
		  			<td colspan="2" align="center" height="15"><div align="center"><b><span lang=ZH-TW style='font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:MingLiU_HKSCS;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";letter-spacing:1.13pt;font-family:MingLiU_HKSCS'>香港法例第三百七十四章道路交通(車輛構造及保養)規例</span></b></div></td>
		  		</tr>
		  		<tr> 
		  			<td colspan="2" align="center" height="15"><p align="center"><strong><span lang=EN-US style='font-size:7.0pt;mso-bidi-font-size:9.0pt;font-family:Times New Roman'>ROAD TRAFFIC (CONSTRUCTION&nbsp;&amp;&nbsp;MAINTENANCE OF VEHICLES) REGULATIONS&nbsp;(CAP.374)</span></strong></p></td>
				</tr>
				 -->
		  		<tr> 
		    		<td colspan="2" style="height: 4px;width: 100%;"></td>
				</tr>
			  	<tr> 	
					<td colspan="2" style="width: 360px;height: 12px;"><div style="text-align: center;"><span lang=ZH-TW style='font-size:8.0pt;mso-bidi-font-size:12.0pt;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";letter-spacing:1.0pt;'><span class="win10_bold">許可證</span></span></div></td>
				</tr>
				<tr> 
		    		<td colspan="2" style="width: 360px;height: 18px;vertical-align: top;"><div style="text-align: center;"><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:Times New Roman'><strong>P&nbsp;E&nbsp;R&nbsp;M&nbsp;I&nbsp;T</strong></span></div></td>
				</tr>
		    	<tr> 
		  			<td style="width: 15px;"></td>
		    		<td style="width: 360px;">
		      			<table style="border-collapse: collapse;border-color: #111111;width: 100%;" id="AutoNumber1">
		        			<tr>
		        				<td>
		        					<p class=MsoNormal style='text-align: justify; text-justify: distribute-all-lines; layout-grid-mode: char'>
										<span lang=EN-US style='font-size: 8pt;font-family:MingLiU'>
											根據道路交通(車輛構造及保養)規例(第 374A 章)第
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											條
										</span>
									</p>
		        				</td>
		        			</tr>
		      			</table>
		    		</td>
		  		</tr>
				<tr>
					<td style="width: 15px;"></td>
					<td style="width: 345px;">
						<div style="text-align: justify; text-justify: distribute-all-lines; layout-grid-mode: char">
							<span
								style='font-size: 8.0pt; mso-bidi-font-size: 12.0pt; font-family: Times New Roman'>In
								accordance with the provisions of regulation &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
							<b><span
								lang=EN-US
								style='font-size: 9.0pt; mso-bidi-font-size: 11.0pt; font-family: Times New Roman'><c:out
										value="${PermitPrintValue.numberStr}" />
							</span>
							</b>
							<span
								style='font-size: 8.0pt; mso-bidi-font-size: 12.0pt; font-family: Times New Roman'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								of the Road</span>
						</div>
					</td>
				</tr>  
				<tr> 
					<td style="width: 360px;" colspan="2"><p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;
		layout-grid-mode:char'><span lang=EN-US style='font-size:6.0pt'>&nbsp;</span></p></td>
				</tr>
				<tr> 
		  			<td colspan="2" style="width: 360px;padding-left:1pt">
		      			<table style="border-collapse: collapse;border-color: #111111;width: 100%;" id="AutoNumber1">
		        			<tr>
		        				<td>
		        					<p class=MsoNormal style='text-align: justify; text-justify: distribute-all-lines; layout-grid-mode: char'>
										<span lang=EN-US style='font-size: 8pt;font-family:MingLiU'>
											的規定，授權
										</span>
									</p>
		        				</td>
		        			</tr>
		      			</table>
		    		</td>
		  		</tr>
				<tr>
					<td colspan="2" style="width: 360px;padding-left:1pt">
						<p class=MsoNormal style='text-align: justify; text-justify: distribute-all-lines; layout-grid-mode: char'>
							<span lang=EN-US style='font-size: 8pt'>
							Traffic (Construction & Maintenance of Vehicles) Regulations (Cap. 374A),
							</span>
						</p>
					</td>
				</tr>  
				<tr> 
					<td style="width: 360px;" colspan="2"><p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;
		layout-grid-mode:char'><span lang=EN-US style='font-size:6.0pt'>&nbsp;</span></p></td>
				</tr>
				<tr> 
		  			<td colspan="2" style="width: 100%;vertical-align: bottom;">
		  			<!-- 
		      			<table style="border-collapse: collapse;width: 360px;" >
		                <tr>
		        <td style="width: 360px;" colspan="2"><p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;
		layout-grid-mode:char'><span lang=EN-US style='font-size:8.0pt'>&nbsp;</span></p></td>
		        </tr>
		        			<tr>
		        				<td style="width: 35%;"  colspan="2">
								<span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt;letter-spacing:0.4pt;font-family:MingLiU_HKSCS'> (登記車主姓名)</span><span lang=EN-US style='font-family:Times New Roman;font-size:8.0pt'>&nbsp;(Name of Registered Owner)</span>
							    </td>
							</tr>
		      				<tr>
		          				<td  colspan="2" style="width: 100%;height: 30px;">
								<strong>
								  <span  style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:MingLiU_HKSCS;word-break:normal;word-wrap:normal'>						  
								     <c:out value="${PermitPrintValue.ownerNameChi}" /><br>
							      </span>
								</strong>
								<strong>
								   <span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:Courier New;word-break:normal;word-wrap:normal'>
									   <c:out value="${PermitPrintValue.ownerNameEng}"/>
								   </span>
								</strong>
							  </td>
		       				</tr>
		       			</table>
		       			 -->
						<table class=MsoTableGrid
						 style='border-collapse:collapse;width: 360px;'>
						    <tr> 
						      <td style='width: 134px;vertical-align: middle;padding-left:1pt;padding-top:0cm; padding-bottom:0cm'> 
						        <p class=MsoNormal ><span lang=ZH-TW style='font-size:8.0pt;font-family:MingLiU'>(登記車主姓名)</span></p>
						         
						        </td>
						      <td rowspan="2" style='height: 32px;vertical-align: top;padding-left:2pt;padding-top:0cm; padding-bottom:0cm'><span style='font-size:10.0pt;letter-spacing:1.0pt;color:black;word-break:normal;word-wrap:normal'><span class="win10_bold">             
								     <c:if test="${PermitPrintValue.ownerNameChi != null}">
									     <c:out value="${PermitPrintValue.ownerNameChi}"/><br>
								     </c:if>
								     <c:out value="${PermitPrintValue.ownerNameEng}"/>
								  </span></span>
							 </td>
								  
								  <!-- style='font-size:10pt;font-family:MingLiU_HKSCS;color:black;word-break:normal;word-wrap:normal' -->
						    </tr>
						    <tr>
						    	<td style='vertical-align: top;padding-left:1pt;padding-top:0cm; padding-bottom:0cm'>
						    	<p class=MsoNormal ><span lang=EN-US style='font-family:Times New Roman;font-size:8.0pt'>(Name 
						     	 of Registered Owner)</span></p>
						    	</td>
						    </tr>
						  </table>
		       		</td>
				</tr>
				<tr> 
					<td style="width: 360px;" colspan="2"><p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;
		layout-grid-mode:char'><span lang=EN-US style='font-size:4.0pt'>&nbsp;</span></p></td>
				</tr>
				<tr> 
					<td colspan="2" style="width: 360px;vertical-align: bottom;"><div style='text-align:justify;text-justify:distribute-all-lines;layout-grid-mode:char'><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:11.0pt;letter-spacing:1.15pt;font-family:MingLiU'><o:p>使用或致使獲他授權的其他人駕駛或使用</o:p></span></div></td>
				</tr>
			   	<tr> 
				 	<td colspan="2" style="width: 360px;vertical-align: top;"><div style='text-align:justify;text-justify:distribute-all-lines;layout-grid-mode:char'><o:p><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:Times New Roman'>is &nbsp;hereby &nbsp;authorized &nbsp;to &nbsp;use &nbsp;or &nbsp;cause &nbsp;to &nbsp;be &nbsp;driven &nbsp;or &nbsp;used</span></o:p></div></td>	
			   	</tr>
		        <tr>
		        <td style="width: 360px;" colspan="2"><p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;layout-grid-mode:char'><span lang=EN-US style='font-size:6.0pt'>&nbsp;</span></p></td>
		        </tr>
				<tr> 
					<td colspan="2" style="width: 360px;vertical-align: bottom;">
					<table  style='border-collapse:collapse;width: 360px;'>
						<tr>
							<td style="width: 50%;">
								<p style="text-align: left;">
									<span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:11.0pt;font-family:MingLiU'><o:p>(&nbsp;車&nbsp;輛&nbsp;類&nbsp;別&nbsp;)</o:p></span>
								</p>
							</td >
							<td  style="width: 46%;">
								<p style="text-align: left;">
									<span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:11.0pt;font-family:MingLiU'><o:p>(&nbsp;登&nbsp;記&nbsp;號&nbsp;碼&nbsp;)</o:p></span>
								</p>
							</td>
							<td  style="width: 4%;">
								<p style="text-align: right;">
									<span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:11.0pt;font-family:MingLiU'><o:p>的&nbsp;車&nbsp;輛</o:p></span>
								</p>
							</td>
						</tr>
						<tr>
							<td style="width: 50%;">
								<p style="text-align: left;">
									<span lang=EN-US style='font-size:10.0pt;mso-bidi-font-size:11.0pt;letter-spacing:-0.5pt;font-family:Times New Roman'><strong><c:out value="${PermitPrintValue.vehClass}" /></strong></span>
								</p>
							</td>
							<td style="width: 50%;" colspan="2">
								<p style="text-align: left;">
									<span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt'><o:p>of Registration Mark &nbsp;&nbsp;&nbsp;&nbsp;</o:p></span>
									<strong><span lang=EN-US style='font-size:10.0pt;mso-bidi-font-size:11.0pt;font-family:Times New Roman'><c:out value="${PermitPrintValue.regMark}" /></span></strong>
								</p>
							</td>
						</tr>
					</table>
					</td>
				</tr>
					<!-- 
				<tr> 
					<td colspan="2" style="width: 360px;">
					<div style="text-align: left;">
						<span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt;letter-spacing:-0.5pt;font-family:Times New Roman'><strong><c:out value="${PermitPrintValue.vehClass}" /></strong></span>
						<span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt'><o:p>of Registration Mark &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </o:p></span>
						<strong><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:Times New Roman'><c:out value="${PermitPrintValue.regMark}" /></span></strong>
						</div>
					<table border="1" style='border-collapse:collapse;width: 360px;'>
						<tr>
							<td style="width: 50%;border-width:1px;">
								<p style="text-align: left;">
									<span lang=EN-US style='font-size:10.0pt;mso-bidi-font-size:11.0pt;letter-spacing:-0.5pt;font-family:Times New Roman'><strong><c:out value="${PermitPrintValue.vehClass}" /></strong></span>
								</p>
							</td>
							<td style="width: 50%;border-width:1px;">
								<p style="text-align: left;">
									<span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt'><o:p>of Registration Mark &nbsp;&nbsp;&nbsp;&nbsp;</o:p></span>
									<strong><span lang=EN-US style='font-size:10.0pt;mso-bidi-font-size:11.0pt;font-family:Times New Roman'><c:out value="${PermitPrintValue.regMark}" /></span></strong>
								</p>
							</td>
						</tr>
					</table>
					</td>
				</tr>
						 -->
				<tr> 
					<td style="width: 360px;" colspan="2"><p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;
		layout-grid-mode:char'><span lang=EN-US style='font-size:6.0pt'>&nbsp;</span></p></td>
				</tr>
				<tr> 
					<td colspan="2"  style="width: 360px;"><div style="text-align: left;"><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt;'><span class="win10_bold"><c:out value="${PermitPrintValue.demensions}" /></span></span>
		            </div></td>
				</tr>
			   <!-- -->
			   <tr> 
					<td style="width: 360px;" colspan="2"><p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;
		layout-grid-mode:char'><span lang=EN-US style='font-size:6.0pt'>&nbsp;</span></p></td>
			   </tr>
			    
			   <tr> 
				<td colspan="2" style='width: 360px;text-align: left;text-align:justify;text-justify:distribute-all-lines;layout-grid-mode:char'><o:p><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:11.0pt;font-family:MingLiU'>並祇在</span>
				  <span style='font-size:10.0pt;mso-bidi-font-size:11.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:11.0pt;font-family:MingLiU'>
				  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				  	至
				  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				  </span>
				  <span style='font-size:10.0pt;mso-bidi-font-size:11.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:11.0pt;font-family:MingLiU'>有效，首尾兩天包括在內。</span></o:p></td>
			   </tr>
		   <tr> 
		    <td colspan="2" style="width: 360px;text-align: justify;"><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt'>for 
		              the period from &nbsp;</span> <strong> <span lang=EN-US style='font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Times New Roman'><fmt:formatDate value="${PermitPrintValue.startDate}" pattern="dd/MM/yyyy" /></span><span style='font-size:9.0pt;mso-bidi-font-size:12.0pt'>&nbsp; 
		              </span></strong><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt'>&nbsp;
		              to </span> <strong>&nbsp;<span lang=EN-US style='font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Times New Roman'>
		      <fmt:formatDate value="${PermitPrintValue.uptoDate}" pattern="dd/MM/yyyy" /></span></strong><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:12.0pt'><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:12.0pt'> 
		              </span></span> <span style='font-size:9.0pt;mso-bidi-font-size:12.0pt'>&nbsp;
		              </span><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt'> inclusive.</span></td>
		   </tr>
		   <!-- -->
		   <tr> 
		  	<td style="width: 360px;" colspan="2"><p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;
		layout-grid-mode:char'><span lang=EN-US style='font-size:6.0pt'>&nbsp;</span></p></td>
		   </tr>
		     
		     
		   <tr> 
		  	<td colspan="2"  style="width: 360px; height: 12px;"><div style="text-align: left;"><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:11.0pt;letter-spacing:1pt;font-family:MingLiU'><o:p>使用此許可證須遵守下列及後頁的條件。</o:p></span></div></td>
		   </tr>
		   <tr> 
		  	 <td colspan="2"  style="width: 360px; height: 15px;"><div style="text-align: left;"><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt'><o:p>This permit is subject to the conditions stipulated below and overleaf.</o:p></span></div></td>
		   </tr>
		     <tr> 
		  	<td style="width: 360px;" colspan="2"><p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;
		layout-grid-mode:char'><span lang=EN-US style='font-size:6.0pt'>&nbsp;</span></p></td>
		   </tr>
		     <tr> 
		  	<td style="width: 360px;" colspan="2"><p class=MsoNormal style='text-align:justify;text-justify:distribute-all-lines;
		layout-grid-mode:char'><span lang=EN-US style='font-size:4.0pt'>&nbsp;</span></p></td>
		   </tr>
		     
		   <tr> 
		    <td colspan="2" style="width: 100%;"> 
		   <table class=MsoTableGrid 
		 style='border-collapse:collapse;width: 360px;'>
		        <tr> 
		          <td style="width: 50%;text-align: left;vertical-align: middle;"><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:MingLiU'>發出日期</span></td>
		          <td style='width: 50%;text-align: center;font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:MingLiU'>&nbsp;</td>

		        </tr>
				<tr> 
		          <td style="width: 50%;text-align: left;vertical-align: middle;"><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt'>Date of issue: </span><strong><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:Times New Roman'>
		            <fmt:formatDate value="${PermitPrintValue.issueDate}" pattern="dd/MM/yyyy" /></span></strong></td>
		          <td style="width: 50%;text-align: center;"><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt'>運輸署署長發出</span></td>
		        </tr>
				<tr> 
		          <td style="width: 50%;text-align: left;vertical-align: middle;"><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:MingLiU'>檔案記錄</span></td>
		          <td style='width: 50%;text-align: center;font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:MingLiU'> Issued by Commissioner for Transport </td>
		        </tr>
				<tr> 
		          <td style="width: 50%;text-align: left;vertical-align: middle;"><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt'>Transaction:</span> <strong><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:Times New Roman'><c:out value="${PermitPrintValue.txnNo}" /></span></strong></td>
		          <td style="width: 50%;text-align: center;" ></td>
		        </tr>
				<tr> 
		          <td style="width: 50%;text-align: left;"><span
		  lang=EN-US style='font-size:9.0pt'></span></td>
		          <td style="width: 50%;text-align: right;vertical-align: middle;"><span
		  lang=EN-US style='font-size:9.0pt'>No. &nbsp;</span><strong><span lang=EN-US style='font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:Times New Roman'><c:out value="${PermitPrintValue.permitNo}" />&nbsp;&nbsp;&nbsp;&nbsp;</span></strong></td>
		        </tr>
		      </table>
			 </td>
		  </tr>
		</table>
		</td>
		</tr>
		</table>
					</td>
					<td  style="padding-left:20pt;text-align: center;vertical-align: top;">
							<table style="width: 360px;text-align: center;">
		<THEAD style="display:table-header-group">
		<tr>
		<!-- add vertical dotted line for ER-2022-005 on 2022-05-22 by Joy Xu begin -->
 		
 		<!-- add vertical dotted line for ER-2022-005 on 2022-05-22 by Joy Xu end --> 
		<td colspan="2" style="width: 350px;">
			<div class="verticaldottedline"></div>
			<table class=MsoNormalTable
				style='border-collapse: collapse;width: 100%;'>
				<tr>
					<td style='vertical-align: top;width: 13%;padding:0cm 1pt 0cm 1pt'><span lang=EN-US style='font-size:7pt'>Registration Mark </span></td>
	                <td style='vertical-align: top;text-align: left;width: 13%;padding:0cm 1pt 0cm 1pt' nowrap><b><span lang=EN-US style='font-size:7pt;color:black'>&nbsp;
	                  <c:out value="${PermitPrintValue.regMark}"/>
	                </span></b></td>
	                <td style='vertical-align: top;width: 10%;padding:0cm 1pt 0cm 1pt'><span lang=EN-US style='font-size:7pt'>Date of issue</span></td>
	                <td style='vertical-align: top;width: 15%;padding:0cm 1pt 0cm 1pt'><b><span lang=EN-US style='font-size:7pt;color:black'>
	                  <fmt:formatDate value="${PermitPrintValue.issueDate}" pattern="dd/MM/yyyy" />
	                </span></b></td>
	                <td style='vertical-align: top;width: 15%;padding:0cm 1pt 0cm 1pt'><span lang=EN-US style='font-size:7pt'>Transaction</span></td>
	                <td style='vertical-align: top;width: 14%;padding:0cm 1pt 0cm 1pt'><b><span style='font-size: 7pt; color:black'>
	                  <c:out value="${PermitPrintValue.txnNo}"/>
	                </span></b></td>
	                <td style='vertical-align: top;width: 5%;padding:0cm 1pt 0cm 1pt'><span lang=EN-US style='font-size:7pt'>No .</span></td>
	                <td style='vertical-align: top;width: 15%;padding:0cm 1pt 0cm 1pt'><b><span lang=EN-US style='font-size:7pt;color:black'>
	                  <c:out value="${PermitPrintValue.permitNo}"/>
	                </span></b></td>
				</tr>
			</table>
			</div>
		</td>
		<!-- add vertical dotted line for ER-2022-005 on 2022-05-22 by Joy Xu begin -->
		
		<!-- add vertical dotted line for ER-2022-005 on 2022-05-22 by Joy Xu end -->
		</tr>
		</THEAD>
		  <tr> 
			<td colspan="2" style="height: 30px;text-align: center;vertical-align: bottom;"><span lang=ZH-TW style='font-size:9.0pt;mso-bidi-font-size:12.0pt;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";letter-spacing:1.0pt;'><span class="win10_bold">許 可 證 條 件</span></span></td>
		  </tr>
			<tr> 
			<td colspan="2" style="text-align: center;"><span lang=EN-US style='font-size:9.0pt;line-height:200%'>Conditions of Permit</span></td>
		  </tr>
		  
		  <tr> 
			<td style="width: 10px;height: 15px;text-align: left;"></td>
			<td style="width: 350px;height: 15px;"><div style="text-align: center;"></div></td>
		  </tr>
		  
		<tbody>
		<c:set var="count" value="0" />
		<c:forEach var="optMandatoryCondValue" items="${requestScope.optMandatoryCondValues}">
		<c:set var="count" value="${count + 1}" />	
		 <tr>
		  <td style='vertical-align: top;text-align: left;width:10;padding-left:1pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
			<p class=MsoNormal style='text-align:right;layout-grid-mode:char'><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:Times New Roman'><c:out value="${count}" />.</span></p>
		  </td>
		  <td style='vertical-align: top;width:350;padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
			<p class=MsoNormal style='layout-grid-mode:char'><span lang=ZH-TW style='font-size:8.0pt;mso-bidi-font-size:12.0pt; mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";font-family:MingLiU'><c:out value="${optMandatoryCondValue.interpretationChi}" /></span></p>
		  </td>
		 </tr>
		 <tr>
		  <td style='vertical-align: top;text-align: left;width:10;padding-left:1pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>&nbsp; </td>
		  <td style='vertical-align: top;width:350;padding-left:5.4pt; padding-right:5.4pt; padding-top:0cm; padding-bottom:0cm'>
			<p class=MsoNormal style='layout-grid-mode:char'><span lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:Times New Roman'><c:out value="${optMandatoryCondValue.interpretationEng}" /></span></p>
		  </td>
		 </tr>
		 <tr><td colspan="2">&nbsp;</td></tr> 
		</c:forEach>
		</tbody> 
	</table>
					</td>
				</tr>
		</table>
		
		
		
		
		</div>
		<!-- add horizontal dotted line for ER-2022-005 on 2022-05-22 by Joy Xu begin -->
		<div class="horizontaldottedline"></div>
		<!-- add horizontal dotted line for ER-2022-005 on 2022-05-22 by Joy Xu end -->
		
		<!-- print on another page -->
		<div class = "page" style="display:none">
		
	</div>
		
</c:forEach>
<%}%>
</body>
</html>