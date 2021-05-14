<%@ page language="java" import="java.sql.*"  %>

<%

String nome = request.getParameter("nome");
String email= request.getParameter("user");
String senha= request.getParameter("pass");


String driver = "net.sourceforge.jtds.jdbc.Driver" ;
String url = "http://10.4.0.90:8080/tecwebnoiteIgrupo14/Igor/aula.jsp" ;
String usuario = "asd";
String senha = "123456";

Class.forName( driver ) ;

Connection conexao = DriverManager.getConnection( url, usuario, senha ) ;

String sql = "insert into cadastro (nome,email,senha) values ('" + nome + "'," + email + ",'" + senha + "')" ;

Statement stm = conexao.createStatement() ;

stm.executeUpdate( sql ) ;

out.print("Dados gravados com sucesso<br><br>") ;

out.print("<a href='cadastro.html'>") ;
out.print("Voltar") ;
out.print("</a>") ;

%>







