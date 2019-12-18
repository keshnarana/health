<%@ Page Language="C#"  MasterPageFile="~/MasterPage2.master"  AutoEventWireup="true" CodeFile="BlogAd.aspx.cs" Inherits="BlogAd" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server"><br />
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                      
                      SelectCommand="SELECT * FROM [BlogBox]" 
                      DeleteCommand="DELETE FROM [BlogBox] WHERE [id] = @id" 
                      InsertCommand="INSERT INTO [BlogBox] ([Title], [user_name], [Blog], [Pdate], [image]) VALUES (@Title, @user_name, @Blog, @Pdate, @image)" 
                      
                      UpdateCommand="UPDATE [BlogBox] SET [Title] = @Title, [user_name] = @user_name, [Blog] = @Blog, [Pdate] = @Pdate, [image] = @image WHERE [id] = @id">
                      <DeleteParameters>
                          <asp:Parameter Name="id" Type="Int32" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="Title" Type="String" />
                          <asp:Parameter Name="user_name" Type="String" />
                          <asp:Parameter Name="Blog" Type="String" />
                          <asp:Parameter Name="Pdate" Type="DateTime" />
                          <asp:Parameter Name="image" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="Title" Type="String" />
                          <asp:Parameter Name="user_name" Type="String" />
                          <asp:Parameter Name="Blog" Type="String" />
                          <asp:Parameter Name="Pdate" Type="DateTime" />
                          <asp:Parameter Name="image" Type="String" />
                          <asp:Parameter Name="id" Type="Int32" />
                      </UpdateParameters>
                  </asp:SqlDataSource>
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                      DataSourceID="SqlDataSource1" 
                      onselectedindexchanged="GridView1_SelectedIndexChanged" 
        DataKeyNames="id" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
        BorderWidth="1px" CellPadding="3">
                      <Columns>         
                          <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                          <asp:BoundField DataField="Title" HeaderText="Title" 
                              SortExpression="Title" />
                        
                          <asp:BoundField DataField="user_name" HeaderText="user_name" 
                              SortExpression="user_name" />    
                          <asp:BoundField DataField="Blog" HeaderText="Blog" 
                              SortExpression="Blog" />
                               <asp:BoundField DataField="Pdate" HeaderText="Pdate" 
                              SortExpression="Pdate" />
                          <asp:BoundField DataField="image" HeaderText="image" 
                              SortExpression="image" />
                         
                        
                               <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                              SortExpression="id" InsertVisible="False" />
                      
                      </Columns>
                      <FooterStyle BackColor="White" ForeColor="#000066" />
                      <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                      <RowStyle ForeColor="#000066" />
                      <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                      <SortedAscendingCellStyle BackColor="#F1F1F1" />
                      <SortedAscendingHeaderStyle BackColor="#007DBB" />
                      <SortedDescendingCellStyle BackColor="#CAC9C9" />
                      <SortedDescendingHeaderStyle BackColor="#00547E" />
                  </asp:GridView>
                  <br />
                  <br />
                  <br />
                  <br />
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                      DeleteCommand="DELETE FROM [Reply] WHERE [id] = @id" 
                      InsertCommand="INSERT INTO [Reply] ([R_user], [R_image], [Title], [BReply], [R_Date]) VALUES (@R_user, @R_image, @Title, @BReply, @R_Date)" 
                      SelectCommand="SELECT * FROM [Reply]" 
                      
                      UpdateCommand="UPDATE [Reply] SET [R_user] = @R_user, [R_image] = @R_image, [Title] = @Title, [BReply] = @BReply, [R_Date] = @R_Date WHERE [id] = @id">
                      <DeleteParameters>
                          <asp:Parameter Name="id" Type="Int32" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="R_user" Type="String" />
                          <asp:Parameter Name="R_image" Type="String" />
                          <asp:Parameter Name="Title" Type="String" />
                          <asp:Parameter Name="BReply" Type="String" />
                          <asp:Parameter Name="R_Date" Type="DateTime" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="R_user" Type="String" />
                          <asp:Parameter Name="R_image" Type="String" />
                          <asp:Parameter Name="Title" Type="String" />
                          <asp:Parameter Name="BReply" Type="String" />
                          <asp:Parameter Name="R_Date" Type="DateTime" />
                          <asp:Parameter Name="id" Type="Int32" />
                      </UpdateParameters>
                  </asp:SqlDataSource>
                  <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                      DataKeyNames="id" DataSourceID="SqlDataSource2" 
                      onselectedindexchanged="GridView2_SelectedIndexChanged" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3">
                      <Columns>
                          <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                          <asp:BoundField DataField="R_user" HeaderText="R_user" 
                              SortExpression="R_user" />
                          <asp:BoundField DataField="R_image" HeaderText="R_image" 
                              SortExpression="R_image" />
                          <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                          <asp:BoundField DataField="BReply" HeaderText="BReply" 
                              SortExpression="BReply" />
                          <asp:BoundField DataField="R_Date" HeaderText="R_Date" 
                              SortExpression="R_Date" />
                          <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                              SortExpression="id" InsertVisible="False" />
                      </Columns>
                      <FooterStyle BackColor="White" ForeColor="#000066" />
                      <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                      <RowStyle ForeColor="#000066" />
                      <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                      <SortedAscendingCellStyle BackColor="#F1F1F1" />
                      <SortedAscendingHeaderStyle BackColor="#007DBB" />
                      <SortedDescendingCellStyle BackColor="#CAC9C9" />
                      <SortedDescendingHeaderStyle BackColor="#00547E" />
                  </asp:GridView>   </asp:Content>