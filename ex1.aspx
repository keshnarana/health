<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ex1.aspx.cs" Inherits="Default6" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   <br /><br />  <div style="font-size:larger">
<asp:Label ID="Label10" runat="server" Text="AVACADO: EXERCISE" Font-Size="Larger" Font-Bold="True" ForeColor="Red"></asp:Label>
<br /><br />
    <asp:Label ID="Label11" runat="server" Text="Typical trouble zones:" ForeColor="Red"></asp:Label>
 Thighs, upper arms, belly pooch. Avacado shapes are typically very curvy both on the top and bottom, with a smaller appearing waist.
    <br />
<br /><asp:Label ID="Label12" runat="server" Text="Solution:" ForeColor="Red"></asp:Label>
 You may also have a higher body-fat percentage, which is typically most noticeable in the arms, thighs, and lower abs region.

This plan will not only help improve your body composition to maximize your fabulous form, it will boost your strength and stamina too. By incorporating a high step, you'll amp up the cardio component of your strength training session and help increase your range of motion.
    <br />
<br /><asp:Label ID="Label13" runat="server" Text="How it works:" ForeColor="Red"></asp:Label>
 Two or three days per week, do 1 set of each exercise back to back, with little to no rest between moves. Do the full circuit 3 times. Alternate this routine with two or three days of fat-blasting cardio for 30 to 60 minutes.
    <br />
<br /><asp:Label ID="Label14" runat="server" Text="Total Time:" ForeColor="Red"></asp:Label>
 up to 30 minutes<br />
    <br /></div>
    <asp:Label ID="Label18" runat="server" Font-Size="Large" ForeColor="Red" 
        Text="Exercises that suit you:"></asp:Label>
    <br /><asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
   
    <asp:Accordion ID="Accordion1" runat="server"
   Style="cursor: pointer; text-align: center;"  
        heightStyle= "content">
    
   
        <panes>
            <asp:AccordionPane ID="p1" runat="server">
                 <Header>
                    <h2>
                        <u>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></u></h2>
                </Header>
                <Content>
                    <asp:Panel ID="pa1" runat="server" >
                        <h2>
                            A.</h2>
                        <p runat="server" id="par1">
                        </p>
                        <br />
                        <h2>
                            B.</h2>
                        <p runat="server" id="par2">
                        </p>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Image ID="Image1" runat="server" Width="190px" Height="150px" />
                        <asp:Image ID="Image2" runat="server" Width="190px" Height="150px" />
                    </asp:Panel>
                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="AccordionPane1" runat="server">
                <Header>
                    <h2>
                        <u>
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></u></h2>
                </Header>
                <Content>
                    <asp:Panel ID="Panel1" runat="server" >
                        <h2>
                            A.</h2>
                        <p runat="server" id="p2">
                        </p>
                        <br />
                        <h2>
                            B.</h2>
                        <p runat="server" id="p3">
                        </p>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label><br />
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Image ID="Image3" runat="server" Width="190px" Height="150px" />
                        <asp:Image ID="Image4" runat="server" Width="190px" Height="150px" />
                    </asp:Panel>
                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="a11" runat="server">
                <Header>
                    <h2>
                        <u>
                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></u></h2>
                </Header>
                <Content>
                    <asp:Panel ID="aa1" runat="server" >
                        <h2>
                            A.</h2>
                        <p runat="server" id="p4">
                        </p>
                        <br />
                     
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label><br />
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label><br />
                        <br />
                        <asp:Image ID="Image5" runat="server" Width="190px" Height="150px" />
                        
                    </asp:Panel>
                </Content>
            </asp:AccordionPane>
           
        </panes>
    </asp:Accordion>  <br />

             
</asp:Content>
