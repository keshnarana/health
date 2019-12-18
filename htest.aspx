<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="htest.aspx.cs" Inherits="Default4" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   <br /><br />
                 <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Accordion ID="Accordion1" runat="server"  class="text-info"
        Style="cursor: pointer; font-size:larger"  
        heightStyle= "content">
        <panes>
            <asp:AccordionPane ID="p1" runat="server" >
                <header>
                    <h2 class="text-info">
                        <u>Body Mass Index</u></h2>
                    </u>
                </header>
                <content>
                <asp:Panel ID="pa1" runat="server" >
                        The table given below gives a complete idea about the BMI.
                        <table class="table" border="1px" style="width: 100%;">
                            <tr align="center">
                                <th align="center">
                                    BMI value
                                </th>
                                <th align="center">
                                    Type
                                </th>
                            </tr>
                            <tr align="center">
                                <td align="center">
                                    Below 18.5
                                </td>
                                <td align="center">
                                    Under Weight
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="center">
                                    18.5 - 24.5
                                </td>
                                <td align="center">
                                    Normal
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="center">
                                    25 - 29.9
                                </td>
                                <td align="center">
                                    Over Weight
                                </td>
                            </tr>
                            <tr align="center">
                                <td align="center">
                                    above 29.9
                                </td>
                                <td align="center">
                                    Obese
                                </td>
                            </tr>
                    </table>
                </asp:Panel>
                </content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="AccordionPane1" runat="server">
                <header>
                    <h2 class="text-info">
                        <u>Waist Hip Ratio</u></h2>
                </header>
                <content>
                <asp:Panel ID="Panel1" runat="server">
                        The table given below gives a complete idea about the Waist Hip ratio. 
                    <br />
                  <br /> <h2> For women:</h2><br />
                        <table class="table-responsive"  border="1px" style="width: 100%;">
                            <tr>
                                <th align="center">
                                    Women
                                </th>
                                <th align="center">
                                    Estimate Health Risk
                                </th>
                                <th  align="center">
                                    Body shape
                                </th>
                            </tr>
                            <tr>
                                <td>
                                   Below 0.80 
                                </td>
                                <td>
                                    Low
                                </td>
                                <td>
                                    Pear
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    0.81 - 0.85
                                </td>
                                <td>
                                    Moderate
                                </td>
                                <td>
                                    Avacado
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    0.85 plus
                                </td>
                                <td>
                                    High
                                </td>
                                <td>
                                    Apple
                                </td>
                            </tr>
                    </table>
                       <br />
                       <h2> For men:</h2>
                        <br />
                    <table class="table-advance"  border="1px" style="width: 100%;">
                        <tr>
                            <th>
                                    Men
                                </th>
                            <th>
                                    Estimate Health Risk
                                </th>
                            <th>
                                    Body shape
                                </th>
                        </tr>
                        <tr>
                            <td>
                                  Below 0.95 
                                </td>
                            <td>
                                    Low
                                </td>
                            <td>
                                    Pear
                                </td>
                        </tr>
                        <tr>
                            <td>
                                    0.96 - 1.0
                                </td>
                            <td>
                                    Moderate
                                </td>
                            <td>
                                    Avacado
                                </td>
                        </tr>
                        <tr>
                            <td>
                                    1.0 plus
                                </td>
                            <td>
                                    High
                                </td>
                            <td>
                                    Apple
                                </td>
                        </tr>
                    </table>
                </asp:Panel>
                </content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="a11" runat="server">
                <header>
                    <h2 class="text-info">
                        <u>Lean body mass Weight</u></h2>
                </header>
                 <content>
                <asp:Panel ID="aa1" runat="server" >
                        Lean Body Mass is a component of body composition, calculated by subtracting body
                        fat from the total body weight.
                    </asp:Panel>
                </content>
            </asp:AccordionPane>
            <asp:AccordionPane ID="AccordionPane2" runat="server">
                <header>
                    <h2 class="text-info">
                        <u>Body Fat Percentage</u></h2>
                </header>
                <content>
                <asp:Panel ID="Panel2" runat="server" >
                        The table given below gives a complete idea about the Body fat percentage.
                        <table class="table"  border="1px" style="width: 100%;">
                            <tr>
                                <th>
                                    Women
                                </th>
                                <th >
                                    Men
                                </th>
                                <th >
                                    Type
                                </th>
                            </tr>
                            <tr>
                                <td>
                                    10 - 12
                                </td>
                                <td>
                                    2 - 4
                                </td>
                                <td>
                                    Essential fat
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    14 - 20
                                </td>
                                <td>
                                    6 - 13
                                </td>
                                <td>
                                    Athlete
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    21 - 24
                                </td>
                                <td>
                                    14 - 17
                                </td>
                                <td>
                                    Fit
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    25 - 31
                                </td>
                                <td>
                                    18 - 25
                                </td>
                                <td>
                                    Aceptable
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    32 plus
                                </td>
                                <td>
                                    26 plus
                                </td>
                                <td>
                                    Obese
                                </td>
                            </tr>
                    </table>
                </asp:Panel>
                </content>
            </asp:AccordionPane>
        </panes>
    </asp:Accordion>
    
    <br />
  <h2>Go ahead... Take a health test...!!</h2>  
    <asp:Button ID="Button1" runat="server" CssClass="btn-info" Text="Test" 
                      onclick="Button1_Click" Height="54px" Width="97px" />
    
    <br /> 
    
    <br /> 
    <br /> 
        </asp:Content>
