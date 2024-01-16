<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, com.application.model.Agendamento, com.application.model.Barbeiro " %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Historico de caixa</title>
<link rel="stylesheet" type="text/css" href="/css/index.css">
<link rel="stylesheet" type="text/css" href="css/agendarHorario.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Karantina:wght@300&display=swap" rel="stylesheet">

<script type="text/javascript" src="js/index.js"></script><meta charset="ISO-8859-1">
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
<body>
<%List<Agendamento> listaAgendamentos = (List<Agendamento>) request.getAttribute("listaAgendamentos"); 
 %>
    <br>
    <div class="titulo">
        <h2 id="sub-tit"> Histórico de Caixa</h2>
    
    </div>
    <br>
    <br>
     <form:form method="post" action="/filtrarHistoricoCaixa">
        <label for="data">Filtrar por Data:</label>
        <input type="date" id="data" name="data" required>
        <input type="submit" value="Filtrar">
    </form:form>

    <table border="1" class="tabela-agendamentos">
        <tr>
            <th>Nome do Barbeiro</th>
            <th>Nome do Cliente</th>
            <th>Telefone</th>
            <th>Data</th>
            <th>Horário</th>
            <th>Valor</th>
            <th>Forma de Pagamento</th>
            <th>Serviço Realizado</th>
            <th>Atualizar</th>
            <th>Finalizar</th>
            <th>Deletar</th>
        </tr>
            <%  if (listaAgendamentos != null) {
				for (Agendamento agendamento : listaAgendamentos) { %>
			<tr class="body-lista-agendamentos">	
				
				<td> <%= agendamento.getBarbeiro().getNome() %></td>
				<td> <%= agendamento.getNomeCliente() %>   </td>
				<td> <%= agendamento.getTelefoneCliente()  %>   </td>
				<td> <%= agendamento.getData() %>   </td>
				<td> <%= agendamento.getHorario()%>   </td>
				<td> <%= agendamento.getValorServico()%>   </td>
				<td> <%= agendamento.getFormaDePagamento()%>   </td>
				<td> <%= agendamento.getServico()%>   </td>
				<td> <a class="icones" href="/atualizarAgendamento?id=<%= agendamento.getId() %>">Atualizar</a></td>
				<td> <a class="icones" href="/finalizarAgendamento?id=<%= agendamento.getId() %>">Finalizar</a></td>
				<td> <a class="icones" href="/deletarAgendamento?id=<%= agendamento.getId() %>">Deletar</a></td>
				
			</tr>
			<% } }%>
    </table>
</body>
</html>