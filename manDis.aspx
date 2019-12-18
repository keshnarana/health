<%@ Page Language="C#"  MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="manDis.aspx.cs" Inherits="Default11" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server"><br />
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Skin1] WHERE [Name] = @original_Name" 
        InsertCommand="INSERT INTO [Skin1] ([Name], [Symptoms], [Symptoms1], [Cause], [Treatment], [Treatment1], [Treatment2], [Extra], [imageS]) VALUES (@Name, @Symptoms, @Symptoms1, @Cause, @Treatment, @Treatment1, @Treatment2, @Extra, @imageS)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Skin1]" 
        
                      UpdateCommand="UPDATE [Skin1] SET [Symptoms] = @Symptoms, [Symptoms1] = @Symptoms1, [Cause] = @Cause, [Treatment] = @Treatment, [Treatment1] = @Treatment1, [Treatment2] = @Treatment2, [Extra] = @Extra, [imageS] = @imageS WHERE [Name] = @original_Name">
        <DeleteParameters>
            <asp:Parameter Name="original_Name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Symptoms" Type="String" />
            <asp:Parameter Name="Symptoms1" Type="String" />
            <asp:Parameter Name="Cause" Type="String" />
            <asp:Parameter Name="Treatment" Type="String" />
            <asp:Parameter Name="Treatment1" Type="String" />
            <asp:Parameter Name="Treatment2" Type="String" />
            <asp:Parameter Name="Extra" Type="String" />
            <asp:Parameter Name="imageS" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Symptoms" Type="String" />
            <asp:Parameter Name="Symptoms1" Type="String" />
            <asp:Parameter Name="Cause" Type="String" />
            <asp:Parameter Name="Treatment" Type="String" />
            <asp:Parameter Name="Treatment1" Type="String" />
            <asp:Parameter Name="Treatment2" Type="String" />
            <asp:Parameter Name="Extra" Type="String" />
            <asp:Parameter Name="imageS" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Name" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound"
            Style="position: static" 
           >  
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" 
                SortExpression="Name"  >
            </asp:BoundField>
            <asp:BoundField DataField="Symptoms" HeaderText="Symptoms" 
                SortExpression="Symptoms" />
            <asp:BoundField DataField="Symptoms1" HeaderText="Symptoms1" 
                SortExpression="Symptoms1" />
            <asp:BoundField DataField="Cause" HeaderText="Cause" SortExpression="Cause" />
            <asp:BoundField DataField="Treatment" HeaderText="Treatment" 
                SortExpression="Treatment" />
            <asp:BoundField DataField="Treatment1" HeaderText="Treatment1" 
                SortExpression="Treatment1" />
            <asp:BoundField DataField="Treatment2" HeaderText="Treatment2" 
                SortExpression="Treatment2" />
            <asp:BoundField DataField="Extra" HeaderText="Extra" SortExpression="Extra" />
            <asp:BoundField DataField="imageS" HeaderText="imageS" 
                SortExpression="imageS" />
        </Columns>
    </asp:GridView>&nbsp; </asp:Content>
        