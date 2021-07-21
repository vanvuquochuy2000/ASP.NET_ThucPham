<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.master" AutoEventWireup="true" CodeFile="SanPham.aspx.cs" Inherits="SanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/SanPham.css" rel="stylesheet" type="text/css" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="text-align: center">
        <div>
            <h1 id="hinh">Đặc Sản Bến Tre </h1>
        </div>
        <div>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table id="table">
                    <tr class="list">
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="150px" Width="100%" ImageUrl='<%# Eval("ImageURL") %>' />
                        </td>
                    </tr>
                    <tr class="list">
                        <td>
                            <asp:Label ID="txtTenSP" runat="server" Text='<%# Eval("Name") %>' ReadOnly="true" BorderColor="YellowGreen"></asp:Label>
                        </td>
                    </tr>
                    <tr class="list" style="background-color: #808080">
                        <td>
                            <asp:Label ID="txtTien" runat="server" Text='<%# Eval("Price") %>' ReadOnly="true"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><a href="GioHang.aspx?ID=<%#Eval("ProductID")%>">Mua Hàng</a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        </div>
    </div>
</asp:Content>

