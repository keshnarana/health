<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bugs.aspx.cs" Inherits="Default6" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<section id="team" >
		<div class="container">
			
			<div class="row">
				<div class="col-md-4">
					<div class="team text-center">
						<div class="cover"  background-size:cover;">
                     <b> <asp:Label ID="Label13" runat="server" Text="Label" Font-Size="Large"></asp:Label></b><br />Usually self-diagnosable. Lab tests or imaging rarely required.
							<div class="overlay text-center">
								<h3 class="white">   <asp:ImageButton ID="Image1" runat="server" CssClass="avatar" Height="340px" Width="335px" 
            onclick=" _onclick"/></h3>
								
							</div>
						</div>
						
						
						
					</div>
				</div>
                <div class="col-md-4">
					<div class="team text-center">
						<div class="cover"  background-size:cover;">
                    <b ><asp:Label ID="Label14" runat="server" Text="Label" Font-Size="Large"></asp:Label></b><br />Head lice spend their entire life on the human scalp,feeding on human blood.
							<div class="overlay text-center">
							<h3 class="white"><asp:ImageButton id="Image2" CssClass="avatar" alt="Head lice"  runat="server" 
   onclick=" a_onclick" 
        ToolTip="Head lice"   Height="340px" Width="335px"/></h3>
							</div>
						</div>
					
						
					</div>
				</div>
				<div class="col-md-4">
					<div class="team text-center">
						<div class="cover"  background-size:cover;">
                    <b ><asp:Label ID="Label15" runat="server" Text="Label" Font-Size="Large"></asp:Label></b><br />Parasitic insects of the cimicid family that feed exclusively on blood.
							<div class="overlay text-center">
							<h3 class="white">	 <asp:ImageButton id="Image3" CssClass="avatar" alt="Bedbugs"  runat="server" 
   onclick=" b_onclick" 
        ToolTip="Bedbugs"  Height="340px" Width="335px"/></h3>
							</div> 
						</div>
					
						
					</div>
				</div>
				
			</div>
		</div>
	</section>  
    
       <asp:Panel ID="p1" runat="server">
<asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Engravers MT" Font-Size="XX-Large" ForeColor="#33CC33"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
    <br />
    <asp:Label ID="labelname1" runat="server"  CssClass="labels-info" Font-Size="Larger"></asp:Label>
    <br />
    <asp:Label ID="labela" runat="server"  CssClass="labels-info" Font-Size="Larger"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server"  CssClass="labels-info" Font-Size="Larger"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server"  CssClass="labels-info" Font-Size="Larger"></asp:Label>
    <br />
    <asp:Label ID="Label4" runat="server"  CssClass="labels-info" Font-Size="Larger"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label8" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server"  CssClass="labels-info" Font-Size="Larger"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
   </asp:Panel>
   
</asp:Content>

