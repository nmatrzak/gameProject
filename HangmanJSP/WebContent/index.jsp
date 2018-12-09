
<%@page import="pl.pw.ii.model.Keyboard"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%-- polskie znaki --%>
<html lang="pl">
<head>
<meta charset="UTF-8">
<title>Wisielec</title>
<meta name='keywords' content="Hangman game">
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>

<div id="kontener">

<div id="obrazek">
<img src="image/szub0.jpg" alt=""/>
</div>
<div id="haslo">
<jsp:useBean id="phrase" class="pl.pw.ii.model.Phrase"></jsp:useBean>
<jsp:setProperty property="phrase" name="phrase"/>
<% out.print(phrase.hidePhrase()); %>
</div>
<div id="klawiatura">
<%! public static int nr=0; %>
<jsp:useBean id="letters" class="pl.pw.ii.model.Keyboard"></jsp:useBean>
<jsp:setProperty property="letters" name="letters"/>
<% 
for(int i = 0; i<35; i++) {
nr=i;
String[] keyboard = {
	"a","ą","b","c","ć","d","e","ę","f","g","h","i","j","k","l","ł","m","n","ń","o","ó","p","q","r","s","ś","t","u","v","w","x","y","z","ź","ż"};%>
<div class="litera" id="<%=nr%>" ><% out.print(keyboard[i]);%></div>
<%} %>

</div>
<div style="clear: both;"></div>
</div>

</body>
</html>