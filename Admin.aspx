<%@ Page Title="" Language="C#"  MasterPageFile="~/MasterPage2.master"  AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Default6" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server"><br />
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                      
                      SelectCommand="SELECT Aptment.Doctor_name, Aptment.Confirmation, Aptment.DateOfAptment, Aptment.Time, result.bmi, result.wh, result.lbmm, result.bf, result.f, Feedback.Feedback, Feedback.Reply, userData.user_name, Doctor.Availability FROM Aptment INNER JOIN userData ON Aptment.user_name = userData.user_name INNER JOIN Feedback ON userData.user_name = Feedback.user_name INNER JOIN result ON userData.user_name = result.user_name INNER JOIN Doctor ON Aptment.Doctor_name = Doctor.Doctor_name">
                  </asp:SqlDataSource>
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                      DataSourceID="SqlDataSource1" 
                      onselectedindexchanged="GridView1_SelectedIndexChanged">
                      <Columns>         
                          <asp:BoundField DataField="Doctor_name" HeaderText="Doctor_name" 
                              SortExpression="Doctor_name" />
                        
                          <asp:BoundField DataField="Confirmation" HeaderText="Confirmation" 
                              SortExpression="Confirmation" />    
                          <asp:BoundField DataField="DateOfAptment" HeaderText="DateOfAptment" 
                              SortExpression="DateOfAptment" />
                               <asp:BoundField DataField="Time" HeaderText="Time" 
                              SortExpression="Time" />
                          <asp:BoundField DataField="bmi" HeaderText="bmi" 
                              SortExpression="bmi" />
                         
                        
                               <asp:BoundField DataField="wh" HeaderText="wh" 
                              SortExpression="wh" />
                          <asp:BoundField DataField="lbmm" HeaderText="lbmm" 
                              SortExpression="lbmm" />  
                          <asp:BoundField DataField="bf" HeaderText="bf" 
                              SortExpression="bf" />
                          
                          <asp:BoundField DataField="f" HeaderText="f" SortExpression="f" />
                          <asp:BoundField DataField="Feedback" HeaderText="Feedback" 
                              SortExpression="Feedback" />
                          <asp:BoundField DataField="Reply" HeaderText="Reply" SortExpression="Reply" />
                          <asp:BoundField DataField="user_name" HeaderText="user_name" 
                              SortExpression="user_name" />
                          <asp:BoundField DataField="Availability" HeaderText="Availability" 
                              SortExpression="Availability" />
                       
                      </Columns>
                  </asp:GridView>
                  <br />
   </asp:Content>

