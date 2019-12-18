<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="Default4" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <!--main content start--><script type="text/javascript">
                                  function SelectDate(e) {
                                      var PresentDay = new Date();
                                      var dateOfBirth = e.get_selectedDate();
                                      var age = PresentDay.getFullYear() - dateOfBirth.getFullYear();
                                      age = Math.floor(age / (1000 * 60 * 60 * 24 * 365.25));
                                      var months = (PresentDay.getMonth() - dateOfBirth.getMonth() + (12 * (PresentDay.getFullYear() - dateOfBirth.getFullYear())));
                                      alert("You Are Of " + Math.round(months / 12) + " Years");
                                      document.getElementById("<%=TextBoxA.ClientID%>").value = Math.round(months / 12);
                                      document.getElementById('assignedIDHiddenInput').value = Math.round(months / 12);
                                  }
                                   
    </script><style type="text/css"> 
.cal .ajax__calendar_container {cursor:default;width:500px;font-size:11px;text-align:left;font-family:tahoma,verdana,helvetica; background-color:#ddd5d0; margin-right:70px;}
.cal .ajax__calendar_body {height:190px;width:500px;position:relative;overflow:hidden;margin:0px;text-align:left; margin-right:70px;}
.cal .ajax__calendar_days, .ajax__calendar_months, .ajax__calendar_years {top:0px;left:0px;height:139px;width:500px;text-align:center;margin:inherit;margin-right:70px;}
.cal .ajax__calendar_container TABLE {padding:0px;margin:0px;font-size:11px; padding-right:0px;
padding-left:0px;
border:inherit;}
.cal .ajax__calendar_container TD {padding:5px 3px 5px 5px;margin:0px;font-size:11px;overflow:hidden;padding-right:0px;
padding-left:0px;
border:inherit;}
.cal .ajax__calendar_header {height:18px;width:100%;margin-right:50px;}
.cal .ajax__calendar_title {cursor:pointer;font-weight:bold; margin-left:12px; margin-right:12px; background-color:White;padding:0 2px;}
.cal .ajax__calendar_footer {height:18px; background-color:White;margin-right:0px;}
.cal .ajax__calendar_today {cursor:pointer;padding-top:3px; margin-right:0px;}
.cal .ajax__calendar_dayname {height:30px;width:30px;text-align:left;padding:2px 2px;background-color:White;margin-top: 5px;font-size:15px;margin-right:0px;}
.cal .ajax__calendar_day {height:15px;width:15px;text-align:left;padding:2px 2px;cursor:pointer;margin-right:50px;}
.cal .ajax__calendar_month {height:30px;width:30px;text-align:left;cursor:pointer;overflow:hidden;margin-right:50px;}
.cal .ajax__calendar_year {height:30px;width:30px;text-align:left;cursor:pointer;background-color:#ddd5d0;margin-right:50px; }
 

/* styles for invalid dates as defined by startDate and endDate*/
.cal .ajax__calendar .ajax__calendar_invalid .ajax__calendar_day {background-color:#ffffff;border-color:#ffffff; color:#ffffff; text-decoration:line-through; cursor:default;}
.cal .ajax__calendar .ajax__calendar_invalid .ajax__calendar_month {background-color:#ffffff;border-color:#ffffff; color:#ffffff; text-decoration:line-through; cursor:default;}
.cal .ajax__calendar .ajax__calendar_invalid .ajax__calendar_year {background-color:#ffffff;border-color:#ffffff; color:#ffffff; text-decoration:line-through; cursor:default;}
 .cal  .ajax__calendar .ajax__calendar_invalid .ajax__calendar_today{visibility:hidden; cursor:default;}
 </style>
 <br /><br />
                  
  <h3  >  NOTE: This test is not a confirmatory 
           diagnosis. we suggest that you consult your physician in case of doubts.<br />
           <br />
           Test works for age group 18 to 60.<br />
      <br />
           Keep a tape-measure handy and enter your body measurements.<br /></h3>
&nbsp;<table class="table bootstrap-datatable countries" >
         <tr>  <td class="style5"></td> <td></td>
            </tr>   
            <tr>
                <td class="style5" >
                   <asp:Label ID="Labelg" runat="server" Text="Gender:" Font-Size="XX-Large"></asp:Label></td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal" AutoPostBack="True" 
                          onselectedindexchanged="RadioButtonList1_SelectedIndexChanged"
                        ForeColor="#000099" BackColor="#00ff00" Font-Size="X-Large" Height="39px" Width="454px">
        <asp:ListItem >Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:RadioButtonList>
                </td>
             
            </tr>
            <tr>  <td class="style5"></td> <td>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ErrorMessage="*selection is must" ControlToValidate="RadioButtonList1" 
                    ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="style5"  >
                   <asp:Label ID="Label1" runat="server" Text="Date of Birth:" Font-Size="XX-Large"></asp:Label>
                </td>
                <td>
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:CalendarExtender runat="server" TargetControlID="txtDATE_OF_BIRTH" Format="yyyy-MM-dd"   CssClass="cal"  OnClientDateSelectionChanged="SelectDate"
                        ID="CalendarExtender1" DefaultView="Years" PopupPosition="TopLeft" ></asp:CalendarExtender>
        
    <asp:TextBox ID="txtDATE_OF_BIRTH" runat="server" Font-Size="12px" Height="39px" Width="506px"  ></asp:TextBox>
    <br />&nbsp;</td>
            </tr> <tr>  <td class="style5"></td> <td>
                  
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
           ErrorMessage="*DOB" ControlToValidate="txtDATE_OF_BIRTH" 
                    ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="style5"  >
                   <asp:Label ID="LabelA" runat="server" Text="Age:" Font-Size="XX-Large"></asp:Label>
                </td>
                <td>
                     <asp:TextBox ID="TextBoxA" ReadOnly="true"  runat="server" Height="39px" Width="506px"
                        Font-Size="Large" ClientIDMode="Static" ></asp:TextBox>&nbsp;</td>
            </tr> <tr>  <td class="style5"></td> <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                       ControlToValidate="TextBoxA" ErrorMessage="*Age" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                   </td>
            </tr>
            <tr>
                <td class="style5" >
                  <asp:Label ID="LabelW" runat="server" Text="Weight in kg:" Font-Size="XX-Large"></asp:Label></td>
                <td >
                     <asp:TextBox ID="TextBoxW" runat="server"  Height="39px" Width="506px" 
                         Font-Size="Large" ></asp:TextBox>
                </td>
                
            </tr> <tr>  <td class="style5"></td> <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                       ControlToValidate="TextBoxW" ErrorMessage="*Weight" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                   </td>
            </tr>
            <tr>
                <td class="style5" >
                    <asp:Label ID="LabelH" runat="server" Text="Height:" 
                        Font-Size="XX-Large"></asp:Label>
                   </td>
                <td >
                   <b> Feet:</b><asp:TextBox
        ID="TextBoxFoot" runat="server"  Height="39px" Width="194px" Font-Size="Large" ></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> inch:</b><asp:TextBox
        ID="TextBoxinch" runat="server"  Height="39px" Width="194px" Font-Size="Large" ></asp:TextBox>
                &nbsp;&nbsp;
                </td>
              
            </tr> <tr>  <td class="style5"></td> <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                       ControlToValidate="TextBoxFoot" ErrorMessage="*Foot" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                       ControlToValidate="TextBoxinch" ErrorMessage="*inch" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                   </td>
            </tr>
            <tr>
                <td class="style5" >
    <asp:Label ID="LabelHip" runat="server" Text="hip in inches:" Font-Size="XX-Large"></asp:Label>
                   </td>
                <td >
    <asp:TextBox ID="TextBoxHip" runat="server"  Height="39px" Width="506px" Font-Size="Large" ></asp:TextBox>
                </td>
              
            </tr> <tr>  <td class="style5"></td> <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                       ControlToValidate="TextBoxHip" ErrorMessage="*Hip" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                   </td>
            </tr>   <tr>
                <td class="style5" >
    <asp:Label ID="Label2" runat="server" Text="Chest in inches:" Font-Size="XX-Large"></asp:Label>
                   </td>
                <td >
    <asp:TextBox ID="TextBox1" runat="server"  Height="39px" Width="506px" Font-Size="Large" ></asp:TextBox>
                </td>
              
            </tr> <tr>  <td class="style5"></td> <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                       ControlToValidate="TextBox1" ErrorMessage="*Chest" ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                   </td>
            </tr>
            <tr>
                <td class="style5" >
    <asp:Label ID="LabelWaist" runat="server" Text="Waist in inches:" Font-Size="XX-Large"></asp:Label>
                   </td>
                <td>
                    <asp:TextBox
        ID="TextBoxWaist" runat="server"  Height="39px" Width="506px" Font-Size="Large" ></asp:TextBox>
                </td>
              
            </tr> <tr>  <td class="style5"></td> <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                       ControlToValidate="TextBoxWaist" ErrorMessage="*Waist" ForeColor="Red" 
                                  Font-Size="Large"></asp:RequiredFieldValidator>
                   </td>
            </tr>
            <tr>
                <td class="style5">
    <asp:Label ID="LabelActive" runat="server" Text="How active are you?" Font-Size="XX-Large"></asp:Label>
                   </td>
                <td >
                    <asp:DropDownList
        ID="DropDownList1" runat="server"  Height="39px" Width="454px"  Font-Size="Large" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" >
        <asp:ListItem>Sedentary</asp:ListItem>
        <asp:ListItem>Moderately Active</asp:ListItem>
        <asp:ListItem>Very Active</asp:ListItem>
    </asp:DropDownList>
                </td>
              
            </tr>
            </table >
         
       </div>
       <br />
    <div style="  background: radial-gradient(circle, white, skyblue);">
              
       
              
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
       
              
    <asp:Label ID="LabelF" runat="server" Text="How often do you eat the following?" 
               Font-Bold="True" Font-Italic="True" Font-Size="XX-Large"></asp:Label>
               <br />
               <br />
                  <table class="table bootstrap-datatable countries"  >  <tr>  <td class="style4"></td> <td></td>
            </tr>   
            <tr>
                <td class="style4"  >
    <asp:Label ID="LabelFV" runat="server" Text="Fruits &amp; vegetables:" Font-Size="XX-Large"></asp:Label>
                   </td>
                <td >
    <asp:RadioButtonList ID="RadioButtonList2" runat="server" Height="39px" Width="454px"  RepeatDirection="Horizontal" 
                        ForeColor="#000099" BackColor="#00ff00" Font-Size="X-Large" >
        <asp:ListItem>Sometimes</asp:ListItem>
        <asp:ListItem>Often</asp:ListItem>
    </asp:RadioButtonList>
                </td>
              
            </tr> <tr>  <td class="style4" ></td> <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                              ControlToValidate="RadioButtonList2" ErrorMessage="*Selection is must" 
                              ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                          </td>
            </tr>
            <tr>
                <td class="style4"  >
    <asp:Label ID="LabelND" runat="server" Text="Nuts and Dry fruits:" Font-Size="XX-Large"></asp:Label>
                   </td>
                <td >
    <asp:RadioButtonList ID="RadioButtonList3" Height="39px" Width="454px"  runat="server" RepeatDirection="Horizontal" 
                        ForeColor="#000099" BackColor="#00ff00" Font-Size="X-Large" >
        <asp:ListItem>Sometimes</asp:ListItem>
        <asp:ListItem>Often</asp:ListItem>
    </asp:RadioButtonList>
                </td>
              
            </tr> <tr>  <td class="style4" ></td> <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                              ControlToValidate="RadioButtonList3" ErrorMessage="*Selection is must" 
                              ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                          </td>
            </tr>
                   <tr>
                <td class="style4"  >
    <asp:Label ID="LabelFF" runat="server" Text="Fast Foods:" Font-Size="XX-Large"></asp:Label>
                   </td>
                <td >
    <asp:RadioButtonList ID="RadioButtonList4" Height="39px" Width="454px"  runat="server" RepeatDirection="Horizontal" 
                        ForeColor="#000099" BackColor="#00ff00" Font-Size="X-Large">
        <asp:ListItem>Sometimes</asp:ListItem>
        <asp:ListItem>Often</asp:ListItem>
    </asp:RadioButtonList>
                </td>
              
            </tr> <tr>  <td class="style4">
                          &nbsp;</td><td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                              ControlToValidate="RadioButtonList4" ErrorMessage="*Selection is must" 
                              ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                          </td>
            </tr>
                   <tr>
                <td class="style4"  >
    <asp:Label ID="LabelWG" runat="server" Text="Whole Grain products:" Font-Size="XX-Large"></asp:Label>
                   </td>
                <td >
    <asp:RadioButtonList ID="RadioButtonList5" Height="39px" Width="454px"  runat="server" RepeatDirection="Horizontal" 
                        ForeColor="#000099" BackColor="#00ff00" Font-Size="X-Large" >
        <asp:ListItem>Sometimes</asp:ListItem>
        <asp:ListItem>Often</asp:ListItem>
    </asp:RadioButtonList>
                </td>
              
            </tr> <tr>  <td class="style4" ></td> <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                              ControlToValidate="RadioButtonList5" ErrorMessage="*Selection is must" 
                              ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                          </td>
            </tr>
                   <tr>
                <td class="style4"  >
    <asp:Label ID="LabelFMM" runat="server" Text="Fish, Meat and Milk products:" 
                        Font-Size="XX-Large"></asp:Label>
                   </td>
                <td >
    <asp:RadioButtonList ID="RadioButtonList6" Height="39px" Width="454px"  runat="server" RepeatDirection="Horizontal" 
                        ForeColor="#000099" BackColor="#00ff00" Font-Size="X-Large" >
        <asp:ListItem>Sometimes</asp:ListItem>
        <asp:ListItem>Often</asp:ListItem>
    </asp:RadioButtonList>
                </td>
              
            </tr> <tr>  <td class="style4" ></td> <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                              ControlToValidate="RadioButtonList6" ErrorMessage="*Selection is must" 
                              ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                          </td>
            </tr>
                   <tr>
                <td class="style4"  >
    <asp:Label ID="LabelSmoke" runat="server" Text="How many Cigarettes do you smoke in a day?" 
                        Font-Size="XX-Large"></asp:Label>
                   </td>
                <td >
    <asp:RadioButtonList ID="RadioButtonList7" Height="39px" Width="454px"  runat="server" RepeatDirection="Horizontal" 
                        ForeColor="#000099" BackColor="#00ff00" Font-Size="X-Large">
        <asp:ListItem>I do not smoke</asp:ListItem>
        <asp:ListItem>1-5 per day</asp:ListItem>
        <asp:ListItem>More than 5</asp:ListItem>
    </asp:RadioButtonList>
                </td>
              
            </tr> <tr>  <td class="style4" ></td> <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                              ControlToValidate="RadioButtonList7" ErrorMessage="*Selection is must" 
                              ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>
                          </td>
            </tr>
                   <tr>
                <td class="style4" >
    <asp:Label ID="LabelAlohol" runat="server" 
                        Text="How many units of alcohol do you consume in a day?" 
                        Font-Size="XX-Large"></asp:Label>
                   </td>
                <td >
    <asp:RadioButtonList ID="RadioButtonList8" Height="39px" Width="454px"  runat="server" RepeatDirection="Horizontal" 
                        ForeColor="#000099" BackColor="#00ff00" Font-Size="X-Large">
        <asp:ListItem>I do not drink</asp:ListItem>
        <asp:ListItem>1-5 units per day</asp:ListItem>
        <asp:ListItem>More than 5 units</asp:ListItem>
    </asp:RadioButtonList>
                </td>
              
            </tr> <tr>  <td class="style4"></td> <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                              ControlToValidate="RadioButtonList8" ErrorMessage="*Selection is must" 
                              ForeColor="Red" Font-Size="Large"></asp:RequiredFieldValidator>   <input id="assignedIDHiddenInput" name="assignedIDHiddenInput" type="hidden" />&nbsp;</td>
            </tr>

        </table>
    

           &nbsp;
    

       <asp:Button ID="ButtonS" runat="server" 
            Text="Submit" value="Submit" OnClick="ButtonS_Click" Height="63px" 
            Width="218px" />

        
    </div>
     </div>
     <style type="text/css">
        .style4
        {
            width: 600px;
        }
        .style5
        {
            width: 600px;
        }
    </style>



</asp:Content>







