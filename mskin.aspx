<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mskin.aspx.cs" Inherits="Default4" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server"><div>

            <!--main content start-->
            <section id="main-content">
          <section class="wrapper">
              <!--overview start-->
			  <div class="col-md-6 portlets"><div style="  background: radial-gradient(circle, white, skyblue);"><br /><br />  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Skin1] WHERE [Name] = @original_Name AND [Symptoms] = @original_Symptoms AND [Symptoms1] = @original_Symptoms1 AND [Cause] = @original_Cause AND [Treatment] = @original_Treatment AND [Treatment1] = @original_Treatment1 AND [Treatment2] = @original_Treatment2 AND [Extra] = @original_Extra AND [imageS] = @original_imageS" 
        InsertCommand="INSERT INTO [Skin1] ([Name], [Symptoms], [Symptoms1], [Cause], [Treatment], [Treatment1], [Treatment2], [Extra], [imageS]) VALUES (@Name, @Symptoms, @Symptoms1, @Cause, @Treatment, @Treatment1, @Treatment2, @Extra, @imageS)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Skin1]" 
        UpdateCommand="UPDATE [Skin1] SET [Symptoms] = @Symptoms, [Symptoms1] = @Symptoms1, [Cause] = @Cause, [Treatment] = @Treatment, [Treatment1] = @Treatment1, [Treatment2] = @Treatment2, [Extra] = @Extra, [imageS] = @imageS WHERE [Name] = @original_Name AND [Symptoms] = @original_Symptoms AND [Symptoms1] = @original_Symptoms1 AND [Cause] = @original_Cause AND [Treatment] = @original_Treatment AND [Treatment1] = @original_Treatment1 AND [Treatment2] = @original_Treatment2 AND [Extra] = @original_Extra AND [imageS] = @original_imageS">
        <DeleteParameters>
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Symptoms" Type="String" />
            <asp:Parameter Name="original_Symptoms1" Type="String" />
            <asp:Parameter Name="original_Cause" Type="String" />
            <asp:Parameter Name="original_Treatment" Type="String" />
            <asp:Parameter Name="original_Treatment1" Type="String" />
            <asp:Parameter Name="original_Treatment2" Type="String" />
            <asp:Parameter Name="original_Extra" Type="String" />
            <asp:Parameter Name="original_imageS" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Symptoms" Type="String" />
            <asp:Parameter Name="Symptoms1" Type="String" />
            <asp:Parameter Name="Cause" Type="String" />
            <asp:Parameter Name="Treatment" Type="String" />
            <asp:Parameter Name="Treatment1" Type="String" />
            <asp:Parameter Name="Treatment2" Type="String" />
            <asp:Parameter Name="Extra" Type="String" />
            <asp:Parameter Name="imageS" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Symptoms" Type="String" />
            <asp:Parameter Name="Symptoms1" Type="String" />
            <asp:Parameter Name="Cause" Type="String" />
            <asp:Parameter Name="Treatment" Type="String" />
            <asp:Parameter Name="Treatment1" Type="String" />
            <asp:Parameter Name="Treatment2" Type="String" />
            <asp:Parameter Name="Extra" Type="String" />
            <asp:Parameter Name="imageS" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Symptoms" Type="String" />
            <asp:Parameter Name="original_Symptoms1" Type="String" />
            <asp:Parameter Name="original_Cause" Type="String" />
            <asp:Parameter Name="original_Treatment" Type="String" />
            <asp:Parameter Name="original_Treatment1" Type="String" />
            <asp:Parameter Name="original_Treatment2" Type="String" />
            <asp:Parameter Name="original_Extra" Type="String" />
            <asp:Parameter Name="original_imageS" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Name" DataSourceID="SqlDataSource1" 
         OnRowDataBound="GridView1_RowDataBound"
            Style="position: static">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" >
            <ControlStyle Width="80px" />
            <FooterStyle Width="80px" />
            <HeaderStyle Width="80px" />
            <ItemStyle Width="80px" />
            </asp:CommandField>
            <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" 
                SortExpression="Name" />
            <asp:BoundField DataField="Symptoms" HeaderText="Symptoms" 
                SortExpression="Symptoms" />
            <asp:BoundField DataField="Symptoms1" HeaderText="Symptoms1" 
                SortExpression="Symptoms1" />
            <asp:BoundField DataField="Cause" HeaderText="Cause" SortExpression="Cause" />
            <asp:BoundField DataField="Treatment" HeaderText="Treatment" 
                SortExpression="Treatment" />
            <asp:BoundField DataField="Treatment1" HeaderText="Treatment1" 
                SortExpression="Treatment1" />
            <asp:BoundField DataField="Treatment2" HeaderText="Treatment2" 
                SortExpression="Treatment2" />
            <asp:BoundField DataField="Extra" HeaderText="Extra" SortExpression="Extra" />
            <asp:BoundField DataField="imageS" HeaderText="imageS" 
                SortExpression="imageS" />
        </Columns>
    </asp:GridView>&nbsp;</div></div>
    <br />
    <br />  </div>
              <!-- project team & activity end -->

            </section> </section>
    </asp:Content>

