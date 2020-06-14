<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DersListesi.aspx.cs" Inherits="DersListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 661px;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            width: 661px;
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


     <table class="table table-bordered table-hover">

        <tr>
            <th scope="col">Ders Id</th>
            <th scope="col" class="auto-style1">Ders Adı</th>
            <th scope="col">İşlemler</th>
           
        </tr>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>
                    <tr>
                        <td><%#Eval("DERSID") %></td>
                        <td><%#Eval("DERSAD") %></td>
                     

                        <td>
                            <asp:HyperLink NavigateUrl='<%#"DersSil.aspx?DERSID=" + Eval("DERSID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger" Width="200px">Sil</asp:HyperLink>
<%--                            <asp:HyperLink NavigateUrl='<%#"DersGuncelle.aspx?DERSID=" + Eval("DERSID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>--%>
                        </td>
                    </tr>

                </ItemTemplate>

            </asp:Repeater>




           
        </tbody>
    </table>
     <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/DersEkle.aspx" CssClass="btn btn-info">Ders Ekle</asp:HyperLink>

</asp:Content>

