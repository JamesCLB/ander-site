<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.util.List, com.application.model.Agendamento, com.application.model.Barbeiro "%> 


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/index.css">
<meta charset="ISO-8859-1">
<title>Tela Principal</title>

</head>
<header>
<%Barbeiro barbeiro = (Barbeiro)  session.getAttribute("barbeiro"); %>
	<nav class="menu">
		<ul class="lista-links">
			<li class="link"><a href="/agendamentosPendentesPorBarbeiro?id=<%=barbeiro.getId()%>">Consultar agendamento</a></li>
			<li class="link"><a href="/agendarHorario">Agendar horario</a></li>
			
		</ul>
	</nav>
</header>

<body>
<div class="titulo">
	<h2 class="sub-tit">Bem vindo <%=barbeiro.getNome() %> </h2>
</div>
<div class="conteudo-principal">
	<img src="imagens/logoAnder.png" alt="logoAnder" id="logoAnder">
</div>
</body>
</html>