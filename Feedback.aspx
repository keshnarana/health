<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Default4" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="  background: radial-gradient(circle, white, skyblue);"> <br /><br />
     <table><tr><td> Ask your questions here. You may also give your feedback here.</td></tr>
     <tr> <td> <asp:TextBox 
            ID="TextBox1" runat="server" style="background-color:#8ac6ef;" TextMode="MultiLine" Width="237px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="*required"></asp:RequiredFieldValidator>
         </td>  </tr>
           <tr>           </tr>
         </table>
                <br /><br />
                <table>  <tr><td>  Select your doctor:</td><td>    <asp:DropDownList ID="ddlDoc" runat="server" Width="166px" style="background-color:#8ac6ef;" 
                        AutoPostBack="True" 
                        Height="35px">
                    
                </asp:DropDownList></td></tr></table>
                <br /><br />
                <table>
               <tr><td>  Ask a question to the doctor:</td><td><asp:TextBox 
            ID="TextBox2" runat="server" style="background-color:#8ac6ef;" TextMode="MultiLine" 
                          Width="237px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="*required"></asp:RequiredFieldValidator>
</td></tr> </table>

    <p>
        <asp:Button ID="Button2" runat="server"  Text="Submit" value="submit" CssClass="btn-gray-fill" onclick="Button2_Click" />
    </p>
     <p>
         <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
             Font-Overline="False" ForeColor="Red"></asp:Label>
         <asp:Label ID="Label2" runat="server"></asp:Label>
</p>



    <br /> 
          </div></asp:Content>

