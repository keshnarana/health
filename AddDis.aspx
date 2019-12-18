<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AddDis.aspx.cs" Inherits="Default10" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<br />
                   <div>
    <p>
        &nbsp;</p>
    <p>
        Add new Disease:</p>
    <p>
        &nbsp;</p>
    <p class="text-center">
        image path:&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="*required path"  ForeColor="Blue" font-size="Large"></asp:RequiredFieldValidator>
    </p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
        Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2"
                            ErrorMessage="*required name"  ForeColor="Blue" font-size="Large"></asp:RequiredFieldValidator>
    </p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Description:&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                            ErrorMessage="*required Description"  ForeColor="Blue" font-size="Large"></asp:RequiredFieldValidator>
    </p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
        Cure:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4"
                            ErrorMessage="*required Cure"  ForeColor="Blue" font-size="Large"></asp:RequiredFieldValidator>
    </p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
        Extra:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox5"
                            ErrorMessage="*required extra"  ForeColor="Blue" font-size="Large"></asp:RequiredFieldValidator>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click"  CssClass="btn-default" Text="Submit"  />
    </p>
</div><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                      DataSourceID="SqlDataSource1"  OnRowDataBound="GridView1_RowDataBound"
            Style="position: static" DataKeyNames="Name" >
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" ReadOnly="True" />
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" />
            <asp:BoundField DataField="Cure" HeaderText="Cure" SortExpression="Cure" />
            <asp:BoundField DataField="Extra" HeaderText="Extra" SortExpression="Extra" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Diseases] WHERE [Name] = @original_Name" 
        InsertCommand="INSERT INTO [Diseases] ([Image], [Name], [Description], [Cure], [Extra]) VALUES (@Image, @Name, @Description, @Cure, @Extra)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Diseases]" 
        
                      UpdateCommand="UPDATE [Diseases] SET [Image] = @Image, [Description] = @Description, [Cure] = @Cure, [Extra] = @Extra WHERE [Name] = @original_Name">
        <DeleteParameters>
            <asp:Parameter Name="original_Name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Cure" Type="String" />
            <asp:Parameter Name="Extra" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Cure" Type="String" />
            <asp:Parameter Name="Extra" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

               </asp:Content>
        
     
          