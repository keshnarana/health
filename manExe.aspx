<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="manExe.aspx.cs" Inherits="Default12" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server"><br />
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Exercise] WHERE [name] = @original_name" 
        InsertCommand="INSERT INTO [Exercise] ([name], [p1], [p2], [sets], [reps], [i1], [i2]) VALUES (@name, @p1, @p2, @sets, @reps, @i1, @i2)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Exercise]" 
        
                      UpdateCommand="UPDATE [Exercise] SET [p1] = @p1, [p2] = @p2, [sets] = @sets, [reps] = @reps, [i1] = @i1, [i2] = @i2 WHERE [name] = @original_name">
        <DeleteParameters>
            <asp:Parameter Name="original_name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="p1" Type="String" />
            <asp:Parameter Name="p2" Type="String" />
            <asp:Parameter Name="sets" Type="String" />
            <asp:Parameter Name="reps" Type="String" />
            <asp:Parameter Name="i1" Type="String" />
            <asp:Parameter Name="i2" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="p1" Type="String" />
            <asp:Parameter Name="p2" Type="String" />
            <asp:Parameter Name="sets" Type="String" />
            <asp:Parameter Name="reps" Type="String" />
            <asp:Parameter Name="i1" Type="String" />
            <asp:Parameter Name="i2" Type="String" />
            <asp:Parameter Name="original_name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="name" DataSourceID="SqlDataSource1"  OnRowDataBound="GridView1_RowDataBound"
            Style="position: static" >
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
           
            <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" 
                SortExpression="name" />
            <asp:BoundField DataField="p1" HeaderText="p1" SortExpression="p1" />
            <asp:BoundField DataField="p2" HeaderText="p2" SortExpression="p2" />
            <asp:BoundField DataField="sets" HeaderText="sets" SortExpression="sets" />
            <asp:BoundField DataField="reps" HeaderText="reps" SortExpression="reps" />
            <asp:BoundField DataField="i1" HeaderText="i1" SortExpression="i1" />
            <asp:BoundField DataField="i2" HeaderText="i2" SortExpression="i2" />
        </Columns>
    </asp:GridView>
           </asp:Content>
        