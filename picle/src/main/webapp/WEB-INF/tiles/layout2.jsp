<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!-- tiles에 대한 taglib 넣어줘야 합니다 -->

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicons -->
<link href="resources/img/favicon.png" rel="icon">
<link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
   href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700|Open+Sans:300,300i,400,400i,700,700i"
   rel="stylesheet">

<title><tiles:insertAttribute name="title" /></title>
<style>
p {
   margin: 0px;
   display: inline-block;
   font-size: 15px;
   font-weight: bold;
}

.container-wrapper{
	margin-top : 120px;
}

.container-d {
  width: 100%;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
}

@media (min-width: 576px) {
  .container-d {
    max-width: 540px;
  }
}

@media (min-width: 768px) {
  .container-d {
    max-width: 720px;
  }
}


.container-wrapper.container-d {
  width: 100%;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
}

/*--------------------------------------------------------------
# Header
--------------------------------------------------------------*/
#header {
   padding: 30px 0;
   height: 30px;
   position: fixed;
   left: 0;
   top: 0;
   right: 0;
   transition: all 0.5s;
   z-index: 997;
}

#header #logo {
   float: left;
}

#header #logo h1 {
   font-size: 36px;
   margin: -4px 0 0 0;
   padding: 0;
   line-height: 1;
   display: inline-block;
   font-family: "Montserrat", sans-serif;
   font-weight: 300;
   letter-spacing: 3px;
   text-transform: uppercase;
}

#header #logo h1 a, #header #logo h1 a:hover {
   color: #fff;
}

#header #logo img {
   padding: 0;
   margin: 0;
}

div#logo {
   margin-left: 208px;
}

#header.header-fixed {
   background: linear-gradient(45deg, #8AAC80, #8AAC80);
   padding: 20px 0;
   height: 72px;
   transition: all 0.5s;
}

/*--------------------------------------------------------------
# Navigation Menu
--------------------------------------------------------------*/

/* Nav Menu Essentials */
.nav-menu, .nav-menu * {
   margin: 0;
   padding: 0;
   list-style: none;
}

.nav-menu ul {
   position: absolute;
   display: none;
   top: 100%;
   left: 0;
   z-index: 99;
}

.nav-menu li {
   position: relative;
   white-space: nowrap;
}

.nav-menu>li {
   float: left;
}

.nav-menu li:hover>ul, .nav-menu li.sfHover>ul {
   display: block;
}

.nav-menu ul ul {
   top: 0;
   left: 100%;
}

.nav-menu ul li {
   min-width: 180px;
}

/* Nav Menu Arrows */
.sf-arrows .sf-with-ul {
   padding-right: 30px;
}

.sf-arrows .sf-with-ul:after {
   content: "\f107";
   position: absolute;
   right: 15px;
   font-family: FontAwesome;
   font-style: normal;
   font-weight: normal;
}

.sf-arrows ul .sf-with-ul:after {
   content: "\f105";
}

/* Nav Meu Container */
#nav-menu-container {
   float: right;
   margin: 0;
}

/* Nav Meu Styling */
.nav-menu a {
   padding: 0 8px 10px 8px;
   text-decoration: none;
   display: inline-block;
   color: #fff;
   font-family: "Montserrat", sans-serif;
   font-weight: 400;
   font-size: 14px;
   outline: none;
}

.nav-menu>li {
   margin-left: 10px;
}

.nav-menu ul {
   margin: 4px 0 0 0;
   padding: 10px;
   box-shadow: 0px 0px 30px rgba(127, 137, 161, 0.25);
   background: #fff;
}

.nav-menu ul li {
   transition: 0.3s;
}

.nav-menu ul li a {
   padding: 10px;
   color: #333;
   transition: 0.3s;
   display: block;
   font-size: 13px;
   text-transform: none;
}

.nav-menu ul li:hover>a {
   color: #1dc8cd;
}

.nav-menu ul ul {
   margin: 0;
}

ul.nav-menu {
   margin-right: 208px;
}


/*--------------------------------------------------------------
# Footer
--------------------------------------------------------------*/
#footer {
	background: #fff;
	box-shadow: 0px 0px 12px 0px rgba(0, 0, 0, 0.1);
	padding: 30px 0;
	color: #333;
	font-size: 14px;
}

#footer .credits {
	font-size: 13px;
	color: #888;
}

#footer .footer-links a {
	color: #666;
	padding-left: 15px;
}

#footer .footer-links a:first-child {
	padding-left: 0;
}

#footer .footer-links a:hover {
	color: #1dc8cd;
}

.blockquote-footer {
  display: block;
  font-size: 80%;
  color: #6c757d;
}

.blockquote-footer::before {
  content: "\2014 \00A0";
}

.card-footer {
  padding: 0.75rem 1.25rem;
  background-color: rgba(0, 0, 0, 0.03);
  border-top: 1px solid rgba(0, 0, 0, 0.125);
}

.card-footer:last-child {
  border-radius: 0 0 calc(0.25rem - 1px) calc(0.25rem - 1px);
}

.modal-footer {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: end;
  -ms-flex-pack: end;
  justify-content: flex-end;
  padding: 1rem;
  border-top: 1px solid #e9ecef;
}

.modal-footer > :not(:first-child) {
  margin-left: .25rem;
}

.modal-footer > :not(:last-child) {
  margin-right: .25rem;
}

.row {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  margin-right: -15px;
  margin-left: -15px;
}
.form-row {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  margin-right: -5px;
  margin-left: -5px;
}

.form-row > .col,
.form-row > [class*="col-"] {
  padding-right: 5px;
  padding-left: 5px;
}

#footer .credits {
	font-size: 13px;
	color: #888;
}

  .col-lg-6 {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 50%;
    flex: 0 0 50%;
    max-width: 50%;
  }
@media (min-width: 992px) {
  .text-lg-left {
    text-align: left !important;
  }
  .text-lg-right {
    text-align: right !important;
  }
  .text-lg-center {
    text-align: center !important;
  }
}

.text-center {
  text-align: center !important;
}





</style>
</head>





<body>
   <!--tiles.xml 참고  -->
   <tiles:insertAttribute name="menu" />
   <tiles:insertAttribute name="body" />
   <tiles:insertAttribute name="footer" />


</body>
</html>







