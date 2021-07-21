<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="70%">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="Mã Sản Phẩm" />
                <asp:BoundField DataField="Name" HeaderText="Tên Sản Phẩm"/>
                <asp:ImageField DataImageUrlField="Picture" HeaderText="Hình">
                </asp:ImageField>
                <asp:TemplateField HeaderText="Số Lượng">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Eval("NumberhaveSale") %>'></asp:TextBox>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                </asp:TemplateField>
                <asp:BoundField DataField="Price" HeaderText="Giá Tiền" />
            </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
        <font color="blue" size="4" style="text-align: center" style=" margin-left:300px;"> Tổng thành tiền: </font>
        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red" style="text-align: right"></asp:Label> <br />
    <asp:Button ID="Button1" runat="server" Text="Đặt Hàng"/>
</asp:Content>

