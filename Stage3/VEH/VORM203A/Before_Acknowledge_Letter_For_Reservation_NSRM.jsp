<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt"%>
<%@ taglib uri="/WEB-INF/tld/tdcustom.tld" prefix="print"%>
<c:set var="pageValue" value="${requestScope.pageValue}"/>
<c:set var="approvedNSRMs" value="${pageValue.approvedNSRMs}"/>



<html lang="en">
<head>
<title>&nbsp;</title>
<!-- saved from url=(0014)about:internet -->
<meta charset="UTF-8">
<meta name="header" content="">
<meta name="footer" content="">
<meta name="margin-top" content="2">
<meta name="margin-bottom" content="2">
<meta name="margin-left" content="2">
<meta name="margin-right" content="2">
<meta name="duplex" content="2">

<STYLE>
td {
	font-family: "Times New Roman", Times, serif;
	font-size: 12pt;
}

.style1 {font-size: 12pt; font-family:"MingLiU_HKSCS";}
.win10_bold {
	font-family: MingLiu;
	font-weight: bold;
}
</STYLE>

</head>
<body>
<table style="width: 620px; border-spacing: 0px; margin: 0 auto;">
	<tr><td>
	<table style="width: 100%; border-spacing: 1px; margin: 0 auto;">
		<tr style="text-align: left;">
		<td style="padding: 2px;"><img alt="" src="<print:BlankFormPrint imageName='logo.gif'/>" ></td>
		</tr>
	</table>
	</td></tr>
	
	<tr><td>
	<table>
		<tr>
		<td>&nbsp;<br><br></td>
		<td>  </td>
		</tr>
		<tr>
		<td>Tel.: </td>
		<td>2804 2642 </td>
		</tr>
		<tr>
		<td>  </td>
		<td>  </td>
		</tr>
	</table>
	<p></p>
	<p style="text-align: right;"><jsp:useBean id="now" class="hk.gov.valid.util.ValidIVDate" />
	<fmt:formatDate value="${now}" pattern="d MMMMMMMMMM yyyy"/></p>
	<p><span>Dear Sir / Madam,</span></p>
	<p style="text-align: center;"><span><u><b>Reservation of Registration Mark(s) for Auction</b></u></span></p>
	<p style="text-align: justify;">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	This is to acknowledge receipt of your application to reserve the vehicle
	registration mark(s) below for auction.
	&nbsp;You will be informed of the auction date for the registration mark(s) by registered 
	mail in due course. </p>
	<table style="width: 620px;">
	<!-- Begin Reserved Reg Mark List -->
	<tr>
	<td><table style="width: 100%; border-spacing: 0px;">
	<tr>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td style="width: 100%;">
	<table style="width: 100%; border-spacing: 1px; text-align: left;">
		<tr>
		<c:set var="count" value="0"/>
		<c:set var="rowcount" value="0"/>
		<c:forEach var="regmark" items="${approvedNSRMs}">
			<td style="width: 20%;"><c:out value="${regmark}"/></td>
			<c:choose>
				<c:when test="${count < 4}"> 
					<c:set var="count" value="${count + 1}"/> 
				</c:when>
				<c:otherwise>
					<c:set var="count" value="0"/>
					<c:set var="rowcount" value="${rowcount + 1}"/>
					</tr><tr>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${rowcount == 0}"><td>&nbsp;</td></c:if>
		</tr>
	</table>
	</td>
	<td style="width: 65px;">&nbsp;</td>
	</tr>
	</table></td>
	</tr>
	<!-- End Reserved Reg Mark List -->
	</table>
	<p style="text-align: justify;">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Any
	person who has submitted a deposit of $1,000 to the Transport Department to
	reserve a vehicle registration mark for auction should also participate in the
	bidding (including the 1st bid at the opening price of $1,000); otherwise, the registration mark may be sold to other bidder at the
	price of $1,000.&nbsp; If you are successful in bidding for the mark, the actual sum
	payable for the mark will be the auction price less the deposit of $1,000 already paid
	by you. &nbsp;If you are not successful, the deposit will be refunded to you through
	the Treasury by way of a crossed cheque. &nbsp;If the registration mark requested
	remains unsold at the auction, it will be allocated to you at a special fee of
	$1,000 (i.e. the deposit of $1,000 you paid) and can only be assigned to a vehicle
	under your name. &nbsp;There will be no refund under such circumstances.
	</p>
	<p style="text-align: justify;">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please note that withdrawal of the application is not allowed.
	</p>
	<p style="text-align: justify;">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;All the correspondences concerning the application for reserving a registration mark for auction will be sent to the contact address as indicated on the application form. If you would like to change the correspondence address or other contact details, please submit the completed application form (TD640) to Vehicle Registration Marks Unit (Address: 12/F, South Tower, West Kowloon Government Offices, 11 Hoi Ting Road, Yau Ma Tei, Kowloon/ Fax no: 3101 5532) or submit the change request through online service.  You can scan the QR code below for more details at TD's website.  Please note that the correspondence address or contact number provided to this application will not be updated to any of your licence/ permit records in the Transport Department. For enquiries about the auction arrangement, please call our enquiry hotline at 2804 2600.<br><br>
	</p>
	<img style="width: 65px; height: 65px;" alt="" src="<print:BlankFormPrint imageName='res_rm_qr_code_eng.png'/>">
	
	
	<table style="text-align: right;">
	<tr><td>
	<p style="text-align: center;"><span>Yours faithfully,</span><br><br><br><br>
		<!-- amended by Carl on 2009-1-14 for CR-2008-060 begin -->
	(<span><c:out value="${pageValue.issuePrintingCtlValue.commissorNameEng}"/></span>)<br>
		<!-- amended by Carl on 2009-1-14 for CR-2008-060 end -->
	<span>for Commissioner for Transport</span></p>
	</td>
	</tr>
	</table>
	</td></tr>
</table>

<DIV id="first_page" style="PAGE-BREAK-BEFORE: always">&nbsp;</DIV>
<DIV id="page_last" style="PAGE-BREAK-AFTER: auto"></DIV>

<table style="width: 624px; border-spacing: 0px; margin: 0 auto;" lang=ZH-TW>
	<tr><td style="width: 639px;">
	<table style="width: 100%; border-spacing: 1px; margin: 0 auto;">
		<tr style="text-align: left;">
			<td style="padding: 2px;"><img alt="" src="<print:BlankFormPrint imageName='logo.gif'/>" ></td>
		</tr>
	</table>
	</td></tr>
	<tr><td style="width: 639px;">
	<p></p>
	
	<table>
		<tr>
		<td><span class="style1"> 本署電話： 2804 2642</span><br><br><br></td>
		</tr>
	</table>
	</td></tr>
	<tr><td style="width: 639px;">
	<table>
	<tr><td  class="style1">
		<p></p>
		<p>先生 / 女士：<br><br></p>
		<p></p>
		<p style="text-align: center;"><span class="win10_bold"><u>預留車輛登記號碼以作拍賣</u></span></p>
		<p style="text-align: justify;">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		現確認收到你預留以下車輛登記號碼以待拍賣的申請，本署在適當時候會以掛號函件通知你有關的拍賣日期。
		</p>
		<table style="width: 620px;">
		<!-- Begin Reserved Reg Mark List -->
			<tr><td>
			<table style="width: 100%; border-spacing: 0px;">
				<tr>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td style="width: 100%;">
				<table style="width: 100%; border-spacing: 1px;">
					<tr>
					<c:set var="count" value="0"/>
					<c:set var="rowcount" value="0"/>
					<c:forEach var="regmark" items="${approvedNSRMs}">
						<td style="width: 20%;"><c:out value="${regmark}"/></td>
						<c:choose>
							<c:when test="${count < 4}"> 
								<c:set var="count" value="${count + 1}"/> 
							</c:when>
							<c:otherwise>
								<c:set var="count" value="0"/>
								<c:set var="rowcount" value="${rowcount + 1}"/> 
								</tr><tr>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${rowcount == 0}"><td>&nbsp;</td></c:if>
					</tr>
				</table>
				</td>
				<td style="width: 65px;">&nbsp;</td>
				</tr>
			</table>
			</td></tr>
		<!-- End Reserved Reg Mark List -->
		</table>
		<p style="text-align: justify;">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		任何已繳付1,000元按金以保留某車輛登記號碼以待拍賣的申請人，均應出席拍賣會參加競投(包括競投第一口價，其底價為1,000 元)，否則該車輛登記號碼可以底價1,000元售予其他競投人士。若成功投得該車輛登記號碼，你應繳付的實際金額將為拍賣價減去已付的1,000元按金，若未能成功投得該登記號碼，本署將經由庫務署以劃線支票將該1,000元按金發還給你。若該號碼未能在拍賣會上售出，則會以特別費用1,000元(即相當於你所繳付的按金款額)編配給你，而你只能夠將該登記號碼登記於你自己名下的車輛；你所繳付的按金，將不會發還給你。
		</p>
		<blockquote>
		&nbsp;申請被接納後，不得撤回。
		</blockquote>
		<P style="text-align: justify;">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		所有有關預留車輛登記號碼以待拍賣申請的信件，會按照申請人在申請表填報的地址寄出。如申請人需要更改聯絡地址或其他個人資料，可將填妥的申請表（表格TD640）郵寄或傳真至運輸署車輛登記號碼分組 (地址：九龍油麻地海庭道11號西九龍政府合署南座12樓 / 傳真號碼：3101 5532)，或透過網上服務更改資料。你可以掃描以下二維碼瀏覽本署網頁上的相關資料。請注意，此申請所提供的聯絡地址/ 電話不會用作更新運輸署的牌照/ 許可證的記錄之用。如欲查詢有關拍賣的安排，請致電查詢熱線2804 2600。
		</P><br><br>
		<img style="width: 65px; height: 65px;" alt="" src="<print:BlankFormPrint imageName='res_rm_qr_code_chi.png'/>">
		</td></tr>
	</table>
	</td></tr>

	<tr><td style="width: 639px;">
	<table style="margin-left: auto;">
		<tr><td  class="style1">
			<p style="text-align: center;">運輸署署長</p>
			<p style="text-align: center;"><br><br><br>
			(<c:out value="${pageValue.issuePrintingCtlValue.commissorNameChi}"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;代行)
			</p>
		</td></tr>
	</table>
	</td></tr>
	<tr><td>
	</td></tr>
	
	<tr><td><span class="style1">
		<fmt:formatDate value="${now}" pattern="yyyy"/>年<fmt:formatDate value="${now}" pattern="M"/>月<fmt:formatDate value="${now}" pattern="d"/>日
	</span></td></tr>
</table>
</body>

</html>