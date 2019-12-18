<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="Default4" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br /><br />
   <b>
        <br />
        Here are your results according to the information you have given.<br />
        Body mass index :&nbsp;
        <asp:Label ID="bmi" runat="server" Font-Size="Large" ForeColor="#FF3300"></asp:Label>
        <br />
        Waist to hip ratio :
        <asp:Label ID="wh" runat="server" Font-Size="Large" ForeColor="#FF3300"></asp:Label>
        <br />
        Lean Body mass :
        <asp:Label ID="lbmm" runat="server" Font-Size="Large" ForeColor="#FF3300"></asp:Label>
        <br />
        Body fat :
        <asp:Label ID="bf" runat="server" Font-Size="Large" ForeColor="#FF3300"></asp:Label>
                  <br />
                  Waist percentage:<asp:Label ID="Label9" runat="server" Font-Size="Medium" 
                      ForeColor="Red"></asp:Label>
        <br />
        How active You are:<asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="#FF3300"></asp:Label>
        <br />
        Your Diet :
        <asp:Label ID="f" runat="server" Font-Size="Large" ForeColor="#FF3300"></asp:Label>
        <br />
        Your life Style :
        <asp:Label ID="lstyle" runat="server" Font-Size="Large" ForeColor="#FF3300"></asp:Label>
                  &nbsp;&nbsp;&nbsp;
        <br />
                  Daily calorie requirement:&nbsp;
                  <asp:Label ID="Label10" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
    </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <b>Read the data below to understand your generated result..<br />
        <br />
        <br />
      <img src="img/bmi.jpg" width="500px" height="300px" />&nbsp;&nbsp;&nbsp;&nbsp;  <img src="img/bf.jpg" width="300px" height="300px" />
    </b>
    <div>
       </div>
        <h3>
        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>....<br />
        According to your result, you are
    <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="Red"></asp:Label>
&nbsp;type. <br />The estimate health risk is
    <asp:Label ID="Label4" runat="server" Text="Label" ForeColor="Red"></asp:Label>
    . <br /> You have a
    <asp:Label ID="Label5" runat="server" Text="Label" ForeColor="Red"></asp:Label>
&nbsp;like body shape. <br /> Body mass weight of the fats in body is
    <asp:Label ID="Label6" runat="server" Text="Label" ForeColor="Red"></asp:Label>
    . <br /> Your body is
    <asp:Label ID="Label7" runat="server" Text="Label" ForeColor="Red"></asp:Label>
&nbsp;type according to your body fat percentage .<br />
    <br /></h3>
        <asp:Image ID="Image1" runat="server" Height="134px" Width="149px" />  
                  <br />
                  <br />
        <asp:Button ID="Butt" runat="server" class="qr" OnClick="Butt_Click" Text="Generate Qr-code" />
    &nbsp;  
        <br />
    <b>Get your result on your phone..!!<br />
        <br />
        </b>
    <b>
        <asp:ImageButton ID="ButtonBr" runat="server" img src="images/Save.png" Text="OK" OnClick="click"
        Width="142px" />
        </b>
    <br />  
    
    
  
</asp:Content>
