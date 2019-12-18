<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dae.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="  background: radial-gradient(circle,white, skyblue);"><br /><br /><br />
 <blockquote style="background-color: #00ff00">plans for youngsters according to their body shape.<br />
Know your body shape by doing the health test we provide.</blockquote> 
    <asp:Label ID="Label3" runat="server" 
        Text="Note:Not recommended for people with severe health issue" 
        ForeColor="Red" Font-Size="Larger"></asp:Label><br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ex.aspx" Font-Size="X-Large">Apple shape</asp:HyperLink>
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ex1.aspx" Font-Size="X-Large">Avacado shape</asp:HyperLink>
    <br />
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ex2.aspx" Font-Size="X-Large">Pear shape</asp:HyperLink>
    <br />
    <p>
    
    <asp:Label ID="Label1" runat="server" CssClass="animated" Text="Diet:"  Font-Size="X-Large"></asp:Label>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <img alt="Diet" src="images/diet.jpg" style="width: 620px; height: 438px"  />
 </p>
                  <p>
                    
     <asp:Label ID="Label2" runat="server" CssClass="animated" Text="Basic Exercises:"  
                      Font-Size="X-Large"></asp:Label>
  <img 
            alt="Exercise" src="images/exer.jpg" style="width: 600px; height: 438px" /></p>
<p>
   </p></div>
</asp:Content>


