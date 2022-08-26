<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<style type="text/css">

/* === BASE HEADING === */ 

h1 {
  position: relative;
  padding: 0;
  margin: 0;
  font-family: "Raleway", sans-serif;
  font-weight: 300;
  font-size: 40px;
  color: #080808;
  -webkit-transition: all 0.4s ease 0s;
  -o-transition: all 0.4s ease 0s;
  transition: all 0.4s ease 0s;
}

h1 span {
  display: block;
  font-size: 0.5em;
  line-height: 1.3;
}
h1 em {
  font-style: normal;
  font-weight: 600;
}

/* === HEADING STYLE #1 === */
.one h1 {
  text-align: center;
  text-transform: uppercase;
  padding-bottom: 5px;
}
.one h1:before {
  width: 28px;
  height: 5px;
  display: block;
  content: "";
  position: absolute;
  bottom: 3px;
  left: 50%;
  margin-left: -14px;
  background-color: #b80000;
}
.one h1:after {
  width: 100px;
  height: 1px;
  display: block;
  content: "";
  position: relative;
  margin-top: 25px;
  left: 50%;
  margin-left: -50px;
  background-color: #b80000;
}

/* === HEADING STYLE #2 === */
.two h1 {
  text-transform: capitalize;
}
.two h1:before {
  position: absolute;
  left: 0;
  bottom: 0;
  width: 60px;
  height: 2px;
  content: "";
  background-color: #c50000;
}

.two h1 span {
  font-size: 13px;
  font-weight: 500;
  text-transform: uppercase;
  letter-spacing: 4px;
  line-height: 3em;
  padding-left: 0.25em;
  color: rgba(0, 0, 0, 0.4);
  padding-bottom: 10px;
}
.alt-two h1 {
  text-align:center;
}
.alt-two h1:before {
  left:50%; margin-left:-30px;
}

/* === HEADING STYLE #3 === */
.three h1 {
  font-size: 28px;
  font-weight: 500;
  letter-spacing: 0;
  line-height: 1.5em;
  padding-bottom: 15px;
  position: relative;
}
.three h1:before {
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 5px;
  width: 55px;
  background-color: #111;
}
.three h1:after {
  content: "";
  position: absolute;
  left: 0;
  bottom: 2px;
  height: 1px;
  width: 95%;
  max-width: 255px;
  background-color: #333;
}

/* === HEADING STYLE #4 === */
.four h1 {
  text-align: center;
  padding-bottom: 0.7em;
}
.four h1 span {
  font-weight: 300;
  word-spacing: 3px;
  line-height: 2em;
  padding-bottom: 0.35em;
  color: rgba(0, 0, 0, 0.5);
}
.four h1:before {
  position: absolute;
  left: 0;
  bottom: 0;
  width: 60px;
  height: 1px;
  content: "";
  left: 50%;
  margin-left: -30px;
  background-color: #777;
}

/* === HEADING STYLE #5 === */
.five h1 {
  text-align: center;
  font-size: 22px;
  font-weight: 700; color:#202020;
  text-transform: uppercase;
  word-spacing: 1px; letter-spacing:2px;
}
.five h1 span {
  margin-top: 40px;
  text-transform: none;
  font-size:.75em;
  font-weight: normal;
  font-style: italic; font-family: "Playfair Display","Bookman",serif;
  color:#999; letter-spacing:-0.005em; word-spacing:1px;
  letter-spacing:none;
}
.five h1:before {
  position: absolute;
  left: 0;
  bottom: 38px;
  width: 60px;
  height: 4px;
  content: "";
  left: 50%;
  margin-left: -30px;
  background-color: #dfdfdf;
}

/* STYLE 6
   ----------------------------- */
.six h1 {
  text-align: center;
  color:#222; font-size:30px; font-weight:400;
  text-transform: uppercase;
  word-spacing: 1px; letter-spacing:2px; color:#c50000;
}
.six h1 span {
  line-height:2em; padding-bottom:15px;
  text-transform: none;
  font-size:.7em;
  font-weight: normal;
  font-style: italic; font-family: "Playfair Display","Bookman",serif;
  color:#999; letter-spacing:-0.005em; word-spacing:1px;
  letter-spacing:none;
}
.six h1:after, .six h1:before {
  position: absolute;
  left: 0;
  bottom: 0;
  width: 45px;
  height: 4px;
  content: "";
  right: 45px; 
  margin:auto;
  background-color: #ccc;
}
.six h1:before { 
background-color:#d78b8b;
  left:45px; width:90px;
}

/* Style 7
   ----------------------------- */
.seven h1 {
text-align: center;
    font-size:30px; font-weight:300; color:#222; letter-spacing:1px;
    text-transform: uppercase;

    display: grid;
    grid-template-columns: 1fr max-content 1fr;
    grid-template-rows: 27px 0;
    grid-gap: 20px;
    align-items: center;
}

.seven h1:after,.seven h1:before {
    content: " ";
    display: block;
    border-bottom: 1px solid #c50000;
    border-top: 1px solid #c50000;
    height: 5px;
  background-color:#f8f8f8;
}

/* Style 8
   ----------------------------- */
.eight h1 {
  text-align:center;
 
  text-transform:uppercase;
  font-size:26px; letter-spacing:1px;
  
  display: grid;
  grid-template-columns: 1fr auto 1fr;
  grid-template-rows: 16px 0;
  grid-gap: 22px;
}

.eight h1:after,.eight h1:before {
  content: " ";
  display: block;
  border-bottom: 2px solid #ccc;
  background-color:#f8f8f8;
}


/* Style 9
   ----------------------------- */
.nine h1 {
  text-align:center; font-size:50px; text-transform:uppercase; color:#222; letter-spacing:1px;
  font-family:"Playfair Display", serif; font-weight:400;
}
.nine h1 span {
  margin-top: 5px;
    font-size:15px; color:#444; word-spacing:1px; font-weight:normal; letter-spacing:2px;
    text-transform: uppercase; font-family:"Raleway", sans-serif; font-weight:500;

    display: grid;
    grid-template-columns: 1fr max-content 1fr;
    grid-template-rows: 27px 0;
    grid-gap: 20px;
    align-items: center;
}

.nine h1 span:after,.nine h1 span:before {
    content: " ";
    display: block;
    border-bottom: 1px solid #ccc;
    border-top: 1px solid #ccc;
    height: 5px;
  background-color:#f8f8f8;
}


.ten h1 {
  font-size:34px; font-weight:500; text-transform:uppercase;
}
.ten h1:before {
    background-color: #c50000;
    border-radius: 0.25rem;
    content: '';
    display: block;
    height: 0.25rem;
    width: 42px;
    margin-bottom: 1.25rem;
}


.eleven h1 {
  font-size:30px;text-align:center; line-height:1.5em; padding-bottom:45px; font-family:"Playfair Display", serif; text-transform:uppercase;letter-spacing: 2px; color:#111;
}


.eleven h1:before {
  position: absolute;
  left: 0;
  bottom: 20px;
  width: 60%;
  left:50%; margin-left:-30%;
  height: 1px;
  content: "";
  background-color: #777; z-index: 4;
}
.eleven h1:after {
  position:absolute;
  width:40px; height:40px; left:50%; margin-left:-20px; bottom:0px;
  content: '\00a7'; font-size:30px; line-height:40px; color:#c50000;
  font-weight:400; z-index: 5;
  display:block;
  background-color:#f8f8f8;
}


.twelve h1 {
  font-size:26px; font-weight:700;  letter-spacing:1px; text-transform:uppercase; width:160px; text-align:center; margin:auto; white-space:nowrap; padding-bottom:13px;
}
.twelve h1:before {
    background-color: #c50000;
    content: '';
    display: block;
    height: 3px;
    width: 75px;
    margin-bottom: 5px;
}
.twelve h1:after {
    background-color: #c50000;
    content: '';
    display: block;
  position:absolute; right:0; bottom:0;
    height: 3px;
    width: 75px;
    margin-bottom: 0.25em;
}



.thirteen h1 {
  position:relative; font-size:20px; font-weight:700;  letter-spacing:0px; text-transform:uppercase; width:150px; text-align:center; margin:auto; white-space:nowrap; border:2px solid #222;padding:5px 11px 3px 11px;
}
.thirteen h1:before, .thirteen h1:after {
    background-color: #c50000;
    position:absolute; 
    content: '';
    height: 7px;

    width: 7px; border-radius:50%;
    bottom: 12px;
}
.thirteen h1:before {
   left:-20px;
}
.thirteen h1:after {
   right:-20px;
}
/* ------- Helper Styles -------------*/
*,
*:before,
*:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}
body {
  background: #eee;
}
div {
  position: relative;
  background: #f8f8f8;
  width: 90%;
  max-width: 500px;
  padding: 2em;
  margin: 1.5em auto;
  border: 3px solid rgba(0, 0, 0, 0.08);
}

h1:before,
h1:after {
  background-color: #c50000;
}

</style>
<meta charset="UTF-8">
<title>목록</title>
</head>


<body>
<div class="one">
  <h1><a href="noticeSelectList.do">NoticeList</a></h1>
</div>


</body>
</html>