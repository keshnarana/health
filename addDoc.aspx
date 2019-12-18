<%@ Page Language="C#"  MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="addDoc.aspx.cs" Inherits="Default9" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<br />
           <div>
    <p>
        Add new Doctor:</p>
    <p>
        &nbsp;</p>
    <p>
        Doctor image:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="*required path"  ForeColor="Blue" font-size="Large"></asp:RequiredFieldValidator>
    &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        Docror name:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2"
                            ErrorMessage="*required name"  ForeColor="Blue" font-size="Large"></asp:RequiredFieldValidator>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Speciality:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                            ErrorMessage="*required speiality"  ForeColor="Blue" font-size="Large"></asp:RequiredFieldValidator>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Avilability:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4"
                            ErrorMessage="*required availability"  ForeColor="Blue" font-size="Large"></asp:RequiredFieldValidator>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5"
                            ErrorMessage="*enter phone no"  ForeColor="Blue" font-size="Large"></asp:RequiredFieldValidator>
                        
                        <br />
                        
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*should be 10 digit"
                            ValidationExpression="[0-9]{10}"  ControlToValidate="TextBox5"  
                            ForeColor="Blue" font-size="Large"></asp:RegularExpressionValidator>
    </p>
    <p>
        &nbsp;</p>
               <p>
                   Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox6"
                            ErrorMessage="*required"  ForeColor="Blue" font-size="Large"></asp:RequiredFieldValidator>
               </p>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click"  CssClass="btn-default" Text="Submit"  />
    </p>
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1"  OnRowDataBound="GridView1_RowDataBound"
            Style="position: static" DataKeyNames="Doctor_name">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Doctor" HeaderText="Doctor" 
                SortExpression="Doctor" />
            <asp:BoundField DataField="Doctor_name" HeaderText="Doctor_name" 
                SortExpression="Doctor_name" ReadOnly="True" />
            <asp:BoundField DataField="Speciality" HeaderText="Speciality" 
                SortExpression="Speciality" />
            <asp:BoundField DataField="Availability" HeaderText="Availability" 
                SortExpression="Availability" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Doctor] WHERE [Doctor_name] = @original_Doctor_name" 
        InsertCommand="INSERT INTO [Doctor] ([Doctor], [Doctor_name], [Speciality], [Availability], [Phone]) VALUES (@Doctor, @Doctor_name, @Speciality, @Availability, @Phone)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Doctor]" 
        
                      UpdateCommand="UPDATE [Doctor] SET [Doctor] = @Doctor, [Speciality] = @Speciality, [Availability] = @Availability, [Phone] = @Phone WHERE [Doctor_name] = @original_Doctor_name">
        <DeleteParameters>
            <asp:Parameter Name="original_Doctor_name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Doctor" Type="String" />
            <asp:Parameter Name="Doctor_name" Type="String" />
            <asp:Parameter Name="Speciality" Type="String" />
            <asp:Parameter Name="Availability" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Doctor" Type="String" />
            <asp:Parameter Name="Speciality" Type="String" />
            <asp:Parameter Name="Availability" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="original_Doctor_name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    <br />  
               </asp:Content>
        