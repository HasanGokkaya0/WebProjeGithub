<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPanel.aspx.cs" Inherits="LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />


    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-image: none">
        <div style="width: 700px; height: 221px; margin: auto">
            <h2 style="text-align:center">Öğrenci Not Sistemi Giriş Ekranı</h2>
            <br />
            <br />
            <br />
            <div style="text-align: center">
                <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl="~/indir (1).jpg" />
            </div>
            <br />
            <br />
            <div>
                <asp:Label for="TxtNumara" runat="server">Kullanıcı Adı</asp:Label>
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control" Height="41px" Width="700px"></asp:TextBox>
            </div>
            <br />


            <div>
                <asp:Label for="TxtSifre" runat="server">Şifre</asp:Label>
                <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" Height="41px" Width="700px" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-warning" Width="700px" OnClick="Button1_Click" />

            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Öğretmen Girişi" CssClass="btn btn-default" Width="190px" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="İptal Et" CssClass="btn btn-danger" Width="300px" />
            <asp:Button ID="Button4" runat="server" Text="Yardım" CssClass="btn btn-info" Width="190px" />

        </div>
    </form>
</body>
</html>
