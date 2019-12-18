<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="UserPage.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
   <div style="background-color:White">
              <br /><br />
 
          
                          <div class="row text-center title">
                              <h1 style="text-align:center">
                                  Services</h1>

                              <div style="text-align:center; font-size:xx-large" class="light muted">
                              These are the different services we offer.</div>
                          </div>
                          <div class="row services">
                              <div class="col-md-4">
                                  <div class="service">
                                      <div class="icon-holder">
                                          <img src="img/icons/heart-blue.png" alt="" class="icon">
                                      </div>
                                      <h4 class="heading">
                                       <a href="htest.aspx">   Health Test</a></h4>
                                      <p class="description">
                                         Take a health test to know how much healthy you are.</p></div>
                              </div>
                                <div class="col-md-4">
                                  <div class="service">
                                      <div class="icon-holder">
                                          <img src="img/icons/weight-blue.png" alt="" class="icon">
                                      </div>
                                      <h4 class="heading">
                                       <a href="dae.aspx">  Diet and exercise</a></h4>
                                      <p class="description">
                                          Based on your body type we give you several exercises and diet</p>   </div>
                              </div>
                              <div class="col-md-4">
                                  <div class="service">
                                      <div class="icon-holder">
                                          <img src="img/icons/guru-blue.png" alt="" class="icon">
                                      </div>
                                      <h4 class="heading">
                                          <a href="sp.aspx">Skin Problems</a></h4>
                                      <p class="description">
                                         Here are some informations about different types of skin diseases </p>  </div>
                              </div>
                            
                          </div>
                     
                      <div class="cut cut-bottom">
                      </div>
                     </div>
                  
</asp:Content>
