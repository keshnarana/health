<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Doctors.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br /><br />
                <p>
        &nbsp;</p>
    <p>
        <span style="color: rgb(51, 51, 51); font-family: robotoregular; font-size: 20px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
        Our team of&nbsp; doctors&nbsp; is here, join us in giving you the best of 
        modern healthcare to ensure you stay healthy, always.</span></p>
    <p>
        <span style="color: rgb(51, 51, 51); font-family: robotoregular; font-size: 20px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
        The Specilist doctors list is provided below.</span></p>
        <br />
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" Width="749px" BackColor="White" BorderColor="#3366CC" 
                      BorderStyle="None" BorderWidth="1px" CellPadding="4"  
                      HorizontalAlign="Center" VerticalAlign="Middle"  >
        <Columns>
            <asp:ImageField AccessibleHeaderText="Doctor" DataImageUrlField="Doctor" 
                HeaderText="Doctor">
                <ControlStyle Height="90px" Width="120px" />
                <HeaderStyle Height="90px" Width="120px" />
                <ItemStyle Height="90px" HorizontalAlign="Center" VerticalAlign="Middle" 
                    Width="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="Doctor_name" HeaderText="Doctor_name" 
                SortExpression="Doctor_name" >
            <ControlStyle Width="120px" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="Speciality" HeaderText="Speciality" 
                SortExpression="Speciality" >
            <ControlStyle Width="120px" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="Availability" HeaderText="Availability" 
                SortExpression="Availability" >
            <ControlStyle Width="120px" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" >
            <ControlStyle Width="140px" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
        </Columns>
              <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
              <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
              <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
              <RowStyle ForeColor="#003399" BackColor="White" />
              <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
              <SortedAscendingCellStyle BackColor="#EDF6F6" />
              <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
              <SortedDescendingCellStyle BackColor="#D6DFDF" />
              <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Doctor]"></asp:SqlDataSource>
              
            </asp:Content>