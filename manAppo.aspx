<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master"  AutoEventWireup="true" CodeFile="manAppo.aspx.cs" Inherits="Default3" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server"><br />
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Aptment] WHERE [DateOfAptment] = @original_DateOfAptment AND (([Doctor_name] = @original_Doctor_name) OR ([Doctor_name] IS NULL AND @original_Doctor_name IS NULL)) AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([Time] = @original_Time) OR ([Time] IS NULL AND @original_Time IS NULL)) AND (([Confirmation] = @original_Confirmation) OR ([Confirmation] IS NULL AND @original_Confirmation IS NULL))" 
        InsertCommand="INSERT INTO [Aptment] ([Doctor_name], [user_name], [DateOfAptment], [Time], [Confirmation]) VALUES (@Doctor_name, @user_name, @DateOfAptment, @Time, @Confirmation)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Aptment]" 
        
                      UpdateCommand="UPDATE [Aptment] SET [Doctor_name] = @Doctor_name, [user_name] = @user_name, [Time] = @Time, [Confirmation] = @Confirmation WHERE [DateOfAptment] = @original_DateOfAptment AND (([Doctor_name] = @original_Doctor_name) OR ([Doctor_name] IS NULL AND @original_Doctor_name IS NULL)) AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([Time] = @original_Time) OR ([Time] IS NULL AND @original_Time IS NULL)) AND (([Confirmation] = @original_Confirmation) OR ([Confirmation] IS NULL AND @original_Confirmation IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_DateOfAptment" DbType="DateTime" />
            <asp:Parameter Name="original_Doctor_name" Type="String" />
            <asp:Parameter Name="original_user_name" Type="String" />
            <asp:Parameter Name="original_Time" Type="String" />
            <asp:Parameter Name="original_Confirmation" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Doctor_name" Type="String" />
            <asp:Parameter Name="user_name" Type="String" />
            <asp:Parameter DbType="Date" Name="DateOfAptment" />
            <asp:Parameter Name="Time" Type="String" />
            <asp:Parameter Name="Confirmation" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Doctor_name" Type="String" />
            <asp:Parameter Name="user_name" Type="String" />
            <asp:Parameter Name="Time" Type="String" />
            <asp:Parameter Name="Confirmation" Type="String" />
            <asp:Parameter Name="original_DateOfAptment" DbType="DateTime" />
            <asp:Parameter Name="original_Doctor_name" Type="String" />
            <asp:Parameter Name="original_user_name" Type="String" />
            <asp:Parameter Name="original_Time" Type="String" />
            <asp:Parameter Name="original_Confirmation" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
                  <br />
                  Today is
                  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                  .<br />
                  <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="DateOfAptment" DataSourceID="SqlDataSource1"  OnRowDataBound="GridView1_RowDataBound"
            Style="position: static">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Doctor_name" HeaderText="Doctor_name" 
                SortExpression="Doctor_name" />
            <asp:BoundField DataField="user_name" HeaderText="user_name" 
                SortExpression="user_name" />
            <asp:BoundField DataField="DateOfAptment" HeaderText="DateOfAptment" 
                SortExpression="DateOfAptment" ReadOnly="True" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="Confirmation" HeaderText="Confirmation" 
                SortExpression="Confirmation" />
        </Columns>
    </asp:GridView>
                  <br />
                  <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                      Text="Discard outdated appointments" />
                  <br />
 </asp:Content>