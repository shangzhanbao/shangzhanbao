<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/baseHead.jsp"%>
<!DOCTYPE>
<html>
<head>
<title>支付成功</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<style>
/*支付成功*/
.es {
	width: 80%;
	height: 100%;
	margin: 0 auto;
}

.div9 {
	width: 100%;
	height: 40px;
}

.div9 img {
	width: 33px;
	height: 33px;
	float: left;
}

.div9 div {
	font-weight: 700;
	font-size: 16px;
	color: rgb(102, 102, 102);
	float: left;
	line-height: 35px;
	margin-left: 3%;
}

.div10 {
	clear: left;
	font-weight: 400;
	font-size: 14px;
	line-height: 20px;
	color: rgb(102, 102, 102);
	margin-top: 2%;
}

.div11 {
	margin-top: 3%;
}

..div11 span {
	background-color: #DD3434;
	width: 200px;
	height: 40px;
	text-align: center;
	line-height: 40px;
	display: block;
	font-weight: 700;
	font-size: 14px;
	color: rgb(255, 255, 255);
	-webkit-border-radius: 8px;
	-moz-border-radius: 8px;
	border-radius: 8px;
	cursor: pointer;
}

.div11 span:hover {
	background-color:#F24646;
	width: 200px;
	height: 40px;
}
</style>
</head>
<body >
<!--支付成功-->
<div  style="height: 60px;width: 100%"></div>
	<div class="success es">
		<div class="container clearfix " style="width: 100%">
	   <div class="div9">
	     <img src="../../../../../../images/mini/purchase/goumai/u0.png" /><div>支付成功</div>
	   </div>
	   <div class="div10">
	   <div>.您所购买的服务已经付款成功，我们将马上为您开通！</div>
		</div>
		<div class="div11">
		 <span><a href="javascript:window.opener=null;window.close();" style="color: white;text-decoration: none;">关闭此页面</a></span>
		</div>
		</div>
	</div> 
	<%
		String out_trade_no = request.getParameter("out_trade_no"); 
		String trade_status = request.getParameter("trade_status"); 
		out.println("<input type='hidden' id='out_trade_no' value='"+out_trade_no+"'>");
		out.println("<input type='hidden' id='trade_status' value='"+trade_status+"'>");
	 %>
	
</body>
<script type="text/javascript">
function ini(){
	var url = root + "/order_manager/key/paySuccessWithOrderChangeState?conSumerOrderData.orderCode="
			+document.getElementById("out_trade_no").value+"&conSumerOrderData.state=1";
	$.ajax({
		type : 'POST',
		url : url,
		dataType : "text",
		success : function(data) {
 		}
	});
}
</script>
</html>
