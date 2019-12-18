<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ESP.aspx.cs" Inherits="Default4" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<section id="team" >
		<div class="container">
			
			<div class="row">
				<div class="col-md-4">
					<div class="team text-center">
						<div class="cover"  background-size:cover;">
                     <b>  <asp:Label ID="Label13" runat="server" Text="Label" Font-Size="Large"></asp:Label></b><br />Occurs when hair follicles plug with oil and dead skin cells.
							<div class="overlay text-center">
								<h3 class="white">  <asp:ImageButton id="Image1" alt="Acne" CssClass="avatar" runat="server" 
        Height="340px" Width="335px" onclick=" Acne_onclick" ToolTip="Acne" /></h3>
								
							</div>
						</div>
						
						
						
					</div>
				</div>
                <div class="col-md-4">
					<div class="team text-center">
						<div class="cover"  background-size:cover;">
                    <b >   <asp:Label ID="Label9" runat="server" Text="Label" Font-Size="Large"></asp:Label></b> <br />Results from too much exposure to sunlight or sunlamps.
							<div class="overlay text-center">
							<h3 class="white">	 <asp:ImageButton id="Image2" alt="Sunburn" CssClass="avatar" runat="server" 
       Height="340px" Width="335px" onclick=" Sun_onclick" ToolTip="Sunburn"/></h3>
							</div>
						</div>
					
						
					</div>
				</div>
				<div class="col-md-4">
					<div class="team text-center">
						<div class="cover"  background-size:cover;">
                    <b >  <asp:Label ID="Label10" runat="server" Text="Label" Font-Size="Large"></asp:Label></b> <br />Choose a soap that's specially formulated for dry skin.
							<div class="overlay text-center">
							<h3 class="white">	 <asp:ImageButton id="Image3" alt="Dryskin" CssClass="avatar" runat="server"
        Height="340px" Width="335px" onclick=" dry_onclick" ToolTip="Dryskin"/></h3>
							</div>
						</div>
					
						
					</div>
				</div>
				
			</div>
		</div>
	</section> 
            <!--main content start-->
         
                 

<asp:Panel ID="p1" runat="server">
<asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Engravers MT" Font-Size="XX-Large" ForeColor="#33CC33"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
    <br />
    <asp:Label ID="labelname1" runat="server" CssClass="labels-info" Font-Size="Larger"></asp:Label>
    <br />
    <asp:Label ID="labela" runat="server" CssClass="labels-info" Font-Size="Larger"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" CssClass="labels-info" Font-Size="Larger"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" CssClass="labels-info" Font-Size="Larger"></asp:Label>
    <br />
    <asp:Label ID="Label4" runat="server" CssClass="labels-info" Font-Size="Larger"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label8" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" CssClass="labels-info" Font-Size="Larger"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
   </asp:Panel>
   
    <br /> 
          </div>
              <!-- project team & activity end -->

         
</asp:Content>


