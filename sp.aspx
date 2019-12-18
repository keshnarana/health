<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sp.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server"> <style>
        #templatemo_content_right .right_column_section
{
    float: right;
    margin-right:0px;
  
    
}

.right_column_section .right_column_section_title
{  margin-right:0px;
    height: 79px;
    background: url(images/templatemo_right_section_bg.jpg) no-repeat;
  
}

.right_column_section .right_column_section_body
{  margin-right:0px;
    clear: both;
    padding: 0 30px 0 30px;
    height: 71px;
    float: right;
      background-color:#00ff00;
}

.right_column_section_body .image_box
{  margin-right:0px;
    float: right;
    width: 240px;
    height: 412px;
   padding:2px;
   border:2px solid #00ff00;
   background-color: #0055b3;
}
</style>
   <div id="templatemo_content_right">
                <div class="right_column_section">
                           <div class="image_box" >
                                
                            </div>
                             <div class="right_column_section_body"><div style="text-align:center; font-size:xx-large;">Healthy Skin Tip: </div> <br />
                           <div class="image_box" >
                                <img  alt="image" border="5px" style="height: 405px;  
                                    width: 232px;" src="img/si1.jpg" />
                            </div>
                
                </div>
             
                &nbsp;</div></div>
			 
                <p class="h1"><br />
 &nbsp;
 Select a skin problem to seek information about it. 
    
    <p><br /></p>
    <p >
       
      <asp:LinkButton ID="LinkButton1" style="text-align:left" runat="server"  onclick="LinkButton1_Click">Everyday skin problems</asp:LinkButton>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                 <p >
       
                     &nbsp;</p>
    <p >
       <asp:LinkButton ID="LinkButton2" style="text-align:left" runat="server" onclick="LinkButton2_Click">Skin cysts,lumps and bumps</asp:LinkButton> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
    <p >
      <asp:LinkButton ID="LinkButton3" style="text-align:left" runat="server" onclick="LinkButton3_Click">Rashes</asp:LinkButton> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p >
        &nbsp;</p>
    <p >
      <asp:LinkButton ID="LinkButton4" style="text-align:left" runat="server" onclick="LinkButton4_Click">Bugs and bites</asp:LinkButton> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
    <p >
        <asp:LinkButton ID="LinkButton5" style="text-align:left" runat="server" onclick="LinkButton5_Click">Chronic skin problems</asp:LinkButton> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
    <p >
        <asp:LinkButton ID="LinkButton7" style="text-align:left" runat="server" onclick="LinkButton7_Click">Bacterial skin problems</asp:LinkButton> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
    <p >
       <asp:LinkButton ID="LinkButton6" style="text-align:left" runat="server" onclick="LinkButton6_Click">Viral skin problems</asp:LinkButton> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    
    <p>
        &nbsp;</p>
    <p >
 <asp:LinkButton ID="LinkButton8" style="text-align:left" runat="server" onclick="LinkButton8_Click">other skin diseases</asp:LinkButton>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <br />
                </div>
              <!-- project team & activity end -->
</div>
        
    
</asp:Content>
