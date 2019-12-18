<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Chronic.aspx.cs" Inherits="Default6" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<section id="team" >
		<div class="container">
			
			<div class="row">
				<div class="col-md-4">
					<div class="team text-center">
						<div class="cover"  background-size:cover;">
                     <b> <asp:Label ID="Label13" runat="server" Text="Label" Font-Size="Large"></asp:Label></b><br />A skin condition that mainly affects children.
							<div class="overlay text-center">
								<h3 class="white">   <asp:ImageButton id="Image1" alt="Eczema" CssClass="avatar" runat="server"
         onclick=" _onclick" ToolTip="Eczema"
       Height="340px" Width="335px" /></h3>
								
							</div>
						</div>
						
						
						
					</div>
				</div>
                <div class="col-md-4">
					<div class="team text-center">
						<div class="cover"  background-size:cover;">
                    <b ><asp:Label ID="Label9" runat="server" Text="Label" Font-Size="Large"></asp:Label></b><br />Commonly occurs to women between the ages of 30 and 50.
							<div class="overlay text-center">
							<h3 class="white">	<asp:ImageButton id="Image2" CssClass="avatar" alt="Scleroderma"  runat="server" 
   onclick=" a_onclick" 
        ToolTip="Scleroderma"    Height="340px" Width="335px"/></h3>
							</div>
						</div>
					
						
					</div>
				</div>
				<div class="col-md-4">
					<div class="team text-center">
						<div class="cover"  background-size:cover;">
                    <b ><asp:Label ID="Label10" runat="server" Text="Label" Font-Size="Large"></asp:Label></b><br />Psoriasis is thought to be an immune system problem.
							<div class="overlay text-center">
							<h3 class="white">	<asp:ImageButton id="Image3" CssClass="avatar" alt="Psoriasis"  runat="server"  
   onclick=" b_onclick" 
        ToolTip="Psoriasis"  Height="340px" Width="335px"/></h3>
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

