<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Makbuzlarim.aspx.cs" Inherits="WebApp.Makbuzlarim" %>


<form id="form1" runat="server">
    <h3>

        Tahsilatlar</h3>
    <asp:GridView ID="GridView1" runat="server" Height="138px" Width="261px">
    </asp:GridView>
    <asp:Button ID="listele" runat="server" BackColor="Black" BorderStyle="Solid" ForeColor="White" OnClick="listele_Click" Text="Listele" />
</form>



