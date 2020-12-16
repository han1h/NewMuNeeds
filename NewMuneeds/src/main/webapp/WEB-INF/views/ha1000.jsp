<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div{
		display: block;
	}
	body.doz_sys {
    -webkit-tap-highlight-color: rgba(201, 224, 253, 0.3);
    -webkit-overflow-scrolling: touch;
	}
	.doz_sys {
	    font-family: 'Noto Sans Korean','Apple SD Gothic Neo', 'Malgun Gothic','Nanum Gothic', 'Noto Sans','sans-serif';
	    color: #3d3d3d;
	    font-size: 18px;
	    line-height: 1.6;
	    letter-spacing: 1px;
	    font-weight: normal;
	    font-style: normal;
	    text-decoration: N;
	    background-color: rgba(255,255,255,1);
	    -webkit-font-smoothing: antialiased;
	    -moz-osx-font-smoothing: grayscale;
	}
	body {
	    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
	    font-size: 14px;
	    line-height: 1.42857143;
	    color: #333;
	    background-color: #fff;
	}
	html {
	    font-size: 10px;
	    -webkit-tap-highlight-color: rgba(0,0,0,0);
	}
	html {
	    font-family: sans-serif;
	    -webkit-text-size-adjust: 100%;
	    -ms-text-size-adjust: 100%;
	}
	div[doz_type="section"]:after, div[doz_type="section"]:before, div[data-type="section-wrap"]:after, div[data-type="section-wrap"]:before {
	    clear: both;
	    content: '';
	    display: table;
	}
	*:before, *:after {
	    -webkit-box-sizing: border-box;
	    -moz-box-sizing: border-box;
	    box-sizing: border-box;
	}
	div[doz_type="section"]:after, div[doz_type="section"]:before, div[data-type="section-wrap"]:after, div[data-type="section-wrap"]:before {
	    clear: both;
	    content: '';
	    display: table;
	}
	*:before, *:after {
	    -webkit-box-sizing: border-box;
	    -moz-box-sizing: border-box;
	    box-sizing: border-box;
	}
	*::selection {
	    background-color: #6cd1e3;
	    color: #fff;
	}
	
	#s20200622fe7de1de49ac0.side_basic main .inside, #s20200622fe7de1de49ac0 .site_prod_nav_wrap.scroll-to-fixed-fixed ul.site_prod_nav, .doz_sys #s20200622fe7de1de49ac0 .col-dz-12 .extend_thumbs {
	    max-width: 1280px;
	}

	.doz_sys .inside {
 	   margin: 0 auto;
    	position: relative;
	}
	
	.doz_sys .inside {
	    max-width: 1280px;
	    padding-left: 15px;
	    padding-right: 15px;
	}
	
	.doz_sys .inside .doz_row {
	    margin-left: -15px;
	    margin-right: -15px;
	}
	.doz_sys .inside .doz_row {
	    margin-left: -15px;
	    margin-right: -15px;
	}
	.doz_sys .doz_row {
	    margin-left: 0;
	    margin-right: 0;
	}
	div[doz_type="row"] {
	    position: relative;
	}
	.doz_sys .widget.line, .doz_sys .widget.padding {
	    margin-top: 15px;
	    margin-bottom: 15px;
	}
	.doz_sys .doz_row:before, .doz_sys .doz_row:after {
	    content: '';
	    display: block;
	}
	div[doz_type="row"]:before, div[doz_type="row"]:after {
	    display: block;
	    content: " ";
	    clear: both;
	}
	*:before, *:after {
	    -webkit-box-sizing: border-box;
	    -moz-box-sizing: border-box;
	    box-sizing: border-box;
	}
	.doz_sys .doz_row:after {
	    clear: both;
	}
	.col-dz-1, .col-dz-2, .col-dz-3, .col-dz-4, .col-dz-5, .col-dz-6, .col-dz-7, .col-dz-8, .col-dz-9, .col-dz-10, .col-dz-11, .col-dz-12 {
	    float: left;
	}
	.doz_sys .inside .col-dz, .col-dz-12 .extend_thumbs {
	    padding-left: 15px;
	    padding-right: 15px;
	}
	.doz_sys .col-dz-12 {
	    width: 100%;
	}
	
	.doz_sys div[doz_type="widget"] {
	    font-size: 18px;
	}
	
	.doz_sys .inside .col-dz, .col-dz-12 .extend_thumbs {
	    padding-left: 15px;
	    padding-right: 15px;
	}
	.doz_sys .col-dz-12 {
	    width: 100%;
	}
	ul {
	    display: block;
	    list-style-type: disc;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    padding-inline-start: 40px;
	}
	ul, ol {
	    margin-top: 0;
	    margin-bottom: 10px;
	}
	.shop-content ul.sub_depth {
	    list-style: none;
	    padding: 14px 0 0;
	}
	.sub_depth {
	    margin-bottom: 0;
	}
	
	.shop_sub_depth[style^="display: block"] ~ .goods_wrapper {
	    padding-top: 14px;
	}
	.row {
	    margin-right: -15px;
	    margin-left: -15px;
	}
	@media (min-width: 992px)
	.col-md-6 {
	    width: 50%;
	}
	@media (min-width: 992px)
	.col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
	    float: left;
	}
	@media (min-width: 768px)
	.col-sm-12 {
	    width: 100%;
	}
	@media (min-width: 768px)
	.col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12 {
	    float: left;
	}
	.col-xs-12 {
	    width: 100%;
	}
	.col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
	    float: left;
	}
	.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
	    position: relative;
	    min-height: 1px;
	    padding-right: 15px;
	    padding-left: 15px;
	}
	
	#prod_image_list .prod-owl-list {
	    opacity: 1;
	    transition: 0.3s opacity, 0.3s visibility;
	}
	.owl-carousel.owl-loaded {
	    display: block;
	}
	.owl-carousel {
	    -ms-touch-action: pan-y;
	    touch-action: pan-y;
	}
	.owl-carousel {
	    display: none;
	    width: 100%;
	    -webkit-tap-highlight-color: transparent;
	    position: relative;
	    z-index: 1;
	}
	
	.owl-carousel .owl-stage-outer {
	    position: relative;
	    overflow: hidden;
	    -webkit-transform: translate3d(0,0,0);
	}
	
	.owl-carousel .owl-item {
	    position: relative;
	    min-height: 1px;
	    float: left;
	    -webkit-backface-visibility: hidden;
	    -webkit-tap-highlight-color: transparent;
	    -webkit-touch-callout: none;
	    -webkit-user-select: none;
	    -moz-user-select: none;
	    -ms-user-select: none;
	    user-select: none;
	}
	.goods_thumbs .owl-controls {
	    display: none;
	}
	.owl-carousel .owl-controls .owl-nav .owl-prev, .owl-carousel .owl-controls .owl-nav .owl-next, .owl-carousel .owl-controls .owl-dot {
	    cursor: pointer;
	    cursor: hand;
	    -webkit-user-select: none;
	    -khtml-user-select: none;
	    -moz-user-select: none;
	    -ms-user-select: none;
	    user-select: none;
	}
	
	.owl-carousel {
	    display: none;
	    width: 100%;
	    -webkit-tap-highlight-color: transparent;
	    position: relative;
	    z-index: 1;
	}
	.owl-theme .owl-dots .owl-dot {
	    display: inline-block;
	    zoom: 1;
	}
	li {
	    display: list-item;
	    text-align: -webkit-match-parent;
	}
	.shop_goods_img ul li, .thumb_group ul li {
	    float: left;
	    padding-right: 2px;
	}
	.shop_goods_img ul li a, .thumb_group ul li a {
	    background-size: cover !important;
	    width: 60px;
	    height: 60px;
	    display: inline-block;
	}
	.sr-only {
	    border: 0;
	    clip: rect(0,0,0,0);
	    height: 1px;
	    margin: -1px;
	    overflow: hidden;
	    padding: 0;
	    position: absolute;
	    width: 1px;
	}
	.shop_goods_img ul, .thumb_group ul {
	    padding: 10px 0 0 0;
	    list-style: none;
	    margin-bottom: 0;
	}
	
	.shop_goods_img ul li a, .thumb_group ul li a {
	    background-size: cover !important;
	    width: 60px;
	    height: 60px;
	    display: inline-block;
	}
	.doz_sys a {
	    color: #3d3d3d;
	}
	.sr-only {
	    border: 0;
	    clip: rect(0,0,0,0);
	    height: 1px;
	    margin: -1px;
	    overflow: hidden;
	    padding: 0;
	    position: absolute;
	    width: 1px;
	}
	@media (min-width: 992px)
	.col-md-6 {
	    width: 50%;
	}
	@media (min-width: 992px)
	.col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
	    float: left;
	}
	@media (min-width: 768px)
	.col-sm-12 {
	    width: 100%;
	}
	@media (min-width: 768px)
	.col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12 {
	    float: left;
	}
	.goods_form {
	    padding-left: 15%;
	}
	div[data-widget-type="shop_view"] .goods_form > header {
	    border-width: 0 0 1px 0;
	    border-style: solid;
	    margin: 0 0 24px;
	    padding-bottom: 24px;
	    line-height: normal;
	}
	ul.site_prod_nav > li, .text_tab .site_prod_nav_wrap, .prod_detail_badge, .li_table.row_04 .acd_collapse[aria-expanded="true"], .li_table.row_04 .acd_collapse.in, div[data-widget-type="shop_view"] .goods_form > header, .opt_product_area .area_tit:before, .order_quantity_area .area_tit:before, .no_comment_box, .text_tab .site_prod_nav_wrap.scroll-to-fixed-fixed {
	    border-color: rgb(61,61,61);
	    border-color: rgba(61,61,61,0.1);
	}
	.shop_view .goods_form .view_tit {
	    word-break: normal;
	    word-wrap: break-word;
	    margin-bottom: 0.3em;
	}
	.no-margin-top {
	    margin-top: 0 !important;
	}
	.ns-icon {
	    vertical-align: middle;
	    font-size: initial;
	    margin-top: -5px;
	}
	.inline-blocked {
	    display: inline-block;
	}
	.prod_icon.icon_default {
		    background: #fff;
		    color: #000;
		    border: 1px solid #ccc;
		    width: auto;
		    font-weight: normal;
		    font-size: 11px;
		    padding: 2px 10px;
		}
		.ns-icon > div {
		    margin: 0 5px 0 0;
		}
		.prod_icon {
		    padding: 2px 8px;
		    font-family: Helvetica, Arial, Sans-Serif;
		    display: inline-block;
		    text-align: center;
		    color: #fff;
		    font-size: 11px;
		    vertical-align: middle;
		}
		.text-danger {
		    color: #fb4637 !important;
		}
		.text-danger {
		    color: #a94442;
		}
		.review_count_summary_wrap {
		    margin-bottom: 1em;
		    font-size: 14px;
		}
		.review_count_summary_wrap, .list_review_inner .txt_wrap > div.text-14 {
		    font-size: 1em !important;
		}
		.goods_form .pay_detail.full-width {
		    position: relative;
		}
		.goods_form .pay_detail {
		    display: table;
		}
		.full-width {
		    width: 100% !important;
		}
		.table-row {
		    display: table-row;
		}
		.shop_view .pay_number {
 	   		display: table-cell;
    		vertical-align: middle;
		}
		.doz_sys .text-brand, .doz_sys .text-primary, .list-style.blog .write a, .board-head .photo_review.active .clearfix, .shop-content.open .opt-group span.text-brand, .form-select-wrap .dropdown-menu .dropdown-item.selected > a, .form-select-wrap .dropdown-menu .dropdown-item.selected > a span {
		    !important: ;
		    color: #6cd1e3 !important;
		}
		.pay_detail .real_price {
		    vertical-align: middle;
		}
		div[data-widget-type="shop_view"] .goods_form > header {
		    border-width: 0 0 1px 0;
		    border-style: solid;
		    margin: 0 0 24px;
		    padding-bottom: 24px;
		    line-height: normal;
		}
		.pay_detail .comment_num_warp {
		    vertical-align: middle;
		    width: 25px;
		    position: absolute;
		    display: block;
		    right: 15px;
		}
		.pay_detail.full-width .comment_num_warp {
		    top: 50%;
		    -moz-transform: translateY(-50%);
		    -ms-transform: translateY(-50%);
		    -webkit-transform: translateY(-50%);
		    transform: translateY(-50%);
		    right: 0;
		}
		.goods_form .goods_summary {
		    margin-bottom: 24px;
		}
		.doz_sys .body_font_color_70 {
		    color: rgb(61,61,61);
		    color: rgba(61,61,61,0.7);
		}
		p {
		    display: block;
		    margin-block-start: 1em;
		    margin-block-end: 1em;
		    margin-inline-start: 0px;
		    margin-inline-end: 0px;
		}
		.goods_form .goods_summary p {
		    margin: 0;
		}
		div[doz_type="text"].widget em, .visual_section em, .fr-view em {
		    font-style: italic;
		}
		.goods_form .m-btn-group {
		    display: none;
		}
		.goods_form .item_detail {
		    line-height: inherit;
		}
		.margin-bottom-xxl {
		    margin-bottom: 16px !important;
		}
		.vertical-middle {
		    vertical-align: middle;
		}
		.inline-blocked {
		    display: inline-block;
		}
		.shop_view .option_wrap .option_title {
		    margin-right: 5px;
		}
		.text-bold {
		    font-weight: 600 !important;
		}
		.vertical-middle {
		    vertical-align: middle;
		}
		.inline-blocked {
		    display: inline-block;
		}
		Style Attribute {
		    display: block;
		    font-size: 12px;
		}
		.vertical-middle {
		    vertical-align: middle;
		}
		.inline-blocked {
		    display: inline-block;
		}
		.shop_view .option_wrap .option_title {
		    margin-right: 5px;
		}
		.text-bold {
		    font-weight: 600 !important;
		}
		.vertical-middle {
		    vertical-align: middle;
		}
		.inline-blocked {
		    display: inline-block;
		}
		.holder {
		    position: relative;
		}
		.text-gray {
		    color: #757575 !important;
		}
		.goods_form .item_detail {
		    line-height: inherit;
		}
		body.doz_sys {
		    -webkit-tap-highlight-color: rgba(201, 224, 253, 0.3);
		    -webkit-overflow-scrolling: touch;
		}
		
		.shop_view .shop-content .select_wrap > div.inline-blocked {
		    margin-left: 1%;
		    margin-bottom: 0;
		    float: left;
		    position: relative;
		}
		
		.shop_view .form-delivery, #prod_deliv_setting .form-select-wrap {
		    min-width: 130px;
		}
		.form-select-wrap {
		    position: relative;
		}
		.shop_view .item_detail .visit_btn_wrap {
		    margin-left: 1%;
		    float: left;
		}
		.margin-bottom-xxl {
		    margin-bottom: 16px !important;
		}
		.delivery_info {
		    padding: 1em 1.1em !important;
		}
		.tabled {
		    display: table;
		}
		.full-width {
		    width: 100% !important;
		}
		.delivery_info > .tabled > .table-cell:first-child {
		    width: 10px;
		    text-align: left;
		    padding-right: 0.7em;
		}
		
		.vertical-top {
		    vertical-align: top;
		}
		.table-cell {
		    display: table-cell;
		}
		.delivery_ico {
		    font-size: 15px;
		    text-align: center;
		    border-radius: 100%;
		    display: inline-block;
		    padding: 0.57em 0.759em;
		}
		
		.delivery_ico {
		    -webkit-transform: scaleX(-1);
		    transform: scaleX(-1);
		}
		.delivery_ico {
		    font-size: 1em !important;
		    padding: 0.5em 0.709em;
		}
		.delivery_info.disabled .delivery_ico {
		    background: #b4b4b4;
		    color: #fff !important;
		}
		.delivery_info.disabled .delivery_ico {
		    color: #b4b4b4 !important;
		}
		.doz_sys .delivery_ico {
		    background: #6cd1e3;
		    color: #fff !important;
		}
		.far, .fas {
		    font-family: "Font Awesome 5 Free";
		}
		
		.fab, .fad, .fal, .far, .fas {
		    -moz-osx-font-smoothing: grayscale;
		    -webkit-font-smoothing: antialiased;
		    display: inline-block;
		    font-style: normal;
		    font-variant: normal;
		    text-rendering: auto;
		    line-height: 1;
		}
		i {
		    display: inline-block;
		}
		.vertical-top {
		    vertical-align: top;
		}
		.table-cell {
		    display: table-cell;
		}
		.delivery_txt.text-14, .site_prod_nav, .booking_btn_group .btn {
		    font-size: 0.9em !important;
		}
		
		.delivery_txt {
		    margin-top: 0;
		    text-align: left;
		    line-height: 1.5;
		}
		.delivery_info.disabled .delivery_txt .type01, .delivery_txt .type02 {
		    display: none;
		}
		strong {
		    font-weight: 600;
		}
		.delivery_info.delivery_txt .type01, .disabled .delivery_txt .type02 {
		    display: block;
		}
		
		.delivery_info.disabled .delivery_txt .type01, .delivery_txt .type02 {
		    display: none;
		}
		* {
		    -webkit-box-sizing: border-box;
		    -moz-box-sizing: border-box;
		    box-sizing: border-box;
		}
		user agent stylesheet
		div {
		    display: block;
		}
		.delivery_txt.text-14, .site_prod_nav, .booking_btn_group .btn {
		    font-size: 0.9em !important;
		}
		.delivery_txt {
		    margin-top: 0;
		    text-align: left;
		    line-height: 1.5;
		}
		.goods_form .m-btn-group {
		    display: none;
		}
		.text_tab .site_prod_nav_wrap {
		    padding: 0 45px;
		}
		.text_tab .site_prod_nav_wrap {
		    border-width: 0 0 1px 0;
		    border-style: solid;
		    padding-bottom: 20px;
		}
		.site_prod_nav_wrap {
		    margin-bottom: 20px;
		    text-align: center;
		}
		.text_tab .site_prod_nav {
		    border: 0;
		    padding-bottom: 0;
		}
		
		.text_tab .site_prod_nav {
		    display: inline-block;
		    padding-right: 5px;
		}
		.site_prod_nav {
		    display: table;
		    width: 100%;
		    border-collapse: separate;
		    vertical-align: middle;
		    position: relative;
		    border: 0;
		    margin-bottom: 0;
		}
		.site_nav {
		    border-width: 0 0 1px 0;
		    border-style: solid;
		    border-color: rgba(128, 128, 128, 0.2);
		    margin-bottom: 20px;
		    padding: 0;
		}
		.shop-menu ul, .site_nav {
		    list-style: none;
		    padding-left: 0;
		    margin-bottom: 0;
		}
		.delivery_txt.text-14, .site_prod_nav, .booking_btn_group .btn {
		    font-size: 0.9em !important;
		}
		ul.site_prod_nav > li:first-child:not(:last-child):not(.dropdown-toggle) {
		    border-top-right-radius: 0;
		    border-bottom-right-radius: 0;
		}
		
		.text_tab ul.site_prod_nav > li:first-child {
		    border: 0;
		    margin-left: 45px;
		}
		.text_tab .site_prod_nav_wrap ul.site_prod_nav > li {
		    margin: 0;
		}
		.text_tab ul.site_prod_nav > li {
		    display: inline-block;
		    margin: 0 45px;
		    border: 0;
		    width: auto !important;
		}
		ul.site_prod_nav > li:first-child {
		    margin-left: 0;
		    border-width: 1px 1px 1px 1px;
		    width: auto;
		}
		ul.site_prod_nav > li {
		    float: none !important;
		    position: relative;
		    vertical-align: middle;
		    border-width: 1px 1px 1px 0;
		    border-style: solid;
		    text-align: center;
		    width: 33.33%;
		}
		#s20200622fe7de1de49ac0 .text_tab ul.site_prod_nav > li a.active, #s20200622fe7de1de49ac0 .underline_tab ul.site_prod_nav > li a.active {
		    background: none;
		}
		.text_tab .site_prod_nav_wrap ul.site_prod_nav > li a {
		    padding: 15px 45px;
		}
		.text_tab ul.site_prod_nav > li > a.active {
		    color: #3d3d3d;
		}
		ul.site_prod_nav > li a.active, .background_tab ul.site_prod_nav > li a {
		    background-color: rgba(61,61,61,0.03);
		    -ms-filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#07616161,endColorstr=#07616161);
		    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#07616161,endColorstr=#07616161);
		    zoom: 1;
		}
		
		.doz_sys .body_font_color_30 {
		    color: rgb(61,61,61);
		    color: rgba(61,61,61,0.3);
		}
		.doz_sys a {
		    color: #3d3d3d;
		}
		[role="button"] {
		    cursor: pointer;
		}
		ul.site_prod_nav > li:not(:first-child):not(:last-child):not(.dropdown-toggle) {
		    border-radius: 0;
		}
		.text_tab .site_prod_nav_wrap ul.site_prod_nav > li {
		    margin: 0;
		}
		.text_tab ul.site_prod_nav > li {
		    display: inline-block;
		    margin: 0 45px;
		    border: 0;
		    width: auto !important;
		}
		.text_tab .site_prod_nav_wrap ul.site_prod_nav > li a {
		    padding: 15px 45px;
		}
		.text_tab ul.site_prod_nav li a .badge, .text_tab .prod_detail_badge .badge {
		    position: relative;
		    top: -1px;
		    left: 3px;
		}
		
		ul.site_prod_nav li a .badge, .prod_detail_badge .badge {
		    font-family: Arial;
		    letter-spacing: 0;
		    min-width: 15px;
		    min-height: 15px;
		    text-align: center;
		    line-height: 15px;
		    font-size: 10px;
		    padding: 0 .3em;
		}
		ul.site_prod_nav li a .badge, .prod_detail_badge .badge {
		    background-color: rgba(108,209,227,0.2);
		    -ms-filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#33108209227,endColorstr=#33108209227);
		    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#33108209227,endColorstr=#33108209227);
		    zoom: 1;
		    color: #3d3d3d;
		}
		.badge {
		    display: inline-block;
		    min-width: 10px;
		    padding: 3px 7px;
		    font-size: 12px;
		    font-weight: 700;
		    line-height: 1;
		    color: #fff;
		    text-align: center;
		    white-space: nowrap;
		    vertical-align: middle;
		    background-color: #777;
		    border-radius: 10px;
		}
		ul.site_prod_nav > li:last-child:not(:first-child) {
		    border-top-left-radius: 0;
		    border-bottom-left-radius: 0;
		}
		
		.text_tab .site_prod_nav_wrap ul.site_prod_nav > li {
		    margin: 0;
		}
		.text_tab ul.site_prod_nav > li {
		    display: inline-block;
		    margin: 0 45px;
		    border: 0;
		    width: auto !important;
		}
		.text_tab .site_prod_nav_wrap ul.site_prod_nav > li a {
		    padding: 15px 45px;
		}
		.unused_tab_hr {
		    width: 100%;
		    margin-bottom: 20px;
		    border-bottom: 1px solid rgba(33, 33, 33, 0.1);
		}
		.goods_thumbs .owl-carousel .owl-item img {
		    max-width: 100%;
		}
		
		.owl-carousel .owl-item img {
		    transform-style: preserve-3d;
		}
		.owl-carousel .owl-item img {
		    display: block;
		    width: 100%;
		    -webkit-transform-style: preserve-3d;
		}
		.goods_thumbs img {
		    width: 100%;
		}
		img {
		    vertical-align: middle;
		}
</style>
</head>
<body>
	<div class="section_wrap pc_section section_first _section_first moblie_section_first moblic_section_first side_basic" id="s20200622fe7de1de49ac0">
		<div class="section_bg _section_bg _interactive_bg" style="background-size: cover; position: absolute; left: 0; top: 0; right: 0; bottom: 0"></div>
		<div class="section_bg_color _section_bg_color" style="background-color: #ffffff; position: absolute; left: 0; top: 0; right: 0; bottom: 0;" ></div>
		<main>
			<div class="inside">
				<div class="doz_row">
					<div class="col-dz col-dz-12">
						<div id="w20200622fd633489fda07">
							<div class="_widget_data">
								<div class="widget padding" style="margin-top: px; margin-bottom: px;">
									<div id="padding_w20200622fd633489fda07" style="width: 100%; min-height: 1px; height: 46px"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="doz_row">
				<div class="col-dz col-dz-12">
					<div id="w2020062201693159c96a8">
						<div class="widget_data">
							<div class="shop_sub_depth hidden-xs hidden-sm" style="display: block;">
								<ul class="sub_depth">
									<li><a href="home.inc">HOME</a><span class="icon-arrow-right"></span> </li>
									<li><a href="shop.inc" class="cursor_defalut">SHOP</a><span class="icon-arrow-right"></span> </li>
								</ul>
							</div>
							<div class="row goods_wrapper">
								<div class="col-md-6 col-sm-12 col-xs-12 goods_thumbs_wrap">
									<div class="goods_thumbs" id="prod_image_list">
										<div class="holder">
											<div class="owl-carousel prod-owl-list owl-theme owl-loaded">
												<div class="owl-stage-outer">
													<div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1220px;">
														<div class="owl-item active" style="width: 610px; margin-right: 0px;">
															<div class="item _item">
																<img src="https://cdn.imweb.me/thumbnail/20200831/6b3a4df57d94d.png" style="width: 100%"/>
															</div>
														</div>
														
													</div>
												</div>
												<div class="owl-nav">
													<div class="owl-prev" style="display: none;">prev</div>
													<div class="owl-prev" style="display: none;">next</div>
												</div>
												<div class="owl-dots">
													<div class="owl-dot active">
														<span></span>
													</div>
													<div class="owl-dot">
														<span></span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="shop_goods_img">
										<ul class="clearfix">
											<li class="owl-dot" id="btn_owl_1">
												<a style="background: url('https://cdn.imweb.me/thumbnail/20200831/6b3a4df57d94d.png') no-repeat center;">
													<span class="sr-only">상품 이미지</span>
												</a>
											</li>
											<li class="owl-dot" id="btn_owl_1">
												<a style="background: url('https://cdn.imweb.me/thumbnail/20200827/c096c0facf3af.jpg') no-repeat center;">
													<span class="sr-only">상품 이미지</span>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12 goods_form_wrap">
								<div class="goods_form" id="prod_goods_form">
									<header style="margin-top: 0px;">
										<div class="view_tit no-margin-top" style="color: #3d3d3d; font-size: 22px !important;">
											"지니소리2 보청기능 소리증폭기 (HA1000)"
											<div class="ns-icon inline-blocked clearfix">
												<div class="prod_icon inline-blocked clearfix">
													<div class="prod_icon icon_defaul">MD</div>
													<div class="prod_icon icon_default">HOT</div>
												</div>
											</div>
											<div class="review_count_summary_wrap">
											
											</div>
											<div class="holder table-row">
												<span class="text-brand pay_number" style="color: !important; font-size: 20px !important;">
													<span class="real_price">250,000원</span>
												</span>
											</div>
										</div>
									</header>
									<div class="goods_summary body_font_color_70">
										<div class="fr_view">
											<p style="text-align: center;"> 보청기능 / 음성증폭 / 7가지 음색모드</p>
											<p style="text-align: center;">/ TV, 스마트폰 연결 지원 (블루투스 호환)</p>
											<p style="text-align: center;"><br></p>
											<p style="text-align: center;"><em><span style="color: rgb(235,107,86);">저희 어머니께서 비싼 보청기를 껴도 TV소리가 잘 안들리신데요...</span> </em></p>
											<p style="text-align: center;"><em><span style="color: rgb(44,130,201);">TV소리를 너무 크게 키워놓고 시청하시는데 다른 방법이 없을까요?</span> </em></p>
											<p style="text-align: center;">이젠, 걱정하지 마시고 즐거운 TV시청 하세요^^</p>
										</div>
									</div>
									<div class="item_detail">
										<div class="_item_detail_wrap">
											<div class="margin-bottom-xxl">
												<div class="option_wrap" style="display: block; font-size:12px; ">
													<div class="inline-blocked vertical-middle">
														<span class="option_title text-bold">원산지</span>
													</div>
													<div class="inline-blocked vertical-middle">
														<span class="option_data">대한민국</span>
													</div>
												</div>
												<div class="option_wrap" style="display: block; font-size:12px; ">
													<div class="inline-blocked vertical-middle">
														<span class="option_title text-bold">제조사</span>
													</div>
													<div class="inline-blocked vertical-middle">
														<span class="option_data">유위컴</span>
													</div>
												</div>
												<div class="option_wrap" style="display: block; font-size:12px; ">
													<div class="inline-blocked vertical-middle">
														<span class="option_title text-bold">브랜드</span>
													</div>
													<div class="inline-blocked vertical-middle">
														<span class="option_data">지니소리</span>
													</div>
												</div>
												<div class="option_wrap" style="display: block; font-size:12px; ">
													<div class="inline-blocked vertical-middle">
														<span class="option_title text-bold">구매혜택</span>
													</div>
													<div class="inline-blocked vertical-middle">
														<span class="option_data">1,250 포인트 적립예정</span>
													</div>
												</div>
												<div class="option_wrap" style="display: block; font-size:12px; ">
													<div class="inline-blocked vertical-middle">
														<span class="option_title text-bold">주문안내</span>
													</div>
													<div class="inline-blocked vertical-middle">
														<span class="option_data">최소 주문금액 0원</span>
													</div>
												</div>
												<div class="option_wrap" style="display: block; font-size:12px; ">
													<div class="inline-blocked vertical-middle">
														<span class="option_title text-bold">무게</span>
													</div>
													<div class="inline-blocked vertical-middle">
														<span class="option_data">0.5kg</span>
													</div>
												</div>
												<div class="option_wrap" style="display: block; font-size:12px; ">
													<div class="inline-blocked vertical-middle">
														<span class="option_title text-bold">배송 방법</span>
													</div>
													<div class="inline-blocked vertical-middle">
														<span class="option_data">택배</span>
													</div>
												</div>
												<div class="option_wrap" style="display: block; font-size:12px; ">
													<div class="inline-blocked vertical-middle">
														<span class="option_title text-bold">배송비</span>
													</div>
													<div class="inline-blocked vertical-middle">
														<span class="option_data">무료 (100,000원 이상 무료배송) </span>
													</div>
												</div>
												<div class="option_wrap" style="display: block; font-size:12px; ">
													<div class="inline-blocked vertical-middle">
														<span class="option_title text-bold">배송 안내</span>
													</div>
													<div class="inline-blocked vertical-middle">
														<span class="option_data"></span>
													</div>
												</div>
												<div style="font-size: 12px;">
													<div class="inline-blocked vertical-middle">
														<span class="option_title text-bold">최소 구매수량</span>
													</div>
													<div class="inline-blocked vertical-middle">
														<span class="option_data">1</span>
													</div>
												</div>
											</div>
											<div class="margin-bottom-xxl select_wrap  clearfix deliv">
												<div class="inline-blocked form-delivery" style="display: inline-block">
													<div class="form-select-wrap " style="display: none;">
														<select class="countryList" title="countryList">
															<option value="KR">
														</select>
													</div>
												</div>
											</div>
											<div class="delivery_info margin-bottom-xxl disabled">
												<div class="tabled full-width">
													<div class="table-cell vertical-top">
														<div class="table-cell vertical-top">
															<div class="delivery_ico text-brand">
																<i class="fas fa-truck"></i>
															</div>
														</div>
													</div>
													<div class="table-cell vertical-top">
														<div class="text-14 delivery_txt">
															<div class="type01">
																<strong>오늘출발 상품</strong>
																<br/>
																<span class="text-bold text-brand">
																	오늘 14:00까지 결제
																</span>
																시 오늘 바로 발송됩니다.
				
															</div>
															<div class="type02">
																<strong>오늘출발 상품</strong>
																<br/>
																<span class="text-bold text-brand">
																	오늘출발 마감
																</span>
																되었습니다. (평일 14:00까지)
															</div>
														</div>
													</div>
												</div>
											</div>
											<script type="text/javascript">

													$('.btn-popover').popover();
													$('.html-popover').popover({html : true});
													SITE_SHOP_DETAIL.addDelivType('parcel');
													SITE_SHOP_DETAIL.addDelivPayType('price');
										
											</script>
										</div>
									</div>
									<div class="_today_arrival_wrap"></div>
									<div class="m-btn-group text_tab" id="tab_offset">
										<div class="site_prod_nav_wrap _prod_detail_tab_fixed" id="prod_detail_content_tab_mobile">
											<ul class="site_nav site_prod_nav">
												<li class="after_line holder table-cell">
													<a class="_detail  body_font_color_30 active" role="button">상세정보</a>
												</li>
												<li class="after_line holder right_margin table-cell">
													<a href="_review body_font_color_30">구매평 
														<span class="badge _review_count_text">0</span>
													</a>
												</li>
												<li class="table-cell">
													<a class="_qna right_margin body_font_color_30">Q&A </a>
													<span class="badge _qna_count_text">0</span>
												</li>
											</ul>
										</div>
										<div></div>
										<div class="unused_tab_hr" style="display: none"></div>
										<div class="product_body _prod_detail_detail_lazy_load_mobile fr-view" id="prod_detail_content_mobile">
											<blockquote>
												<div style="text-align: center;">
													<strong>기본 패키지 구성품: 본체, 이어폰(스테레오 UW-02), 충전선, 목걸이 줄, 사용설명서 </strong>
												</div>
											</blockquote>
											<hr>
											<p>
												<img class="fr-dib" src="/img/transparency.png" data-original="https://cdn.imweb.me/upload/S2020062271f020f49f470/dfbdd140c94b3.jpg">
											</p>
											<div class="product-notify-wrap ">
												<div class="product-notify-title"> 상품정보 제공고시</div>
												<div class="product-notify-group">
													<div class="product-notify-label table-cell  body_font_color_50">품명 및 모델명</div>
													<div class="product-notify-value table-cell">상품상세 참조</div>
												</div>
												<div class="product-notify-group">
													<div class="product-notify-label table-cell  body_font_color_50">KC 인증 필 유무</div>
													<div class="product-notify-value table-cell">상품상세 참조</div>
												</div>
												<div class="product-notify-group">
													<div class="product-notify-label table-cell  body_font_color_50">정격전압, 소비전력</div>
													<div class="product-notify-value table-cell">상품상세 참조</div>
												</div>
												<div class="product-notify-group">
													<div class="product-notify-label table-cell  body_font_color_50">동일모델의 출시년월</div>
													<div class="product-notify-value table-cell">상품상세 참조</div>
												</div>
												<div class="product-notify-group">
													<div class="product-notify-label table-cell  body_font_color_50">제조자</div>
													<div class="product-notify-value table-cell">상품상세 참조</div>
												</div>
												<div class="product-notify-group">
													<div class="product-notify-label table-cell  body_font_color_50">제조국</div>
													<div class="product-notify-value table-cell">상품상세 참조</div>
												</div>
												<div class="product-notify-group">
													<div class="product-notify-label table-cell  body_font_color_50">크기, 무게</div>
													<div class="product-notify-value table-cell">상품상세 참조</div>
												</div>
												<div class="product-notify-group">
													<div class="product-notify-label table-cell  body_font_color_50">품질보증기준</div>
													<div class="product-notify-value table-cell">상품상세 참조</div>
												</div>
												<div class="product-notify-group">
													<div class="product-notify-label table-cell  body_font_color_50">주요 사양</div>
													<div class="product-notify-value table-cell">상품상세 참조</div>
												</div>
												<div class="product-notify-group">
													<div class="product-notify-label table-cell  body_font_color_50">A/S 책임자와 전화번호</div>
													<div class="product-notify-value table-cell">상품상세 참조</div>
												</div>
											</div>
										</div>
									</div>
									<div class="opt-group">
										<a class="btn_clse">
											<span class="text-default-dark">
												<i class="btl bt-angle-down"></i>
											</span>
											<span class="sr-only">모바일 옵션 숨기기</span>
										</a>
										<div class="goods_select" id="prod_options">
											<div class="row m-margin-bottom-xxl">
												<div class="col-xs-12 col-md-12 margin-bottom-xxxl">
													<div class="option_title text-12 text-bold">
														"본품"
														<span class="option_require">*</span>
													</div>
													<div class="form-select-wrap _form_select_wrap_O202009015f4d11e7b754c">
														<a class="dropdown-toggle">	본품 (필수)</a>
														<div class="dropdown-menu">
															<div class="dropdown-item "></div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="goods_payment" id="prod_selected_options"></div>
										<div class="goods_detail" id="prod_deliv_setting"></div>
									</div>
									<div class="buy_btns holder pc clearfix   ">
										<a class="btn buy bg-brand _btn_buy " style=" margin-left: 0" >구매하기</a>
										<a class="btn cart _btn_cart">장바구니</a>
									</div>
								</div>
							</div>
						</div>
						<div class="categorize review-box">
							<div class="_detail_detail_wrap fr-view" id="fixed_tab">
								<div class="detail_detail_wrap text_tab">
									<a class="prod_detail_detail _prod_detail_tab_target is_target" name="prod_detail_detail" ></a>
									<div class="_prod_detail_tab_fixed site_prod_nav_wrap" style="z-index: auto; position: static; top: auto;">
										<ul class="site_nav site_prod_nav">
											<li class="after_line holder table-cell">
												<a class="_detail  body_font_color_30 active" href="#prod detail review" onclick="SITE_SHOP_DETAIL.scrollPCTab('review'); return false;">구매평
													<span class="badge _review_count_text">0</span>
												</a>
											</li>
										</ul>
									</div>
									<div class="spacer" style="display: none; width: 1250px; height: 56px; float: none;"></div>
									<div class="_prod_detail_detail_lazy_load clearfix shop_view_body" id="review_body">
										<blockquote>
											<div style="text-align: center;">
												<strong>기본 패키지 구성품: 본체, 이어폰(스테레오 UW-02), 충전선, 목걸이 줄, 사용설명서 </strong>
											</div>
										</blockquote>
										<hr>
										<p>
											<img class="fr-dib" src="https://cdn.imweb.me/upload/S2020062271f020f49f470/dfbdd140c94b3.jpg" data-original="https://cdn.imweb.me/upload/S2020062271f020f49f470/dfbdd140c94b3.jpg" style="display: block;"/>
										</p>
										<div class="product-notify-wrap ">
											<div class="product-notify-title"> 상품정보 제공고시</div>
											<div class="product-notify-group tabled full-width">
												<div class="product-notify-label table-cell">품명 및 모델명</div>
												<div class="product-notify-value table-cell">상품상세 참조</div>
											</div>
											<div class="product-notify-group tabled full-width">
												<div class="product-notify-label table-cell">KC 인증 필 유무</div>
												<div class="product-notify-value table-cell">상품상세 참조</div>
											</div>
											<div class="product-notify-group tabled full-width">
												<div class="product-notify-label table-cell">정격전압, 소비전력</div>
												<div class="product-notify-value table-cell">상품상세 참조</div>
											</div>
											<div class="product-notify-group tabled full-width">
												<div class="product-notify-label table-cell">동일모델의 출시년월</div>
												<div class="product-notify-value table-cell">상품상세 참조</div>
											</div>
											<div class="product-notify-group tabled full-width">
												<div class="product-notify-label table-cell">제조자</div>
												<div class="product-notify-value table-cell">상품상세 참조</div>
											</div>
											<div class="product-notify-group tabled full-width">
												<div class="product-notify-label table-cell">제조국</div>
												<div class="product-notify-value table-cell">상품상세 참조</div>
											</div>
											<div class="product-notify-group tabled full-width">
												<div class="product-notify-label table-cell">크기, 무게</div>
												<div class="product-notify-value table-cell">상품상세 참조</div>
											</div>
											<div class="product-notify-group tabled full-width">
												<div class="product-notify-label table-cell">주요 사양</div>
												<div class="product-notify-value table-cell">상품상세 참조</div>
											</div>
											<div class="product-notify-group tabled full-width">
												<div class="product-notify-label table-cell">품질보증기준</div>
												<div class="product-notify-value table-cell">상품상세 참조</div>
											</div>
											<div class="product-notify-group tabled full-width">
												<div class="product-notify-label table-cell">A/S 책임자와 전화번호</div>
												<div class="product-notify-value table-cell">상품상세 참조</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
</body>
</html>