<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="calculadora_framework.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            display:block;
            margin:auto;
            text-align:center;
            margin-top:10px;
            width:150px;
            text-align:center;
            
        }
        #btnCalcular{
            
        }

        @media only screen and (max-width:768px){
            [class*="auto-style1"]{
                width:100%;
            }
            [id*="btnCalcular"] {
                width: 100%;
            }
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtAciertos" placeholder="Ingrese asiertos" runat="server" CssClass="auto-style1" Height="40px"></asp:TextBox>
            
            <asp:TextBox ID="txtTotal" placeholder="Ingrese total" runat="server" CssClass="auto-style1" Height="40px"></asp:TextBox>
                   
            <asp:TextBox ID="txtMaxPorcent" placeholder="Ingrese porcentaje maximo" runat="server" CssClass="auto-style1" Height="40px"></asp:TextBox>
                   
            <asp:Button ID="btnCalcular" runat="server" Text="Calcular!" BackColor="LightSeaGreen" OnClick="btnCalcular_Click" CssClass="auto-style1" Height="50px" BorderStyle="None" Font-Bold="True" Font-Size="20px" ForeColor="White"/>
                   
                        <asp:Label ID="lblError" runat="server" CssClass="auto-style1"></asp:Label>
                   
                        <asp:Label ID="lblResultado" runat="server" CssClass="auto-style1" Font-Bold="True" Font-Names="Arial" Font-Size="20px"></asp:Label>
            <asp:Button ID="btnBorrar" runat="server" BackColor="Gray" BorderStyle="None" CssClass="auto-style1" Font-Bold="True" ForeColor="White" Height="50px" OnClick="btnBorrar_Click" Text="Borrar" />
            <asp:Label ID="lblTotal" runat="server" CssClass="auto-style1" Font-Bold="True" Font-Size="24px"></asp:Label>
            <asp:Button ID="btnReiniciar" runat="server" BackColor="Red" CssClass="auto-style1" Font-Bold="True" ForeColor="White" Height="50px" OnClick="btnReiniciar_Click" Text="Reiniciar" />
       </div>
    </form>
</body>
</html>
