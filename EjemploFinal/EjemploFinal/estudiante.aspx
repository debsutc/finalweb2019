<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="estudiante.aspx.cs" Inherits="EjemploFinal.estudiante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Catálogo de Estudiantes</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/datatables.min.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GRD" runat="server"
            cssClass="table"></asp:GridView>
    </div>
    </form>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/datatables.min.js"></script>
</body>
</html>
