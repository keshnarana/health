<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="resultshow.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" BackColor="Cornsilk">
        <Columns>
            <asp:BoundField DataField="user_name" HeaderText="user_name" 
                SortExpression="user_name" />
            <asp:BoundField DataField="bmi" HeaderText="bmi" SortExpression="bmi" />
            <asp:BoundField DataField="wh" HeaderText="wh" SortExpression="wh" />
            <asp:BoundField DataField="lbmm" HeaderText="lbmm" SortExpression="lbmm" />
            <asp:BoundField DataField="bf" HeaderText="bf" SortExpression="bf" />
            <asp:BoundField DataField="f" HeaderText="f" SortExpression="f" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        InsertCommand="INSERT INTO [result] ([user_name], [bmi], [wh], [lbmm], [bf], [f]) VALUES (@user_name, @bmi, @wh, @lbmm, @bf, @f)" 
        SelectCommand="SELECT * FROM [result]">
        <InsertParameters>
            <asp:Parameter Name="user_name" Type="String" />
            <asp:Parameter Name="bmi" Type="String" />
            <asp:Parameter Name="wh" Type="String" />
            <asp:Parameter Name="lbmm" Type="String" />
            <asp:Parameter Name="bf" Type="String" />
            <asp:Parameter Name="f" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

