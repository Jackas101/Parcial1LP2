<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="f_datos" action="valida.jsp" method="POST">
            <table border="1" cellspacing="0" cellpagging="0">
                <thead>
                    <tr>
                        <th colspan="2">TABLAS JSP </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>                   
                        <td>Muestra inicial de la BD</td>          
                        <td><a href="mostrarbd.jsp">Mostrar</a></td>         
                    </tr>        
                    <tr>                   
                        <td>Lista de Autores</td>          
                        <td><a href="Datosautor.jsp">Mostrar</a></td>         
                    </tr>                 
                    <tr>
                        <td>Lista de Editoriales</td>
                        <td><a href="Datoseditorial.jsp">Mostrar</a></td>
                    </tr>
                    <tr>                   
                        <td>Lista de paises </td>          
                        <td><a href="Datospais.jsp">Mostrar</a></td>         
                    </tr> 
                    <tr>                   
                        <td>Lista libro</td>          
                        <td><a href="Datoslibro.jsp">Mostrar</a></td>         
                    </tr> 
                    <tr>                   
                   
                    <tr align="center">
                        <td colspan="2"><a href="Login.jsp">Volver al Login</a></td>    
                        
                    </tr>
                </tbody>
            </table>
        </form>
    </body>     
</html>
