<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Appointment.aspx.cs" Inherits="Default6" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
              <style type="text/css">
              .panelcss
              {
                  margin-right:0px;
                  width:500px;
                  height:63px;
              float: right;
             padding:2px;
             }
              </style><div class="panelcss"  ID="Panel1" runat="server">
            <b>  Choose date based on doctor's availabilty:</b>
        <asp:Calendar ID="calD" runat="server" OnDayRender="calD_DayRender" CssClass="panelcss" OnSelectionChanged="calD_SelectionChanged">
       <SelectedDayStyle BackColor="#F4F4F4" ForeColor="Maroon" />
    <TodayDayStyle BackColor="#000000" ForeColor="White" />
    <OtherMonthDayStyle ForeColor="#CCCCCC" />
    <DayHeaderStyle BackColor="#E9E9E9" />
    <DayStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Height="40px" />
    <TitleStyle BackColor="White" ForeColor="Black" />
    </asp:Calendar> 
       
     
      </div><br /><br />
              <table style="width: 524px; height: 30px">
            <tr>
                <td style="width: 119px; height: 30px;">
                    Doctor :</td>
                <td style="width: 80px; height: 30px;">
                    <asp:DropDownList ID="ddlDoc" runat="server" Width="166px" 
                        AutoPostBack="True" OnSelectedIndexChanged="ddlDoc_SelectedIndexChanged" 
                        Height="35px">
                    
                </asp:DropDownList></td>
            </tr></table>
            <panel id="p1" runat="server">
            <table style="width: 535px; height: 186px">
            <tr>
                <td style="width: 60px">
                    Doctor&nbsp;&nbsp;&nbsp; Name :</td>
                <td style="width: 122px">
                    <asp:Label ID="dName" runat="server" Font-Size="Large"></asp:Label>
                </td>
            </tr>
           
         
            <tr>
                <td style="width: 60px; height: 26px;">
                    Speciality:</td>
                <td style="width: 122px; height: 26px;">
                    <asp:Label ID="Lsp" runat="server" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 60px; ">
                    Availability:</td>
                <td style="width: 122px; ">
                    <asp:Label ID="Lavab" runat="server" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 60px; ">
                    Phone :</td>
                <td style="width: 122px; ">
                    <asp:Label ID="Lphone" runat="server" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 60px; height: 1px">
                    Appointment Time :</td>
                <td style="width: 122px; height: 1px">
                    <asp:DropDownList ID="ddlApointment" runat="server" Width="172px"  
                        onselectedindexchanged="ddlApointment_SelectedIndexChanged" Height="30px">
                    </asp:DropDownList>
    
                    </td>
            </tr>
        </table>  
              <br />
              <asp:Label ID="lblReference"  runat="server" ForeColor="Red"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                    <asp:Image ImageAlign="Left" ID="Image1" runat="server" />  
                  </panel>
        <br />
          <br />
  <br />
    <br />
  <br />
  <br />
  <br />
  <br />
  <br />
        <asp:Button ID="btnBooking" runat="server" CssClass="btn-default" OnClick="btnBooking_Click" 
            Text="Book" Height="29px" Width="134px" />

        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <br /><br /><br />
    <asp:Panel ID="Panel5" runat="server">
    
    <asp:Button ID="Button2" runat="server" Text="OK" onclick="Button2_Click" /><asp:Label ID="Label1" runat="server" Text=""></asp:Label></asp:Panel>
     
 
</asp:Content>

