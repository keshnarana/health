<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="BlogW.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <br />
  <div>
        <asp:Panel ID="Panel1" runat="server">
          <table>
        <tr><th>Title :</th>
  
                      <td>  <asp:TextBox ID="TextBox1" runat="server" CssClass="t-text-area" TextMode="MultiLine" Height="32px"></asp:TextBox>
                        <br /></td></tr>
               <tr><th>  Content:</th>     

                   <td>
                        <asp:TextBox ID="TextBox2" CssClass="t-text-area" runat="server" TextMode="MultiLine"  Height="27px"></asp:TextBox>
                    <br /></td></tr>
                 <tr><th> <asp:Button ID="Button2" runat="server" CssClass="btn-default" Text="Send" onclick="Button2_Click" /></th></tr> </table>
           
           <br />
             <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                
                SelectCommand="SELECT BlogBox.user_name, BlogBox.Title, Reply.R_user, Reply.BReply, Reply.R_Date FROM BlogBox LEFT OUTER JOIN Reply ON BlogBox.Title = Reply.Title WHERE (BlogBox.user_name = @user_name)" >
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label4" Name="user_name" PropertyName="Text" 
                        DefaultValue="" />
                </SelectParameters>
            </asp:SqlDataSource>
          <h4>
           Hello,
            <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Label"></asp:Label>
            <br />
           You can reply for any blog by selecting their title..<br /> Reply for Title: <br /><asp:DropDownList ID="DropDownList1" CssClass="dropdown" runat="server"></asp:DropDownList>
                  <br />
                  <asp:Label ID="lblMessage" Font-Size="Large" runat="server" Text=""></asp:Label>
                  <br />
                  Reply: <br /><asp:TextBox TextMode="MultiLine" CssClass="t-text-area"  ID="TextBox3" runat="server"></asp:TextBox>
                  <br /></h4> 
                  <asp:Button ID="Button3" runat="server" onclick="Button3_Click" CssClass="btn-default"  Text="Submit" />
            <br />
           <br />
            <asp:Label ID="Label5" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button4" CssClass="btn-default"  runat="server" onclick="Button4_Click" 
                Text="Quick view to responses to your blogs" />
           
           
        </asp:Panel>
       <asp:Panel ID="Panel2" runat="server">
            <br />
            <br /><br /></asp:Panel>
    </div>
    
          <!-- Widget -->
              <div class="panel panel-default">
				<div class="panel-heading">
                  <div class="pull-left">Blogs</div>
                  <div class="widget-icons pull-right">
                 
                  </div>  
                  <div class="clearfix"></div>
                </div>

                <div class="panel-body">
                  <!-- Widget content -->
                   <asp:Repeater ID="Repeater1" runat="server" onitemcommand="rep1_ItemCommand">
              <HeaderTemplate><br /><br /><br /></HeaderTemplate>
                <ItemTemplate>
                  <div class="padd sscroll">
                    
                    <ul class="chats">

                      <!-- Chat by us. Use the class "by-me". -->
                      <li class="by-me">
                        <!-- Use the class "pull-left" in avatar -->
                        <div class="avatar pull-left">
                          <img src='<%#Eval("image") %>' alt="" Height="50px" Width="50px"/>
                        </div>

                        <div class="chat-content">
                          <!-- In meta area, first include "name" and then "time" -->
                          <h3 style="background-color:#8ac6ef;">User Name:   <asp:Label ID="Label2" runat="server" Font-Size="X-large" Text='<%#Eval("user_name") %>'></asp:Label> <span class="pull-right">(<asp:Label ID="Labeldate" runat="server" Text='<%#Eval("Pdate") %>'></asp:Label>) 
                                       </span></h3>
                 <h3> Title: <asp:Label ID="lblTitle" runat="server" Font-Size="Large" Text='<%#Eval("Title") %>' ></asp:Label> </h3>
                                       <div><h3>Blog: </h3><asp:Label ID="LabelBlog" Font-Size="Large" runat="server" Text='<%#Eval("Blog") %>'></asp:Label>
                                        </div>
                          <div class="clearfix"></div>
                        </div>
                      </li> 

                     
                    </ul>
                 
                  </div>          
                
                                       <br /><br />
                 </ItemTemplate>
        
                   <FooterTemplate><br>   <br />
              </FooterTemplate>
                    
            </asp:Repeater>
             
                    <br />
         
            </div>  
             
</div>
               
       </div>  </div>      <!-- project team & activity end -->
</section> </section>
   
</asp:Content>
