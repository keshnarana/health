<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master"  AutoEventWireup="true" CodeFile="manFeed.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<br /><asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Feedback] WHERE [Feedback] = @original_Feedback" 
        InsertCommand="INSERT INTO [Feedback] ([user_name], [Feedback], [Reply], [question], [answer], [Doctor_name]) VALUES (@user_name, @Feedback, @Reply, @question, @answer, @Doctor_name)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Feedback]" 
        
                      
                      UpdateCommand="UPDATE [Feedback] SET [user_name] = @user_name, [Reply] = @Reply, [question] = @question, [answer] = @answer, [Doctor_name] = @Doctor_name WHERE [Feedback] = @original_Feedback">
                  <DeleteParameters>
                      <asp:Parameter Name="original_Feedback" Type="String" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="user_name" Type="String" />
                      <asp:Parameter Name="Feedback" Type="String" />
                      <asp:Parameter Name="Reply" Type="String" />
                      <asp:Parameter Name="question" Type="String" />
                      <asp:Parameter Name="answer" Type="String" />
                      <asp:Parameter Name="Doctor_name" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="user_name" Type="String" />
                      <asp:Parameter Name="Reply" Type="String" />
                      <asp:Parameter Name="question" Type="String" />
                      <asp:Parameter Name="answer" Type="String" />
                      <asp:Parameter Name="Doctor_name" Type="String" />
                      <asp:Parameter Name="original_Feedback" Type="String" />
                  </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Feedback" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="user_name" HeaderText="user_name" 
                SortExpression="user_name" />
            <asp:BoundField DataField="Feedback" HeaderText="Feedback" 
                SortExpression="Feedback" ReadOnly="True" />
            <asp:BoundField DataField="Reply" HeaderText="Reply" SortExpression="Reply" />
            <asp:BoundField DataField="question" HeaderText="question" 
                SortExpression="question" />
            <asp:BoundField DataField="answer" HeaderText="answer" 
                SortExpression="answer" />
            <asp:BoundField DataField="Doctor_name" HeaderText="Doctor_name" 
                SortExpression="Doctor_name" />
        </Columns>
    </asp:GridView>    </asp:Content>