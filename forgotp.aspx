<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeFile="forgotp.aspx.cs" Inherits="Default3" %>
<html><body style="background: radial-gradient(circle, white, skyblue);">
<form id="form1" runat="server">
<b>We understand your problem.. this may take some time.
please enter your user name, we will send you your password on your registered email.</b><br />
<asp:Label ID="Label1" runat="server" Text="Forgot pass"></asp:Label>
:-<br /><br /><table border="0" cellpadding="0" cellspacing="0">

    <tr>
        <td style="width: 80px">
          Enter your user name :
        </td>
        <td>
            <asp:TextBox ID="txtusr" runat="server"></asp:TextBox>
        </td>
    </tr>
    </table>
      <br />
<br />
      <asp:Button ID="Button1" runat="server" type="submit" Text="SUBMIT" class="btn btn-submit" OnClick="Blogin_Click"></asp:Button>
    </form></body></html>