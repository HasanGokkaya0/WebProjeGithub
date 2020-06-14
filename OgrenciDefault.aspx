<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.master" AutoEventWireup="true" CodeFile="OgrenciDefault.aspx.cs" Inherits="OgrenciDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="false">Numara</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="false">Ad Soyad</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Enabled="false">Mail</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Enabled="false">Telefon</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Enabled="false">Şifre</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Enabled="false">Fotoğraf</asp:TextBox>
            </div>
           










        </div>






        <asp:Button ID="Button1" runat="server" Text="Şifre Değiştir" CssClass="btn btn-primary" OnClick="Button1_Click" />




    </form>



</asp:Content>

