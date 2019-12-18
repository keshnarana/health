<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Viral.aspx.cs" Inherits="Default4" %>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<section id="team" >
		<div class="container">
			
			<div class="row">
				<div class="col-md-4">
					<div class="team text-center">
						<div class="cover"  background-size:cover;">
                     <b> Shingles</b><br />Preventable by vaccine. Requires a medical diagnosis.
							<div class="overlay text-center">
								<h3 class="white"> <asp:ImageButton id="ImageButton1" alt="Shingles"  runat="server"  onclick=" _onclick" CssClass="avatar" ToolTip="Shingles "
      Height="340px" Width="335px" /> </h3>
								
							</div>
						</div>
						
						
						
					</div>
				</div>
				<div class="col-md-4">
					<div class="team text-center">
						<div class="cover"  background-size:cover;">
                    <b > Warts</b> <br />Spreads by skin-to-skin contact. Usually self-diagnosable.
							<div class="overlay text-center">
							<h3 class="white">	<asp:ImageButton id="Image2" alt="Warts"  runat="server"  CssClass="avatar" 
   onclick=" a_onclick" 
        ToolTip="Warts"    Height="340px" Width="335px" /></h3>
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
    <asp:Label ID="labelname1" runat="server" CssClass="labels-info" Font-Size="Larger" ></asp:Label>
    <br />
    <asp:Label ID="labela" runat="server" CssClass="labels-info" Font-Size="Larger" ></asp:Label>
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
                    <br />
                    <br />
                    <br />
                 
   </asp:Panel>
   <br />
   

                 
      
</asp:Content>

