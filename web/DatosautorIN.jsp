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
            String s_accion;
            String s_idautor;
            String s_nombre;
            String s_fnacimiento;

        %>
    </head>
    <body>
        <form name="AgregarautorForm" action="DatosautorIN.jsp" method="GET">
            <table border="0" align="center">
                <thead>
                    <tr>
                        <th colspan="2">Agregar autor</th>

                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Nombre: </td>
                        <td><input type="text" name="f_nombre" value="" maxlength="30" size="20" /></td>
                    </tr>
                    <tr>
                        <td>Fecha de nacimiento: </td>
                        <td><input type="text" name="f_fnacimiento" value="" maxlength="40" size="20" /></td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <input type="submit" value="Agregar" name="f_agregar" />
                            <input type="hidden" name="f_accion" value="C" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>

        <table border="1" cellspacing="0" cellpadding="" align = "center">
            <thead>
                <tr>
                    <th colspan="8">Datos autor</th>
                </tr>
                <tr>
                    <th>N°</th>
                    <th>Nombre</th>
                    <th>Fecha Nacimiento</th>
                    <th>Eliminar</th>
                    <th>Editar</th>
                </tr>
            </thead>

            <%
                try {
                    ConectaBd bd = new ConectaBd();
                    cn = bd.getConnection();

                    s_accion = request.getParameter("f_accion");
                    s_idautor = request.getParameter("f_idautor");

                    if (s_accion != null) {
                        if (s_accion.equals("E")) {
                            consulta = "   delete from autor "
                                    + " where "
                                    + " IDAUTOR = " + s_idautor + "; ";
                            //out.print(consulta);
                            pst = cn.prepareStatement(consulta);
                            pst.executeUpdate();

                        } else if (s_accion.equals("C")) {
                            s_nombre = request.getParameter("f_nombre");
                            s_fnacimiento = request.getParameter("f_fnacimiento");
                            consulta = "   insert into "
                                    + " autor(nombre, f_nacimiento) "
                                    + " values ('" + s_nombre + "','" + s_fnacimiento + "')";
                            //out.print(consulta);
                            pst = cn.prepareStatement(consulta);
                            pst.executeUpdate();
                        }
                    }
                    consulta = " Select IDAUTOR, NOMBRE, F_NACIMIENTO "
                            + " from autor";
                    //out.print(consulta);
                    pst = cn.prepareStatement(consulta);
                    rs = pst.executeQuery();
                    int num = 0;
                    String ide;
                    while (rs.next()) {  
                    ide = rs.getString(1);
                    num++;

                    %>
                    <tr>
                        <td><%out.print(num);%></td>
                        <td><%out.print(rs.getString(2));%></td>
                        <td><%out.print(rs.getString(3));%></td>
                        <td><a href="DatosautorIN.jsp?f_accion=E&f_idautor=<%out.print(ide);%>">Eliminar</a></td>
                        <td>Editar</td>
                    </tr>                    
                    <%
                    }
            }catch(Exception e){
                out.print("Error SQL");
            }

            %>
        </table>
         <center><a  href="Menu.jsp"><font size=4>Atras</font></a></center>
    </body>
</html>

