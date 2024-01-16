<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, com.application.model.Agendamento, com.application.model.Barbeiro " %>    


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/index.css">
<link rel="stylesheet" type="text/css" href="css/finalizarHorario.css">
<link rel="stylesheet" type="text/css" href="css/agendarHorario.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Karantina:wght@300&display=swap"
	rel="stylesheet">
<script type="text/javascript" src="js/index.js"></script>
<meta charset="ISO-8859-1">
<title>Tela Principal</title>
</head>
<header>
<nav class="menu">
	<ul class="lista-links">
		<li class="link"><a href="/listarAgendamentos" style="text-decoration:none; color: #fff;">Consultar agendamento</a></li>
		<li class="link"><a href="/agendarHorario" style="text-decoration:none; color: #fff;">Agendar horario</a></li>
		<li class="link"><a href="/listarBarbeiros" style="text-decoration:none; color: #fff;">Barbeiros</a></li>
		<li class="link"><a href="/historicoCaixa" style="text-decoration:none; color: #fff;">Historico de caixa</a></li>
	</ul>
</nav>
</header>
<%Barbeiro barbeiro = (Barbeiro)  session.getAttribute("barbeiro"); %>
<body>
<div class="titulo">
	<h2 class="sub-tit">Bem vindo <%=barbeiro.getNome() %> </h2>
</div>
<div class="conteudo-principal">
	<img src="imagens/logoAnder.png" alt="logoAnder" id="logoAnder">
</div>
</body>
</html>