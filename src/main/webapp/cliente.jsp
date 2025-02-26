<!DOCTYPE html>
<%@page import="model.Cliente"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta charset="UTF-8">
<title>Projeto clienteweb</title>

<script>

	function confirma(pi){
		
		if(window.confirm("Tem certeza que deseja excluir?")){
			location.href="cliente?acao=exc&i=" + pi ;
		}
		
	}

</script>

</head>
<body>

	<div>
		<%
		Object msg = request.getAttribute("msg");
		if (msg != null) {
			String msgStr = (String) msg;
			out.print(msgStr);
		}
		
		Cliente cli = (Cliente)request.getAttribute("cli");
		Object iCli = request.getAttribute("iCli");
		%>

	</div>


	<form method="post" action="cliente">
	
		<input type="hidden" name="i" value="<%=iCli%>">
		
		<label>E-mail: </label> 
		<input type="text" value="<%=cli.getEmail() %>" name="email" /> 
		<input type="submit" value="Save" />
	</form>
	
	<table border="1">
		<tr>
			<th>E-mail</th>
			<th>Ação</th>
		</tr>
	

<%
List<Cliente> lista = (List<Cliente>) request.getAttribute("lista");
int i = 0;
for (Cliente c : lista) {
%>
	
		<tr>
			<td> <%=c.getEmail()%> </td>
			<td>
				<a href = "javascript: confirma(<%=i%>)" > Excluir </a> |
				<a href = "cliente?i=<%=i%>&acao=edit"> Editar </a>
			</td>	
		</tr>
		
<% 
i++;}
%>
	
		</table>



</body>
</html>