<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DuyuruListesi.aspx.cs" Inherits="DuyuruListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <table class="table table-bordered table-hover">

        <tr>
            <th scope="col">ID</th>
            <th scope="col">BAŞLIK</th>
            <th scope="col">İÇERİK</th>
            <th scope="col">ÖĞRETMEN </th>
            <th scope="col">İŞLEMLER </th>

        </tr>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>
                    <tr>
                        <td><%#Eval("DUYURUID") %></td>
                        <td><%#Eval("DUYURUBASLIK") %></td>
                        <td><%#Eval("DUYURUICERIK") %></td>
                        <td><%#Eval("DUYURUOGRT") %></td>

                        <td>
                            <asp:HyperLink NavigateUrl='<%#"DuyuruSil.aspx?DuyuruID=" + Eval("DuyuruID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger" Width="100px">Sil</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%#"DuyuruGuncelle.aspx?DuyuruID=" + Eval("DuyuruID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-success" Width="100px">Güncelle</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>

            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>

