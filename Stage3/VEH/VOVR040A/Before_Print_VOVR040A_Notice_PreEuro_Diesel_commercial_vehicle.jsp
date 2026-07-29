<!DOCTYPE html>
<%--
 * <p>Title: Print_VOVR040A_Notice_PreEuro_Diesel_commercial_vehicle</p>
 * <p>Project: VALID IV</p>
 * <p>Description: Notice to registered owners of pre-Euro IV diesel commercial vehicle
 CR-2013-034</p>
 * <p>Copyright: Copyright (c) 2013</p>
 * <p>Company: HEWLETT PACKARD</p>
 *
 * @author Jennifer Chan
 * @version 0.1
 *          Date: 03/01/2014
--%>

<%@ page import="hk.gov.valid.util.RequestConstant"%>
<%@ page import="hk.gov.valid.util.CodeTableConstant"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt"%>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print"%>
<%@ taglib uri="/WEB-INF/tld/codetable.tld" prefix="codetable" %>
<%@ page import="hk.gov.valid.util.SessionConstant"%>


<html lang="en">
<head>
<title>&nbsp;</title>

<c:set var="PAGE_VALUE"><%=RequestConstant.PAGE_VALUE%></c:set>
<c:set var="frtLetterValue" value="${requestScope[PAGE_VALUE]}" scope="request"/>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="UTF-8">
<meta name="header" content="">
<meta name="footer" content="">
<meta name="margin-top" content="0">
<meta name="margin-bottom" content="0">
<meta name="margin-left" content="2">
<meta name="margin-right" content="2">
<meta name="papersize" content="A4">
<meta name="orientation" content="0">
<meta name="duplex" content="2">
<meta name="multifunctionind" content="false">
<meta name="custom" content="false">

<style>
<!--
p, div {
  text-align:justify;

  font-size: 12pt;
}
.STYLE1 {
  font-family: "Times New Roman";
  font-size: 12pt;
  line-height: 150%;

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
  line-height: 140%;
}
.STYLE4 {
  font-family: "Times New Roman";
  font-size: 12pt;
}
.STYLE7 {
  font-family: MingLiU_HKSCS;
  font-size: 10pt;
}
.STYLE8 {
  font-family: "Times New Roman";
  font-size: 9pt;
}
.STYLE9 {
  font-family: "Times New Roman";
  font-size: 10pt;
  line-height: 140%;
}
.STYLE10 {
  font-family: "MingLiU_HKSCS";
  font-size: 12pt;
  line-height: 150%;
}
.STYLE11 {
  font-family: "Times New Roman";
  font-size: 10pt;
}
.STYLE12 {

  font-family: "Times New Roman";
  font-size: 11pt;
}
p.big {line-height:300%;}
div.page
  {page-break-before:always;line-height:150%;}
p.firstpage
  {margin-left:20pt; margin-top:20pt;}
.win10_bold {
	font-family: "MingLiu";
	font-weight: bold;
}
-->
</style>
</head>

<body>

	<table style="border-spacing: 0px; margin: 0 auto; width: 585px;">
		<tr>
			<td style="vertical-align: top; height: 10px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 90px;">
				<img src="<print:BlankFormPrint imageName='logo.gif'/>" alt="" />
			</td>
			<td style="display: none;"></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 1px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<tr>
			<td style="vertical-align: top; text-align: left;" colspan=2>
				<span class="STYLE8">Our Ref.: TD EP 6-15/1</span><br>
			</td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 1px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<tr>
			<td style="vertical-align: top; text-align: right;" colspan=2>
				<fmt:setLocale value="en_US" />
				<fmt:formatDate value="${frtLetterValue.printDate}" dateStyle="long" Pattern="d MMMMM yyyy"/>
			</td>
		</tr>
		<tr style="vertical-align: top;">
			<td style="text-align: center;" colspan=2>
				<table style="border-spacing: 0px; width: 100%;">
					<tr>
						<td style="vertical-align: top; height: 80px; padding: 15px; border: 1px solid;">
							<div>
							    <!-- update by Justin wong for ER-2022-022 begin -->
								<p style='line-height: 130%;'><b><u><span>Reminder</span></u></b>
								<!-- <u><span><br>(i) Euro IV DCVs first registered in 2008</span></u> -->
								<!-- <span><br>Pursuant to the ex-gratia payment scheme for phasing out Euro IV DCVs, the deadline for cancelling the vehicle registration of Euro IV DCVs which were first registered in 2008 is 31 December 2023. The Transport Department will stop issuing/ renewing licences to those Euro IV DCVs after 31 December 2023.</span> -->
								<!-- <u><span><br>(ii) Euro IV DCVs first registered in 2007</span></u> -->
								<span>
									<br>Pursuant to the ex-gratia payment scheme for phasing out Euro IV DCVs, the deadline for cancelling the vehicle registration of Euro IV DCVs which were first registered in 2010 is 31 December 2025. The Transport Department will stop issuing/ renewing licences to those Euro IV DCVs after 31 December 2025.
								</span>
								</p>
								<!-- update by Justin wong for ER-2022-022 end -->
							</div>
						</td>
					</tr>
				</table>
			</td>
		</tr>
        <!--
		<tr>
			<td style="vertical-align: top; height: 45px;">&nbsp;</td>
		</tr>
		 -->
		<tr>
			<td style="vertical-align: top; height: 10px;"><span class="STYLE1">Dear Sir / Madam,</span></td>
			<td style="display: none;"></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 1px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<tr style="vertical-align: top;">
			<td style="text-align: left;" colspan=2>
				<table style="border-spacing: 0px; width: 100%;" class="STYLE4">
					<tr>
						<td colspan="3" style="text-align: justify; height: 30px;"><b><span class="STYLE4" >Ex-gratia Payment Scheme for Phasing Out Euro IV Diesel Commercial Vehicles
						</span></b></td>
					</tr>

					<tr style="text-align: center;">
						<td style="width: 19%;">&nbsp; </td>
						<td style="width: 20%; text-align: right;"><b><span class="STYLE4">Vehicle Class:&nbsp;</span></b> </td>
						<td style="width: 51%; text-align: left;"><b><span class="STYLE4"><c:out value="${frtLetterValue.vehicleClass}"/></span></b> </td>
					</tr>
					<tr style="text-align: center;">
						<td style="width: 19%;">&nbsp; </td>
						<td style="width: 20%; text-align: right;"><b><span class="STYLE4">Chassis Number:&nbsp; </span></b> </td>
						<td style="width: 51%; text-align: left;"><b><span class="STYLE4"><c:out value="${frtLetterValue.chassisNo}"/></span></b> </td>
					</tr>
				</table>
			</td>
		</tr>
		<tr style="vertical-align: top;">
			<td style="vertical-align: top; text-align: justify;" colspan=2>
				<span class="STYLE1"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The transfer of ownership / re-registration / renewal of licence / cancellation of vehicle registration in respect of the captioned vehicle has been completed.  </p></span>
			</td>
		</tr>
		<tr>
			<td style="vertical-align: top; text-align: justify;" colspan=2>
				<span class="STYLE1"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The Environmental Protection Department ("EPD") is implementing an incentive-cum-regulatory programme ("the Programme") to progressively phase out Euro IV diesel commercial vehicles ("DCVs") (including goods vehicles, light buses and non-franchised buses).  To encourage early retirement of Euro IV DCVs, the EPD launched an ex-gratia payment scheme on 19 October 2020.  Euro IV DCVs are categorised based on their first registration dates as detailed in Table 1<sup style='font-size:8pt'>Note</sup>.  Eligible vehicle owners can apply for the ex-gratia payment after having their vehicles scrapped by vehicle scrapping companies registered under the ex-gratia payment scheme and de-registering the vehicles with this Department. </p></span>
			</td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 1px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
	</table>
	<table style="width: 100%; border-spacing: 0px;">
		<tr>
			<td style="text-align: center;" class="STYLE2"><span class="STYLE9">牌照事務組</span></td>
		</tr>
		<tr>
			<td style="text-align: center;" class="style11"><span class="STYLE9">Licensing Section</span></td>
		</tr>
		<tr>
			<td style="text-align: center;" class="STYLE2"><span class="STYLE9">香港金鐘道九十五號統一中心三樓</span></td>
		</tr>
		<tr>
			<td style="text-align: center;" class="style11"><span class="STYLE9">3rd Floor&nbsp;&nbsp;United Centre&nbsp;&nbsp;95 Queensway&nbsp;&nbsp;&nbsp;Hong Kong</span></td>
		</tr>
		<tr>
			<td style="text-align: center;" class="style11"><span class="STYLE9">網址 Web Site: http://www.td.gov.hk</span></td>
		</tr>
	</table>

	<p style="page-break-after:always">&nbsp;</p>
	<p style="height: 30px;">&nbsp;</p>

	<table style="border-spacing: 0px; margin: 0 auto; width: 565px;">
		<tr>
			<td colspan="3" style="text-align: center; padding: 8px; border: 1px solid;">Table 1 : Dates of First Registration of Euro IV DCVs covered by the Programme </td>
		</tr>
		<tr>
			<td style="width: 20%; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">DCVs</span></td>
			<td style="width: 40%; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">Permitted Gross Vehicle Weight</span></td>
			<td style="width: 40%; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">First Registration Dates</span></td>
		</tr>
		<tr>
			<td rowspan="3" style="width: 20%; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">Goods Vehicles</span></td>
			<td style="width: 40%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">Not more than 1.7 tonnes</span></td>
			<td style="width: 40%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">1 January 2006 to 30 December 2012</span></td>
		</tr>
		<tr>
			<td style="width: 40%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">More than 1.7 but not more than 3.5 tonnes</span></td>
			<td style="width: 40%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">1 January 2007 to 30 December 2012</span></td>
		</tr>
		<tr>
			<td style="width: 40%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">More than 3.5 tonnes</span></td>
			<td style="width: 40%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">1 October 2006 to 31 May 2012</span></td>
		</tr>
		<tr>
			<td rowspan="3" style="width: 20%; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">Light Buses</span></td>
			<td style="width: 40%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">Not more than 1.7 tonnes</span></td>
			<td style="width: 40%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">1 January 2006 to 31 May 2012</span></td>
		</tr>
		<tr>
			<td style="width: 40%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">More than 1.7 but not more than 3.5 tonnes</span></td>
			<td style="width: 40%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">1 January 2007 to 31 May 2012</span></td>
		</tr>
		<tr>
			<td style="width: 40%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">More than 3.5 tonnes</span></td>
			<td style="width: 40%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">1 October 2006 to 31 May 2012</span></td>
		</tr>
		<tr>
			<td style="width: 20%; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">Non-franchised Buses</span></td>
			<td style="width: 40%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">More than 3.5 tonnes</span></td>
			<td style="width: 40%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">1 October 2006 to 31 May 2012</span></td>
		</tr>
	</table>

	<table style="border-spacing: 0px; margin: 0 auto; width: 565px;">
		<tr>
			<td style="vertical-align: top; height: 20px;">&nbsp;</td>
		</tr>
		<tr>
			<td style="vertical-align: top; text-align: justify;">
				<span class="STYLE1"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; According to our record, the date of first registration of the captioned vehicle falls within the relevant period specified in Table 1 and it had been registered as a DCV or had applied for re-registration as a DCV as of 1 January 2020.  As you are the registered owner of the captioned vehicle, your attention is drawn to the implementation of the Programme.</p></span></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 10px;">&nbsp;</td>
		</tr>
		<tr>
			<td style="vertical-align: top; text-align: justify;">
				<span class="STYLE1"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Under the Programme, the deadlines for cancelling the vehicle registration of Euro IV DCVs are as follows:</p></span></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 20px;">&nbsp;</td>
		</tr>
	</table>

	<table style="border-spacing: 0px; margin: 0 auto; width: 565px;">
		<tr>
			<td colspan="8" style="text-align: center; padding: 8px; border: 1px solid;">Table 2: Deadlines for Cancelling the Vehicle Registration of Euro IV DCVs </td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 20px; width: 23%; text-align: center; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">First Registration Year of Euro IV DCVs</span></td>
			<td style="vertical-align: top; height: 20px; width: 11%; text-align: center; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">2006</span></td>
			<td style="vertical-align: top; height: 20px; width: 11%; text-align: center; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">2007</span></td>
			<td style="vertical-align: top; height: 20px; width: 11%; text-align: center; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">2008</span></td>
			<td style="vertical-align: top; height: 20px; width: 11%; text-align: center; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">2009</span></td>
			<td style="vertical-align: top; height: 20px; width: 11%; text-align: center; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">2010</span></td>
			<td style="vertical-align: top; height: 20px; width: 11%; text-align: center; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">2011</span></td>
			<td style="vertical-align: top; height: 20px; width: 11%; text-align: center; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">2012</span></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 50px; width: 23%; text-align: center; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">Deadlines for Cancelling the Vehicle Registration</span></td>
			<td style="vertical-align: top; height: 50px; width: 11%; text-align: center; padding: 8px; border: 1px solid;" class="style9"><span class="style9">31 Dec 2021</span></td>
			<!-- update by Justin wong for ER-2022-022 begin -->
			<td style="vertical-align: top; height: 50px; width: 11%; text-align: center; padding: 8px; border: 1px solid;" class="style9"><span class="style9">31 Dec 2023<sup style='font-size:8pt'>#</sup> </span></td>
			<!-- update by Justin wong for ER-2022-022 end -->
			<!-- update by Ken Wu for CR-2023-003 begin -->
			<td style="vertical-align: top; height: 50px; width: 11%; text-align: center; padding: 8px; border: 1px solid;" class="style9"><span class="style9">31 Dec 2024<sup style='font-size:8pt'>#</sup> </span></td>
			<!-- update by Ken Wu for CR-2023-003 end -->
			<td style="vertical-align: top; height: 50px; width: 11%; text-align: center; padding: 8px; border: 1px solid;" class="style9"><span class="style9">31 Dec 2024</span></td>
			<td style="vertical-align: top; height: 50px; width: 11%; text-align: center; padding: 8px; border: 1px solid;" class="style9"><span class="style9">31 Dec 2025</span></td>
			<td style="vertical-align: top; height: 50px; width: 11%; text-align: center; padding: 8px; border: 1px solid;" class="style9"><span class="style9">31 Dec 2026</span></td>
			<td style="vertical-align: top; height: 50px; width: 11%; text-align: center; padding: 8px; border: 1px solid;" class="style9"><span class="style9">31 Dec 2027</span></td>
		</tr>

	</table>
	<!-- update by Justin wong for ER-2022-022 begin -->
	<table style="border-spacing: 0px; margin: 0 auto; width: 565px;">
		<tr style="display: none;"><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
		<tr>
			<td colspan="8" style="vertical-align: top; text-align: justify;">
				<div>
				<!-- update by Ken Wu for CR-2023-003 begin -->
					<span class="STYLE1"><sup style='font-size:8pt'>#</sup> The Environmental Protection Department has announced the extension of the ex-gratia payment application deadline for phasing out Euro IV DCVs first registered in 2007 and 2008 to 31 December 2023 and 31 December 2024 respectively
					</span>
				<!-- update by Ken Wu for CR-2023-003 end -->
				</div>
			</td>
		</tr>
	</table>
	<!-- update by Justin wong for ER-2022-022 end -->

    <p style="page-break-after:always">&nbsp;</p>
	<table style="border-spacing: 0px; margin: 0 auto; width: 565px;">
		<tr>
			<td style="vertical-align: top; height: 20px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<tr>
		    <!-- update by Justin wong for ER-2022-022 begin -->
			<td style="vertical-align: top; text-align: justify;" colspan=2>
				<span class="STYLE1"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; As the deadline for cancelling the vehicle registration of Euro IV DCVs which were first registered in 2010 is approaching, <b>owners of Euro IV DCVs first registered in 2010 are advised to make necessary preparation and arrangement as early as possible.  <u>Cancellation of the vehicle's registration must be completed not later than the abovementioned deadline<sup style='font-size:8pt'>Note</sup> and within three months after the vehicle's registration is cancelled, applicants should submit an application for ex-gratia payment to the Transport Department.</u></b></p></span></td>
		    <!-- update by Justin wong for ER-2022-022 end -->
		</tr>
		<!-- update by Justin wong for ER-2022-022 begin -->
		<!--
		<tr>
			<td style="vertical-align: top; height: 10px;"><p style="page-break-after:always">&nbsp;</p></td>
		</tr>
		 -->
		<!-- update by Justin wong for ER-2022-022 end -->
		<tr>
			<td style="vertical-align: top; height: 30px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<tr>
			<td style="vertical-align: top; text-align: justify;" colspan=2>
				<span class="STYLE1"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; If you intend to apply for the ex-gratia payment, you should check and understand details of the ex-gratia payment scheme, including the eligibility criteria, the latest list of vehicle scrapping companies registered under the scheme and other application details before scrapping your vehicle.  The above information is available at EPD's website: www.epd.gov.hk.  You may also call 2651 1100 or email to EU4dcv@epd.gov.hk for enquiry. </p></span></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 10px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<tr>
			<td style="vertical-align: top; text-align: justify;" colspan=2>
			<span class="STYLE1"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Moreover, in accordance with the Air Pollution Control (Air Pollutant Emission) (Controlled Vehicles) Regulation (Cap. 311X), this Department will stop issuing (i.e. including renewing) licences to Euro IV DCVs after their respective deadlines for cancelling the vehicle registration, unless they can comply with the latest emission standards applicable to vehicles first registered on the date of the vehicle licence application.</p></span></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 10px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<tr>
			<td style="vertical-align: top; text-align: justify;" colspan=2>
				<span class="STYLE1"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; For enquiries, please call 2804 2600 or email to licensing@td.gov.hk. </p></span></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 80px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 10px; text-align: right;" colspan=2>Licensing Section<br>Transport Department</td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 30px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<tr>
			<td style="vertical-align: top;" colspan=2 class="style11">
				<p class="STYLE9" style="text-align: justify;"><b><sup>Note</sup>:</b> DCVs which were first registered on a date within the period specified in Table 1 but on the date of first registration had complied with Euro V emission standards are categorised as Excluded Vehicles and are not required to be phased out.  Vehicle owners of Excluded Vehicles who would like to apply for licence after the deadlines for cancelling the vehicle registration are required to submit proof of the design emission standards of their vehicles (such as documents issued by vehicle manufacturers) to the EPD for verification.  Owners of these Excluded Vehicles can also choose to scrap and cancel the registration of their vehicles on or before the deadlines specified in Table 2 and then apply for the ex-gratia payment.</p></td>
		</tr>
	</table>

	<p style="page-break-after:always">&nbsp;</p>

	<table style="border-spacing: 0px; margin: 0 auto; width: 565px;">
		<tr>
			<td style="vertical-align: top; height: 90px;">
				<img src="<print:BlankFormPrint imageName='logo.gif'/>" alt="" />
			</td>
			<td style="display: none;"></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 10px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 50px; text-align: justify;" colspan=2>
				<span class="STYLE7">本署檔號: TD EP 6-15/1</span><br>
			</td>
		</tr>

		<tr style="vertical-align: top;">
			<td style="text-align: center;" colspan=2>
				<table style="border-spacing: 0px; width: 100%;">
					<tr>
					    <!-- update by Justin wong for ER-2022-022 begin -->
						<td style="vertical-align: top; height: 100px; padding: 10px; border: 1px solid;">
							<div>
								<p><u><b><span class="STYLE10"><span class="win10_bold">提示 </span></span></b></u>
								<!-- <u><span class="STYLE10"><br>(i) 於2008年首次登記的歐盟四期柴油商業車輛 </span></u> -->
								<!-- <span class="STYLE10"><br>根據淘汰歐盟四期柴油商業車輛特惠資助計劃，於2008年首次登記的歐盟四期柴油商業車輛的取消車輛登記期限是2023年12月31日。運輸署已於2023年12月31日後停止向於2008年首次登記的歐盟四期柴油商業車輛發出車輛牌照。 </span> -->
								<!-- <u><span class="STYLE10"><br>(ii) 於2007年首次登記的歐盟四期柴油商業車輛 </span></u> -->
								<span class="STYLE10">
									<br>根據淘汰歐盟四期柴油商業車輛特惠資助計劃，於2010年首次登記的歐盟四期柴油商業車輛的取消車輛登記期限是2025年12月31日。運輸署將於2025年12月31日後停止向於2010年首次登記的歐盟四期柴油商業車輛發出車輛牌照。
								</span>
								</p>
							</div>
						</td>
						<!-- update by Justin wong for ER-2022-022 end -->
					</tr>
				</table>
			</td>
		</tr>

		<tr>
			<td style="vertical-align: top; height: 10px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 10px;"><span class="STYLE2">先生 / 女士 ：</span></td>
			<td style="display: none;"></td>
		</tr>
		<tr style="vertical-align: top;">
			<td style="text-align: center;" colspan=2>
				<table style="border-spacing: 0px; width: 100%;" class="STYLE3">
					<tr>
						<td style="vertical-align: top; height: 10px;">&nbsp;</td>
						<td style="display: none;"></td>
						<td style="display: none;"></td>
					</tr>
					<tr>
						<td colspan="3" style="text-align: center; height: 30px;"><span class="STYLE3"><span class="win10_bold">淘汰歐盟四期柴油商業車輛特惠資助計劃</span></span></td>
					</tr>
					<tr style="text-align: center;">
						<td style="width: 30%; text-align: right; height: 20px;"><span class="STYLE3"><span class="win10_bold">車輛類別:&nbsp;</span></span> </td>
						<td style="width: 2%;">&nbsp; </td>
						<td style="width: 51%; text-align: left;">
							<span class="STYLE3"><span class="win10_bold"><codetable:out value="<%=CodeTableConstant.VEHICLE_CLASS_CODE%>"
								formatType="<%=CodeTableConstant.INTERPRETATION%>"
								language="<%=CodeTableConstant.CHINESE%>"
								selected="${frtLetterValue.vehicleClassCode}" />
							</span></span>
						</td>
					</tr>
					<tr style="text-align: center;">
						<td style="width: 30%;text-align: right; height: 20px;"><span class="STYLE3"><span class="win10_bold">底盤號碼:&nbsp; </span></span></td>
						<td style="width: 2%;">&nbsp; </td>
						<td style="width: 51%; text-align: left;"><span class="STYLE3"><span class="win10_bold"><c:out value="${frtLetterValue.chassisNo}"/></span></span> </td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 20px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<tr style="vertical-align: top;">
			<td style="vertical-align: top; text-align: justify;" colspan=2>
				<p class=MsoNormal style="text-align:justify;text-justify:distribute;layout-grid-mode:char">
					<span lang=ZH-TW style='font-size:12.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.6pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 上述車輛的過戶/重新登記/續領牌照/取消車輛登記手續已經完成。</span></p>
			</td>
		</tr>

		<tr>
			<td style="vertical-align: top; height: 10px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<tr>
			<td style="vertical-align: top; text-align: justify;" colspan=2><p class=MsoNormal style='text-align:justify;text-justify:distribute;layout-grid-mode:char;line-height: 130%;'>
				<span lang=ZH-TW style='font-size:12.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.6pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 環境保護署(環保署)正推行鼓勵與管制並行計劃(下稱"計劃")，分階段淘汰歐盟四期的柴油商業車輛(包括貨車、小型巴士和非專利巴士)。為鼓勵提早淘汰歐盟四期柴油商業車輛，環保署已於2020年10月19日推出特惠資助計劃，歐盟四期的柴油商業車輛會以其首次登記日期作分類，有關分類詳情請參閱表一<b><sup style='font-size:8pt'>註</sup></b>。合資格的車主須先將其車輛交由特惠資助計劃下的登記拆車商拆毀，並往本署取消車輛登記後，便可申領特惠資助。</span></p></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 80px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
	</table>

	<table style="width: 100%; border-spacing: 0px;">
		<tr>
			<td style="text-align: center;" class="STYLE2"><span class="STYLE9">牌照事務組</span></td>
		</tr>
		<tr>
			<td style="text-align: center;" class="STYLE11"><span class="STYLE9">Licensing Section</span></td>
		</tr>
		<tr>
			<td style="text-align: center;" class="STYLE2"><span class="STYLE9">香港金鐘道九十五號統一中心三樓</span></td>
		</tr>
		<tr>
			<td style="text-align: center;" class="style11"><span class="STYLE9">3rd Floor&nbsp;&nbsp;United Centre&nbsp;&nbsp;95 Queensway&nbsp;&nbsp;&nbsp;Hong Kong</span></td>
		</tr>
		<tr>
			<td style="text-align: center;" class="style11"><span class="STYLE9">網址 Web Site: http://www.td.gov.hk</span></td>
		</tr>
	</table>

	<p style="page-break-after:always">&nbsp;</p>
	<p style="height: 30px;">&nbsp;</p>

	<table style="border-spacing: 0px; margin: 0 auto; width: 565px;">
		<tr>
			<td colspan="3" style="text-align: center; padding: 8px; border: 1px solid;">表一 : 計劃下歐盟四期柴油商業車輛的首次登記日期</td>
		</tr>
		<tr>
			<td style="width: 24%; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">柴油商業車輛</span></td>
			<td style="width: 30%; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">許可車輛總重</span></td>
			<td style="width: 46%; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">首次登記日期</span></td>
		</tr>
		<tr>
			<td rowspan="3" style="width: 23%; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">貨車</span></td>
			<td style="width: 30%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">不超過1.7公噸</span></td>
			<td style="width: 46%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">2006年1月1日至2012年12月30日</span></td>
		</tr>
		<tr>
			<td style="width: 30%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">超過1.7但不超過3.5公噸</span></td>
			<td style="width: 46%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">2007年1月1日至2012年12月30日</span></td>
		</tr>
		<tr>
			<td style="width: 30%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">超過3.5公噸</span></td>
			<td style="width: 46%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">2006年10月1日至2012年5月31日</span></td>
		</tr>
		<tr>
			<td rowspan="3" style="width: 24%; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">小型巴士</span></td>
			<td style="width: 30%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">不超過1.7公噸</span></td>
			<td style="width: 46%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">2006年1月1日至2012年5月31日</span></td>
		</tr>
		<tr>
			<td style="width: 30%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">超過1.7但不超過3.5公噸</span></td>
			<td style="width: 46%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">2007年1月1日至2012年5月31日</span></td>
		</tr>
		<tr>
			<td style="width: 30%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">超過3.5公噸</span></td>
			<td style="width: 46%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">2006年10月1日至2012年5月31日</span></td>
		</tr>
		<tr>
			<td style="width: 24%; padding: 8px; border: 1px solid;" class="STYLE12"><span class="STYLE12">非專利巴士</span></td>
			<td style="width: 30%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">超過3.5公噸</span></td>
			<td style="width: 46%; padding: 8px; border: 1px solid;" class="style9"><span class="style9">2006年10月1日至2012年5月31日</span></td>
		</tr>
	</table>

	<table style="border-spacing: 0px;">
		<tr>
			<td style="vertical-align: top; height: 10px;">&nbsp;</td>
		</tr>
	</table>

	<table style="border-spacing: 0px; margin: 0 auto; width: 565px;">
		<tr>
			<td style="vertical-align: top; height: 10px; text-align: justify;" colspan=2><p class=MsoNormal style='text-align:justify;text-justify:distribute;layout-grid-mode:char;line-height: 130%;'>
				<span lang=ZH-TW style='font-size:12.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.6pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 根據記錄，上述車輛的首次登記日期屬於表一的有關首次登記日期範圍內，並在2020年1月1日已登記為一輛柴油商業車輛或已申請重新登記為一輛柴油商業車輛，而你是上述車輛的登記車主，因此現特通知計劃的推行。</span></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 10px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 10px; text-align: justify;" colspan=2><p class=MsoNormal style='text-align:justify;text-justify:distribute;layout-grid-mode:char'>
				<span lang=ZH-TW style='font-size:12.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.6pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在計劃下，歐盟四期柴油商業車輛的取消車輛登記期限如下:</span></p></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 30px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
	</table>

	<table style="border-spacing: 0px; margin: 0 auto; width: 565px;">
		<tr>
				<td colspan="8" style="text-align: center; padding: 5px; border: 1px solid;">表二 : 歐盟四期柴油商業車輛的取消車輛登記期限</td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 30px; width: 19.5%; text-align: center; padding: 5px; border: 1px solid;" class="STYLE2"><span lang=ZH-TW style='font-size:11.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.5pt'>歐盟四期柴油商業車輛的首次登記年份</span></td>
			<td style="vertical-align: top; height: 30px; width: 11.5%; text-align: center; padding: 5px; border: 1px solid;" class="STYLE2"><span lang=ZH-TW style='font-size:11.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.5pt'>2006<br>年</span></td>
			<td style="vertical-align: top; height: 30px; width: 11.5%; text-align: center; padding: 5px; border: 1px solid;" class="STYLE2"><span lang=ZH-TW style='font-size:11.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.5pt'>2007<br>年</span></td>
			<td style="vertical-align: top; height: 30px; width: 11.5%; text-align: center; padding: 5px; border: 1px solid;" class="STYLE2"><span lang=ZH-TW style='font-size:11.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.5pt'>2008<br>年</span></td>
			<td style="vertical-align: top; height: 30px; width: 11.5%; text-align: center; padding: 5px; border: 1px solid;" class="STYLE2"><span lang=ZH-TW style='font-size:11.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.5pt'>2009<br>年</span></td>
			<td style="vertical-align: top; height: 30px; width: 11.5%; text-align: center; padding: 5px; border: 1px solid;" class="STYLE2"><span lang=ZH-TW style='font-size:11.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.5pt'>2010<br>年</span></td>
			<td style="vertical-align: top; height: 30px; width: 11.5%; text-align: center; padding: 5px; border: 1px solid;" class="STYLE2"><span lang=ZH-TW style='font-size:11.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.5pt'>2011<br>年</span></td>
			<td style="vertical-align: top; height: 30px; width: 11.5%; text-align: center; padding: 5px; border: 1px solid;" class="STYLE2"><span lang=ZH-TW style='font-size:11.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.5pt'>2012<br>年</span></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 40px; width: 19.5%; text-align: center; padding: 5px; border: 1px solid;" class="style2"><span lang=ZH-TW style='font-size:11.0pt;font-family:MingLiU_HKSCS;letter-spacing:1pt'>取消車輛登記期限</span></td>
			<td style="vertical-align: top; height: 40px; width: 11.5%; text-align: center; padding: 5px; border: 1px solid;" class="style2"><span lang=ZH-TW style='font-size:11.0pt;font-family:MingLiU_HKSCS;letter-spacing:1pt'>2021年<br>12月<br>31日 </span></td>
			<!-- update by Justin wong for ER-2022-022 begin -->
			<td style="vertical-align: top; height: 40px; width: 11.5%; text-align: center; padding: 5px; border: 1px solid;" class="style2"><span lang=ZH-TW style='font-size:11.0pt;font-family:MingLiU_HKSCS;letter-spacing:1pt'>2023年<br>12月<br>31日<sup style='font-size:8pt'>#</sup> </span></td>
			<!-- update by Justin wong for ER-2022-022 end -->
			<!-- update by Ken Wu for CR-2023-003 begin -->
			<td style="vertical-align: top; height: 40px; width: 11.5%; text-align: center; padding: 5px; border: 1px solid;" class="style2"><span lang=ZH-TW style='font-size:11.0pt;font-family:MingLiU_HKSCS;letter-spacing:1pt'>2024年<br>12月<br>31日<sup style='font-size:8pt'>#</sup> </span></td>
			<!-- update by Ken Wu for CR-2023-003 end -->
			<td style="vertical-align: top; height: 40px; width: 11.5%; text-align: center; padding: 5px; border: 1px solid;" class="style2"><span lang=ZH-TW style='font-size:11.0pt;font-family:MingLiU_HKSCS;letter-spacing:1pt'>2024年<br>12月<br>31日</span></td>
			<td style="vertical-align: top; height: 40px; width: 11.5%; text-align: center; padding: 5px; border: 1px solid;" class="style2"><span lang=ZH-TW style='font-size:11.0pt;font-family:MingLiU_HKSCS;letter-spacing:1pt'>2025年<br>12月<br>31日</span></td>
			<td style="vertical-align: top; height: 40px; width: 11.5%; text-align: center; padding: 5px; border: 1px solid;" class="style2"><span lang=ZH-TW style='font-size:11.0pt;font-family:MingLiU_HKSCS;letter-spacing:1pt'>2026年<br>12月<br>31日</span></td>
			<td style="vertical-align: top; height: 40px; width: 11.5%; text-align: center; padding: 5px; border: 1px solid;" class="style2"><span lang=ZH-TW style='font-size:11.0pt;font-family:MingLiU_HKSCS;letter-spacing:1pt'>2027年<br>12月<br>31日</span></td>

		</tr>
	</table>
	<!-- add by Justin wong for ER-2022-022 begin -->
	<table style="border-spacing: 0px; margin: 0 auto; width: 565px;">
		<tr>
			<td style="vertical-align: top; height: 10px; text-align: justify;" colspan=2><p class=MsoNormal style='text-align:justify;text-justify:distribute;layout-grid-mode:char;line-height: 130%;'>
			<!-- update by Ken Wu for CR-2023-003 begin -->
					<span lang=ZH-TW style='font-size:12.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.6pt'><sup style='font-size:8pt'>#</sup> 環境保護署已公布2007年及2008年首次登記的歐盟四期柴油商業車輛申領特惠資助的截止日期分別延至2023年12月31日及2024年12月31日。
					</span></p>
			<!-- update by Ken Wu for CR-2023-003 end -->
			</td>
		</tr>
	</table>
	<!-- add by Justin wong for ER-2022-022 end -->

	<table style="border-spacing: 0px; margin: 0 auto; width: 565px;">
		<tr>
			<td style="vertical-align: top; height: 30px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<tr>
		    <!-- update by Justin wong for ER-2022-022 begin -->
			<td style="vertical-align: top; height: 10px; text-align: justify;" colspan=2><p class=MsoNormal style='text-align:justify;text-justify:distribute;layout-grid-mode:char;line-height: 130%;'>
				<span lang=ZH-TW style='font-size:12.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.6pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				在2010年首次登記的歐盟四期柴油商業車輛的取消車輛登記期限即將接近，<b>該類歐盟四期柴油商業車輛的車主應盡早計劃及安排所需事項。<u>車主須在上述期限或之前完成辦理取消其歐盟四期柴油商業車輛的登記的手續<sup style="font-size:8pt">註</sup>，並於取消車輛登記後三個月內向運輸署提交特惠資助申請。</u></b></span></p>
			</td>
			<!-- update by Justin wong for ER-2022-022 end -->
		</tr>
		<tr>
			<td style="vertical-align: top; height: 20px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 10px; text-align: justify;" colspan=2><p class=MsoNormal style='text-align:justify;text-justify:distribute;layout-grid-mode:char;line-height: 130%;'>
				<span lang=ZH-TW style='font-size:12.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.6pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 如欲申領特惠資助，請你在拆毀車輛前，先了解有關特惠資助計劃的詳細內容，包括申請資格，最新的登記拆車商名單和其他申請詳情。這些資料已上載至環保署網頁: www.epd.gov.hk，你亦可致電2651 1100或電郵至EU4dcv@epd.gov.hk查詢。</span></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 140px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 10px; text-align: justify;" colspan=2><p class=MsoNormal style='text-align:justify;text-justify:distribute;layout-grid-mode:char;line-height: 130%;'>
				<span lang=ZH-TW style='font-size:12.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.6pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 此外，根據《空氣污染管制(空氣污染物排放)(受管制車輛)規例》(第311X章)，歐盟四期的柴油商業車輛除非能符合在申請牌照當日適用於作首次登記車輛的排放標準，否則本署會在相關取消車輛登記期限後停止向有關車輛發出(包括續領)車輛牌照。</span></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 10px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<!--
		<tr>
			<td style="vertical-align: top; height: 70px;">&nbsp;</td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 10px;">&nbsp;</td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 80px;">&nbsp;</td>
		</tr>
		 -->
		<tr>
			<td style="vertical-align: top; height: 10px; text-align: justify;" colspan=2><p class=MsoNormal style='text-align:justify;text-justify:distribute;layout-grid-mode:char;'>
				<span lang=ZH-TW style='font-size:12.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.1pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如有查詢，請致電2804 2600或電郵至licensing@td.gov.hk。</span></p></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 80px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 20px; text-align: right;" colspan="2"><span lang=ZH-TW style='font-size:12.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.3pt'>運輸署<br>牌照事務組</span><br><span lang=ZH-TW style='font-size:12.0pt;font-family:MingLiU_HKSCS;letter-spacing:1.6pt'><fmt:formatDate value="${frtLetterValue.printDate}" pattern="yyyy"/><span class="style2">年</span><fmt:formatDate value="${frtLetterValue.printDate}" pattern="M"/><span class="style2">月</span><fmt:formatDate value="${frtLetterValue.printDate}" pattern="d"/><span class="style2">日</span></span></td>
		</tr>
		<tr>
			<td style="vertical-align: top; height: 30px;">&nbsp;</td>
			<td style="display: none;"></td>
		</tr>
		<tr>
			<td style="vertical-align: top;" class="STYLE2">
				<p class="STYLE9" style="text-align: justify;"><b><sup>註</sup>:</b> 表一的指明期間內作首次登記，但在首次登記當日已符合歐盟五期排放標準的柴油商業車輛，會在計劃下被視為「豁除車輛」而可以免被淘汰。有意在取消車輛登記期限後申請牌照的「豁除車輛」車主必須向環保署提交其車輛實際排放標準的證明文件(如車廠文件)並獲環保署核實。「豁除車輛」的車主亦可選擇在表二載列的期限內根據計劃要求拆毀其車輛及取消車輛登記，以申請特惠資助。</p></td>
			<td style="display: none;"></td>
		</tr>
	</table>
</body>
</html>