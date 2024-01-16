<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.util.List, com.application.model.Agendamento, com.application.model.Barbeiro "%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/finalizarHorario.css">
<link rel="stylesheet" type="text/css" href="css/agendarHorario.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Karantina:wght@300&display=swap"
	rel="stylesheet">
<script type="text/javascript" src="js/index.js"></script>
<meta charset="ISO-8859-1">
<title>Finalizar um agendamento</title>
</head>
<body>
	<%
	Barbeiro barbeiro = (Barbeiro) session.getAttribute("barbeiro");
	%>
	<%
	Agendamento agendamento = (Agendamento) request.getAttribute("agendamento");
	%>
	<div class="conteudo-principal-agendar">
		<div class="formulario">
			<form action="/concluirAgendamento" method="post">


				<input class="tituloInput" type="hidden" name="id"
					value="<%=agendamento.getId()%>"
					style="cursor: pointer; border-radius: 6px; border: none; height: 20px; width: 250px; outline: none;">
				<div class="tituloInput">Nome:</div>
				<input class="tituloInput"
					style="cursor: pointer; border-radius: 6px; border: none; height: 20px; width: 250px; outline: none;"
					type="text" name="nomeCliente"
					value="<%=agendamento.getNomeCliente()%>"> <br>
				<br>
				<div class="tituloInput">Telefone:</div>
				<input type="text" name="telefoneCliente"
					style="cursor: pointer; border-radius: 6px; border: none; height: 20px; width: 250px; outline: none;"
					value="<%=agendamento.getTelefoneCliente()%>">

				<div class="div-data">
					<div class="tituloInput">Data:</div>
					<input type="date" required name="data"
						style="cursor: pointer; border-radius: 6px; border: none; height: 20px; width: 250px; outline: none;"
						value="<%=agendamento.getData()%>">
					<div class="tituloInput">Horario:</div>
					<input type="time" required name="horario"
						style="cursor: pointer; border-radius: 6px; border: none; height: 20px; width: 250px; outline: none;"
						value="<%=agendamento.getHorario()%>">
				</div>
				<br>
				<br>


				<div class="tituloInput">Serviço</div>
				<input type="text" name="servico" value="servico"
					style="cursor: pointer; border-radius: 6px; border: none; height: 20px; width: 250px; outline: none;">
				<br>
				<br>



				<div class="tituloInput">Forma de pagamento</div>

				<select id="formaPagamento" name="formaDePagamento"
					style="cursor: pointer; border-radius: 6px; border: none; height: 20px; width: 250px; outline: none;">
					<option value="Pix">Pix</option>
					<option value="Dinheiro">Dinheiro</option>
					<option value="Crédito">Crédito</option>
					<option value="Débito">Débito</option>
				</select> <br>
				<br>



				<div class="tituloInput">Valor cobrado</div>
				<input type="text" name="valorServico" value="valor"
					style="cursor: pointer; border-radius: 6px; border: none; height: 20px; width: 250px; outline: none;">
				<br>
				<br> <input type="submit" value="Confirmar ">

			</form>
		</div>
	</div>
</body>
</html>