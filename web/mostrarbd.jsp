<%@page import="java.sql.*" %>
<%@page import="bd.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos Estudiante</title>
        <%!
           String consulta;
           Connection cn;
           PreparedStatement pst;
           ResultSet rs;
           %>
    </head>
    <body>
        <table border="1" cellspacing="0" cellpadding="" align = "center">
            <thead>
                <th>ID</th>
                <th>TITULO</th>
                <th>CANTIDAD</th>
                <th>ANIO</th>
                <th>PRECIO</th>
                <th>ESTADO</th>
                <th>AUTOR</th>
                <th>EDITORIAL</th>
                <th>PAIS</th>
                
            </thead>

        <%
            try{
                 ConectaBd bd = new ConectaBd();
                 cn = bd.getConnection();
                 consulta= " Select idlibro, titulo, cantidad, anio, precio, estado, idautor, ideditorial, idpais "
                         + " from libro ";
                 pst=cn.prepareStatement(consulta);
                 rs=pst.executeQuery();
                 
                 while(rs.next())
                 {
                     %>
                   <tr>
        
                    <td><%out.print(rs.getString(1));%></td>
                    <td><%out.print(rs.getString(2));%></td>
                    <td><%out.print(rs.getInt(3));%></td>
                    <td><%out.print(rs.getInt(4));%></td>
                    <td><%out.print(rs.getInt(5));%></td>
                    <td><%out.print(rs.getString(6));%></td>
                    <td><%out.print(rs.getInt(7));%></td>
                    <td><%out.print(rs.getInt(8));%></td>
                    <td><%out.print(rs.getInt(9));%></td>
                    
                    
                   </tr>
                   <%
                 }
            }catch(Exception e){
                out.print("Error de consulta");
            
            }
            %>
    </body>
</html>
