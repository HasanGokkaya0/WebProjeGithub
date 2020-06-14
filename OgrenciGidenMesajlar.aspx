<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.master" AutoEventWireup="true" CodeFile="OgrenciGidenMesajlar.aspx.cs" Inherits="OgrenciGidenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table class="table table-bordered table-hover">

        <tr>

            <th scope="col">ALICI </th>
            <th scope="col">BAŞLIK</th>
            <th scope="col">İÇERİK</th>
            <th scope="col">TARİH </th>


        </tr>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>
                    <tr>

                        <td><%#Eval("OgrAdSoyad") %></td>
                        <td><%#Eval("BASLIK") %></td>
                        <td><%#Eval("ICERIK") %></td>
                        <td><%#Eval("TARIH") %></td>


                    </tr>

                </ItemTemplate>

            </asp:Repeater>
        </tbody>
    </table>


</asp:Content>

