<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.master" AutoEventWireup="true" CodeFile="aa.aspx.cs" Inherits="DatHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <table>
            <tr><td colspan="2" style="text-align:center; border:1px solid black">THÀNH VIÊN</td></tr>
            <tr>
                <td  style="border:1px solid black" >Mã Thành Viên: </td>
                <td  style="border:1px solid black">
                    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border:1px solid black">Tên Thành Viên:</td>
                <td  style="border:1px solid black"><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
            </tr>
            <%--<tr>
                <td style="border:1px solid black">Địa Chỉ:</td>
                <td  style="border:1px solid black"><asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="border:1px solid black">SĐT:</td>
                <td  style="border:1px solid black"><asp:TextBox ID="txtSĐT" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="border:1px solid black">Giới Tính:</td>
                <td  style="border:1px solid black"><asp:TextBox ID="txtGioiTinh" runat="server"></asp:TextBox></td>
            </tr>--%>
            <tr>
                <td colspan="2" style="text-align:center;border:1px solid black">
                    <asp:Button ID="btnSubmit" runat="server" Text="Đăng ký" OnClick="btnSubmit_Click"/></td>
            </tr>
        </table>
        
    </div>
</asp:Content>

