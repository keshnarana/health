<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pimage.aspx.cs" Inherits="Default5" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
                  <br />
                  <br /><table><tr><td>enter/update your phone number:</td><td><asp:TextBox ID="Textphno" runat="server" MaxLength="10"></asp:TextBox></td>
                  <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Textphno"
                            ErrorMessage="*enter phone no" ForeColor="Red"
                            Font-Size="Medium"></asp:RequiredFieldValidator>  &nbsp;  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="*should be 10 digits" ForeColor="Red" ValidationExpression="[0-9]{10}" 
                            ControlToValidate="Textphno" Font-Size="Medium"></asp:RegularExpressionValidator></td></tr><tr><td>enter/update your email id:</td><td>
                           <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox> </td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                             ControlToValidate="TextBox1" ForeColor="Red" ErrorMessage="*enter email"  Font-Size="Medium"></asp:RequiredFieldValidator></td><td>  
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator2"  runat="server" ControlToValidate="TextBox1"
                      ForeColor="Red" ErrorMessage="*incorrect email"  Font-Size="Medium"
                      ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td></tr></table>
  
                 
                  <br />
    
              <b>Choose your profile picture:</b>
              <br />
    <asp:ImageButton ID="LoginButton" src="userimg/u1.jpg" runat="server" Height="80px" 
                      Width="80px" onclick="LoginButton_Click" />
      <asp:ImageButton ID="ImageButton1" src="userimg/u2.jpg" runat="server" Height="80px" 
                      Width="80px" onclick="ImageButton1_Click" />
  <asp:ImageButton ID="ImageButton2" src="userimg/u3.jpeg" runat="server" Height="80px" 
                      Width="80px" onclick="ImageButton2_Click" />
  <asp:ImageButton ID="ImageButton3" src="userimg/u4.jpg" runat="server" Height="80px" 
                      Width="80px" onclick="ImageButton3_Click" />
  <asp:ImageButton ID="ImageButton4" src="userimg/u5.jpg" runat="server" Height="80px" 
                      Width="80px" onclick="ImageButton4_Click" />
    <asp:ImageButton ID="ImageButton5" src="userimg/u6.jpg" runat="server" Height="80px" 
                      Width="80px" onclick="ImageButton5_Click" />
                       <asp:ImageButton ID="ImageButton6" src="userimg/u7.jpg" runat="server" Height="80px" 
                      Width="80px" onclick="ImageButton6_Click" />

                  <br />
                  <br />
                  <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                  <br />
                  <br />
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" CssClass="btn btn-blue" />
                        <br />
                  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
</asp:Content>

