<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="GidenMesajlar.aspx.cs" Inherits="GidenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    
    <table class="table table-bordered table-hover">

        <tr>
            <th scope="col">ID</th>
            <th scope="col">ALICI </th>
            <th scope="col">BAŞLIK</th>
            <th scope="col">İÇERİK</th>
            <th scope="col">TARİH</th>
       

        </tr>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>
                    <tr>
                        <td><%#Eval("MESAJID") %></td>
                        <td><%#Eval("ALICI") %></td>
                        <td><%#Eval("BASLIK") %></td>
                        <td><%#Eval("ICERIK") %></td>
                         <td><%#Eval("TARIH") %></td>

                        <%--                        <td>
                            <asp:HyperLink NavigateUrl='<%#"DuyuruSil.aspx?DuyuruID=" + Eval("DuyuruID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%#"DuyuruGuncelle.aspx?DuyuruID=" + Eval("DuyuruID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                        </td>--%>
                    </tr>

                </ItemTemplate>

            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>

