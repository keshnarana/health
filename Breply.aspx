<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Breply.aspx.cs" Inherits="Default5" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    
              <!--overview start-->
			 <br />
  <div>
        <asp:Panel ID="Panel1" runat="server">
           
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                
                SelectCommand="SELECT BlogBox.user_name, BlogBox.Title, Reply.R_user, Reply.BReply, Reply.R_Date FROM BlogBox LEFT OUTER JOIN Reply ON BlogBox.Title = Reply.Title WHERE (BlogBox.user_name = @user_name)" >
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label4" Name="user_name" PropertyName="Text" 
                        DefaultValue="" />
                </SelectParameters>
            </asp:SqlDataSource>
           
           
           
           
           
            <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                Text="view replies recived on your blog" />
           <br />
            Hello,
           
           
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <br /> <h3>Your Blogs:</h3>
        </asp:Panel>
       <asp:Panel ID="Panel2" runat="server">
            <br />
            <br /><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#336666" 
                BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="user_name" HeaderText="user_name" 
                        SortExpression="user_name" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="R_user" HeaderText="R_user" 
                        SortExpression="R_user" />
                    <asp:BoundField DataField="BReply" HeaderText="BReply" 
                        SortExpression="BReply" />
                    <asp:BoundField DataField="R_Date" HeaderText="R_Date" 
                        SortExpression="R_Date" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView><br /></asp:Panel>
    </div>
      <div class="col-md-6 portlets">
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
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [BlogBox] WHERE ([user_name] = @user_name)">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="Label4" Name="user_name" PropertyName="Text" 
                              Type="String" />
                      </SelectParameters>
                    </asp:SqlDataSource>
                  
                  <asp:DataList ID="DataList1" runat="server" DataKeyField="id" 
                        DataSourceID="SqlDataSource2" Width="1047px" BackColor="White" 
                        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        GridLines="Horizontal">  
                      <AlternatingItemStyle BackColor="#F7F7F7" />
                      <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                      <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                      <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
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
                         <h3 style="background-color:#8ac6ef;">User Name:   <asp:Label ID="Label2" runat="server" Font-Size="Large" Text='<%#Eval("user_name") %>'></asp:Label> <span class="pull-right">(<asp:Label Font-Size="Large" ID="Labeldate" runat="server" Text='<%#Eval("Pdate") %>'></asp:Label>) 
                                       </span></h3>
                 <br /><b>   Title:</b> <asp:Label ID="lblTitle" runat="server" Font-Size="Large" Text='<%#Eval("Title") %>' ></asp:Label>
                                       <div><b>Blog: </b><asp:Label Font-Size="Large" ID="LabelBlog" runat="server" Text='<%#Eval("Blog") %>'></asp:Label>
                                        </div>
                           <div class="clearfix"></div>
                        </div>
                      </li> 

                     
                    </ul>
                 
                  </div>              
                      </ItemTemplate>
                      <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    </asp:DataList>
                <br />
                 <br />
                  <br />
                  </div>
                </div>



              <h3>   Replies Given by you:</h3> 
                   <asp:Repeater ID="Repeater1" runat="server" onitemcommand="rep1_ItemCommand">
              <HeaderTemplate><br /><br /><br /></HeaderTemplate>
                <ItemTemplate>
                     <div id="replydiv" class="col-md-4 portlets" >
              
                   <div class="padd sscroll">
                    
                    <ul class="chats">

                      <!-- Chat by us. Use the class "by-me". -->
                      <li class="by-me">
                        <!-- Use the class "pull-left" in avatar -->
                        <div class="avatar pull-left">
                          <img src='<%#Eval("R_image") %>' alt="" Height="40px" Width="40px"/>
                        </div>

                        <div class="chat-content">
                          <!-- In meta area, first include "name" and then "time" -->
                          <b style="background-color:#8ac6ef;"> Title: <asp:Label ID="lblTitle" Font-Size="Large" runat="server" Text='<%#Eval("Title") %>' ></asp:Label></b>
                          <div class="chat-meta"><asp:Label ID="Label1" Font-Size="Large" runat="server" Text='<%#Eval("R_user") %>'></asp:Label> <span class="pull-right"><asp:Label ID="Label3" Font-Size="Small" runat="server" Text='<%#Eval("R_Date") %>'></asp:Label> 
      </span></div>
                
                                       <div><b>Reply:</b> <asp:Label Font-Size="Large" ID="Label5" runat="server" Text='<%#Eval("BReply") %>'></asp:Label>
                                        </div>
                          <div class="clearfix"></div> 
                        </div>
                      </li> 

                     
                    </ul>
                    
                  </div>
             
                </div> <br /><br /><br /> <br /><br /><br />
                 </ItemTemplate>
        
                   <FooterTemplate><br>   <br />
              </FooterTemplate>
                    
            </asp:Repeater>

             
                    <br />
          
            </div>

               
     
   
</asp:Content>
