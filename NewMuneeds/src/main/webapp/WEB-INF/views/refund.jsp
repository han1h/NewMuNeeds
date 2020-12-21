<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 시 주의 사항</title>
<style type="text/css">

		.detail_title_area {
		    padding: 40px 0 15px;
		    text-align: center;
		}
		body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, textarea, p, blockquote, th, td, input, select, textarea, button {
		    margin: 0;
		    padding: 0;
		    max-height: 100000px;
		}
		body, th, td, input, select, textarea, button, pre {
		    font-size: 13px;
		    line-height: 1.4;
		    font-weight: 400;
		    color: #666;
		    font-family: 'Roboto', 'Notokr Local','Noto Sans KR','Malgun Gothic',sans-serif;
		}
		.goods_thumbs_spec {
		    display: table;
		    width: 100%;
		    table-layout: fixed;
		}
		
		.goods_thumbs_spec #goods_thumbs {
		    display: table-cell;
		    vertical-align: top;
		    padding-bottom: 20px;
		    padding-top: 37px;
		}
		#btn_zoom_view {
		    display: block;
		    position: absolute;
		    left: 10px;
		    bottom: 10px;
		    width: 35px;
		    height: 35px;
		    text-align: center;
		    overflow: hidden;
		    text-indent: -9999px;
		    background-image: url(../images/design/btn_zoom.png);
		    background-position: 50% 50%;
		    background-repeat: no-repeat;
		    background-size: 22px;
		    opacity: 0.6;
		}
		form {
		    display: block;
		    margin-top: 0em;
	        clear: both;
		}
		.sns_wish {
		    padding: 0 0 2px;
		    text-align: right;
		    position: relative;
		}
		dl, ul, ol, menu, li {
		    list-style: none;
		}
		.goods_spec_sections .deatil_price_area {
		    margin: 5px 0 0;
		    padding-bottom: 16px;
		    border-bottom: 1px #d0d0d0 solid;
		}
		.goods_spec_sections>li {
		    padding: 8px 0;
		}
		.goods_spec_sections .deatil_price_area .sale_price {
		    display: inline-block;
		    padding-top: 10px;
		    font-size: 25px;
		    line-height: 1.0em;
		    font-weight: 400;
		}
		.sale_price {
		    color: #333;
		}
		.goods_spec_sections>li {
		    padding: 8px 0;
		}
		.hide {
		    display: none;
		}
		.detail_spec_table {
		    display: table;
		    width: 100%;
		    table-layout: fixed;
		}
		.detail_spec_table>li.th {
		    width: 90px;
		}
		.detail_spec_table>li {
		    display: table-cell;
		    vertical-align: middle;
		}
		li {
		    text-align: -webkit-match-parent;
		}
		.goods_buy_sections {
		    border-top: 1px #bbb solid;
		}
		.goods_buy_open_sections .btn_section_open, .goods_buy_sections .btn_section_close {
		    position: absolute;
		    left: calc( 50% - 30px );
		    top: -20px;
		    display: block;
		    width: 59px;
		    height: 20px;
		    background-position: 50% 0;
		    background-repeat: no-repeat;
		    background-size: 100%;
		    overflow: hidden;
		    text-indent: -999px;
		}
		table {
		    border-spacing: 0;
		    border-collapse: collapse;
		    word-break: break-all;
		}
		.goods_price_area .num_single_area {
		    width: 100px;
		    padding-top: 10px;
		    padding-left: 10px;
		}
		body, th, td, input, select, textarea, button, pre {
		    font-size: 13px;
		    line-height: 1.4;
		    font-weight: 400;
		    color: #666;
		    font-family: 'Roboto', 'Notokr Local','Noto Sans KR','Malgun Gothic',sans-serif;
		}
		.goods_price_area .total_goods_price {
		    text-align: right;
		    padding: 6px 10px 0 2px;
		    font-size: 18px;
		    color: #333;
		    vertical-align: middle;
		}
		.goods_price_area .total_goods_tit {
		    font-size: 17px;
		    margin-right: 4px;
		    color: #333;
		}
		#total_goods_price {
		    display: inline-block;
		    position: relative;
		    bottom: -1px;
		    vertical-align: bottom;
		    font-weight: 500;
		    font-size: 32px;
		    line-height: 1.0em;
		    letter-spacing: -2px;
		}
		.goods_price_area .total_goods_price {
		    text-align: right;
		    padding: 6px 10px 0 2px;
		    font-size: 18px;
		    color: #333;
		    vertical-align: middle;
		}
		.goods_thumbs_spec #goods_spec {
		    display: table-cell;
		    vertical-align: top;
		    padding: 0 0 30px 40px;
		}
		.exchange_guide {
		    padding: 10px 0;
		}
		.goods_information_contents {
		    min-height: 250px;
		    padding-top: 20px;
		}
		#detail_sample_info>.section {
		    padding-bottom: 30px;
		    border-top: 1px #eee solid;
		}
		#detail_sample_info .title1 {
		    font-size: 18px;
		    line-height: 1.3;
		    letter-spacing: -1px;
		    color: #333;
		    padding: 30px 0 10px;
		}
		#layout_body, .resp_wrap {
		    max-width: 1260px;
		    margin: 0 auto;
		    padding-left: 40px;
		    padding-right: 40px;
		}
		.goods_tabs {
		    border-bottom: 1px #888 solid;
		    background: rgba(255, 255, 255, 0.8);
		}
		.goods_tabs .resp_area {
		    max-width: 860px;
		    margin: 0 auto;
		}
		.goods_information_tabs {
		    display: table;
		    width: 100%;
		    table-layout: fixed;
		    text-align: center;
		    margin-bottom: -1px;
		}
		
		.goods_information_tabs>a {
		    display: table-cell;
		    vertical-align: middle;
		    position: relative;
		    height: 42px;
		    font-size: 13px;
		    border: 1px #ddd solid;
		    border-bottom-color: #888;
		    border-right: none;
		    background: #fff;
		    color: #767676;
		}
		img {
		    max-width: 100%;
		    vertical-align: middle;
		    border: none;
		    outline: none;
		}
		.goods_thumbs_spec #goods_spec {
		    display: table-cell;
		    vertical-align: top;
		    padding: 0 0 30px 40px;
		}
		.txc-image {
		    width: auto !important;
		    height: auto !important;
		}
		li {
		    display: list-item;
		    text-align: -webkit-match-parent;
		}
		.goods_spec_sections>li {
		    padding: 8px 0;
		}
		dl, ul, ol, menu, li {
		    list-style: none;
		}
		.btn_resp.color2 {
		    border-color: #434343;
		    background-color: #434343;
		    color: #fff;
		}
		.btn_resp.size_extra2 {
		    height: 62px;
		    font-size: 19px;
		    line-height: 60px;
		    padding: 0 20px;
		}
		.basic_btn_area>li>button {
		    width: 100%;
		}
		.btn_resp {
		    border: 1px #ccc solid;
		    background: #fff;
		    height: 28px;
		    font-size: 12px;
		    line-height: 26px;
		    padding: 0 9px;
		    box-sizing: border-box;
		    text-align: center;
		    color: #333;
		    cursor: pointer;
		    vertical-align: middle;
		    border-radius: 2px;
		    transition: border-color 0.2s, background-color 0.2s;
		}
		button {
		    appearance: button;
		    -webkit-writing-mode: horizontal-tb !important;
		    text-rendering: auto;
		    color: -internal-light-dark(black, white);
		    letter-spacing: normal;
		    word-spacing: normal;
		    text-transform: none;
		    text-indent: 0px;
		    text-shadow: none;
		    display: inline-block;
		    text-align: center;
		    align-items: flex-start;
		    cursor: default;
		    background-color: -internal-light-dark(rgb(239, 239, 239), rgb(59, 59, 59));
		    box-sizing: border-box;
		    margin: 0em;
		    font: 400 13.3333px Arial;
		    padding: 1px 6px;
		    border-width: 2px;
		    border-style: outset;
		    border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
		    border-image: initial;
		    border-radius: 2px;
		}
		
		td {
		    display: table-cell;
		    vertical-align: inherit;
		}
		
		table {
		    border-spacing: 0;
		    border-collapse: collapse;
		    word-break: break-all;
		}
		
		.eaPlus, .btn_add_suboption, .recently_eaPlus, .recently_btn_add_suboption {
		    width: 28px !important;
		    height: 28px !important;
		    border: 1px #bbb solid;
		    background: url("resources/images/더하기.png") 50% 50% no-repeat;
		    box-sizing: border-box;
		    overflow: hidden;
		    text-indent: -100px;
		    vertical-align: middle;
		}
		
		.eaMinus, .btn_del_suboption, .recently_eaMinus, .recently_btn_del_suboption {
		    width: 28px !important;
		    height: 28px !important;
		    border: 1px #bbb solid;
		    background: url("resources/images/빼기.png") 50% 50% no-repeat;
		    box-sizing: border-box;
		    overflow: hidden;
		    text-indent: -100px;
		    vertical-align: middle;
		}
		
		.goods_price_area .num_single_area {
		    width: 100px;
		    padding-top: 10px;
		    padding-left: 10px;
		}
		
		.detail_title_area .name {
		    font-size: 26px;
		    padding-bottom: 12px;
		    line-height: 1.2;
		    font-weight: 700;
		    letter-spacing: -1px;
		    color: #333;
		}
</style>
</head>
<body>
<div class="goods_information_contents exchange_guide hide" style="display: block;">
					<div id="detail_sample_info">
						<div class="section">
							<p class="title1">상품결제정보</p>
							<div class="text1">
								 고액결제의 경우 안전을 위해 카드사에서 확인전화를 드릴 수도 있습니다.
								 <br/>
								 	확인과정에서 도난 카드의 사용이나 타인 명의의 주문등 정상적인 주문이 아니라고 판단될 경우 임의로 주문을 보류 또는 취소할 수 있습니다.
							 	<br>
							 	<br>
								 	무통장 입금은 상품 구매 대금은 PC뱅킹, 인터넷뱅킹, 텔레뱅킹 혹은 가까운 은행에서 직접 입금하시면 됩니다.
								<br>
            						주문시 입력한 입금자명과 실제입금자의 성명이 반드시 일치하여야 하며, 7일 이내로 입금을 하셔야 하며 입금되지 않은 주문은 자동취소 됩니다.
            					<br/>		
							</div>
						</div>
						<div class="section">
							<p class="title1">구입 정보</p>
							<ul class="list1">
								<li>- 배송 방법 : 택배</li>
								<li>- 배송 기간 : 구매 확인 후 24시간 내외(공휴일,주말 제외)</li>
								<li>
									- 고객님께서 주문하신 상품은 입금 확인후 배송해 드립니다.
									<br/>
									다만, 확인시간에 따라서 연락이 다소 늦을 수 있습니다.
									<br/>
								</li>
							</ul>
						</div>
						<div class="section">
							<p class="title1">교환 및 반품정보</p>
							<p class="title2" style="color:#333;">교환 및 반품이 가능한 경우</p>
							<ul class="list1">
								<li>- 실버타운과 계약 구비서류 미제출 시</li>
								<li>- 계약 전(구비서류 미제출 시) 환불 진행 </li>
							</ul>
							<p class="title2" style="color:#333;">교환 및 반품이 불가능한 경우</p>
							<ul class="list1">
								<li>- 실버타운 체험 생활 도중 반품은 불가능 합니다.</li>
								<li>- 실버타운 내<br>(예 : 가전제품, 식품, 음반 등, 단 액정화면이 부착된 노트북, LCD모니터, 디지털 카메라 등의 불량화소에 따른 반품/교환은 제조사 기준에 따릅니다.)</li>
								
								<li>- 고객님의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우 단, 화장품등의 경우 시용제품을 제공한 경우에 한 합니다.</li>
								<li>- 시간의 경과에 의하여 재판매가 곤란할 정도로 상품등의 가치가 현저히 감소한 경우</li>
							</ul>
						</div>
					</div>
					<div>
						<button type="button">결제 하기</button>
					</div>
				</div>
</body>
</html>