<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Udata.aspx.cs" Inherits="Default8" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<br />
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" DataKeyNames="user_name">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
            <asp:BoundField DataField="user_name" HeaderText="user_name" 
                SortExpression="user_name" ReadOnly="True" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
            <asp:BoundField DataField="phone_no" HeaderText="phone_no" 
                SortExpression="phone_no" />
            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="forogotpass" HeaderText="forogotpass" 
                SortExpression="forogotpass" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [userData]" 
        DeleteCommand="DELETE FROM [userData] WHERE [user_name] = @user_name" 
        InsertCommand="INSERT INTO [userData] ([id], [user_name], [password], [phone_no], [image]) VALUES (@id, @user_name, @password, @phone_no, @image)" 
        
                      
                      UpdateCommand="UPDATE [userData] SET [id] = @id, [password] = @password, [phone_no] = @phone_no, [image] = @image WHERE [user_name] = @user_name">
        <DeleteParameters>
            <asp:Parameter Name="user_name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="user_name" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="phone_no" Type="String" />
            <asp:Parameter Name="image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="phone_no" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="user_name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
     <br />
    <table style=" border-style: solid; border-color: inherit; border-width: 1px; width: 429px;" 
        align="center">
<tr>
<td colspan="2" align="center">
<b>Send Mail to a user:- </b>&nbsp;</td>
</tr>
<tr>
<td>
Gmail Username:
</td>
<td>
<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
Gmail Password:
</td>
<td>
<asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
</td>
</tr>
<tr>
<td>
Subject:
</td>
<td>
<asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
To:
</td>
<td>
<asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td valign="top">
Body:
</td>
<td>
<asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Columns="30" Rows="10" ></asp:TextBox>
</td>
</tr>
<tr>
<td>
</td>
<td>
<asp:Button ID="btnSubmit" Text="Send" runat="server" onclick="btnSubmit_Click" />
</td>
</tr>
</table>
    <br />
     </asp:Content>
