<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="notification.aspx.cs" Inherits="Default7" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
       <div class="right_column_section_title">
                          <h3>  User Page</h3></div>
                             <div class="right_column_section_body">
                           <div class="image_box" style="text-align: left">
                             
                            </div>
                            <div class="post_body">
                                <div class="posted_by">  <p>
                                     &nbsp;</p>
                                    <p>
                                        Appointment: <asp:Label ID="Label3" runat="server" Text="Your appointment confirmations will be shown here." Font-Size="Large"></asp:Label>
                            &nbsp;<asp:Label ID="Label6" runat="server"></asp:Label>
                            <br />
                            <br />
                                        Feedbacks Reply:
                            <asp:Label ID="Label4" runat="server" 
                                Text="Reply for your feedbacks will be shown here." Font-Size="Large"></asp:Label>
                                </p>
                                    <p>
                                        &nbsp;</p>
                                    <p>
                                        Doctor&#39;s reply: 
                                        <asp:Label ID="Label5" runat="server"></asp:Label>
                                    </p>
                                  
                            
                                 </div>
                                <br />
  <br />
                            </div><asp:Button ID="Button1" runat="server" CssClass="btn-danger" Text="Delete account" Width="150px" onclick="Button1_Click" 
                                           /><asp:ScriptManager
        ID="ScriptManager1" runat="server">
    </asp:ScriptManager>                            
    <asp:ConfirmButtonExtender ID="Button1_ConfirmButtonExtender" runat="server" 
        ConfirmText="confirm Delete" Enabled="True" TargetControlID="Button1">
    </asp:ConfirmButtonExtender>
                            <div class="cleaner">
                                &nbsp;</div>
                        </div>
                    
    <br />  
  
</asp:Content>


