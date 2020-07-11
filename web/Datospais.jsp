<%@page import="java.sql.*" %>
<%@page import="bd.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAIS</title>
        <%!
           String consulta;
           Connection cn;
           PreparedStatement pst;
           ResultSet rs;
           String s_accion;
           String s_idpersona;
           
        %>
    </head>
    <body>
        <table border="1"  cellspacing="0" cellpadding="" align ="center">
            <thead>
          
            <th>PAISES</th>
            
                  
            </thead>  
             <%
            try{
                ConectaBd bd = new ConectaBd();
                cn = bd.getConnection();
                consulta = "SELECT nombre FROM pais ORDER BY nombre ASC ";
                
                        
                        //out.println(consulta);
                        pst = cn.prepareStatement(consulta);
                        rs = pst.executeQuery();
                        
                        while (rs.next()) {
                        %>
                        <tr>
                        <td><%out.print(rs.getString(1));%></td>
                        </tr>
                        <%
                            
                            }
            }catch(Exception e){
                out.println("Error SQL");
            }
        %>
        
    </body>
</html>
