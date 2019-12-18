<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ex.aspx.cs" Inherits="Default6" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<br /><br />
              <div style="font-size:larger"><asp:Label ID="Label13" runat="server" Text="APPLE: EXERCISE" Font-Bold="True" 
        Font-Size="Larger" ForeColor="Red"></asp:Label><br /><br />
    <asp:Label ID="Label14" runat="server" Text="Typical trouble zones:" 
        ForeColor="Red"></asp:Label> Apples are rounder in the middle and have a thicker waist,
    especially in comparison to their hips and shoulders.
    <br />
    <br />
   <asp:Label ID="Label15" runat="server" Text="Solution:" ForeColor="Red"></asp:Label>   Core-centric sculpting and high-intensity interval (HIIT) cardio Cardio
    seems to be the No. 1 way to exercise off belly fat , but that doesn't mean apple
    shapes should totally toss strength training out the window. This plan combines
    high-intensity cardio to torch fat and effective strength moves to help you develop
    tight muscles all around your waistline for a one-two punch to that pooch!
    <br />
    <br />
  <asp:Label ID="Label16" runat="server" Text="How it works:" ForeColor="Red"></asp:Label>    Three or four days per week, do 1 set of each exercise back to back,
    with little to no rest in between. Do the full circuit 3 times total. Alternate
    this routine with two days of high-intensity cardio intervals.
    <br />
    <br />
  <asp:Label ID="Label17" runat="server" Text="Total Time:" ForeColor="Red"></asp:Label>    up to 30 minutes<br /></div> 
    <br />
    <asp:Label ID="Label18" runat="server" Font-Size="Large" ForeColor="Red" 
        Text="Exercises that suit you:"></asp:Label>
    <br /><asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Accordion ID="Accordion1" runat="server" Style="cursor: pointer"  heightStyle= "content">
        <Panes>
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
                        <h2>
                            B.</h2>
                        <p runat="server" id="p5">
                        </p>
                        <br />
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label><br />
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Image ID="Image5" runat="server" Width="190px" Height="150px" />
                        <asp:Image ID="Image6" runat="server" Width="190px" Height="150px"/>
                    </asp:Panel>
                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="AccordionPane2" runat="server">
                <Header>
                    <h2>
                        <u>
                            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></u></h2>
                </Header>
                <Content>
                    <asp:Panel ID="Panel2" runat="server" >
                        <h2>
                            A.</h2>
                        <p runat="server" id="p6">
                        </p>
                        <br />
                        <h2>
                            B.</h2>
                        <p runat="server" id="p7">
                        </p>
                        <br />
                        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label><br />
                        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Image ID="Image7" runat="server" Width="190px" Height="150px"/>
                        <asp:Image ID="Image8" runat="server" Width="190px" Height="150px" />
                    </asp:Panel>
                </Content>
            </asp:AccordionPane>
        </Panes>
    </asp:Accordion>
    <br />
              </asp:Content>


