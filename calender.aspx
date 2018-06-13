<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="calender.aspx.cs" Inherits="calender" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register assembly="TimePicker" namespace="MKB.TimePicker" tagprefix="MKB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       .ankit
       {
           
           overflow:auto;
           
       }
        .style1
        {
            height: 36px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style=" margin-left:0px;">

                       
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
   <div>
        <table  id="tb2" style="margin-top:20px;"class="table table-bordered table-hover">
        <tr>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" Text="Class"></asp:Label>
            </td>
            <td class="style1">
                <asp:Label ID="Label3" runat="server" Text="label"></asp:Label>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Schedule"></asp:Label>
            </td>
            <td>
                No of Member :
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource9" ForeColor="#333333" 
                    GridLines="None" Height="16px" Width="111px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="description" HeaderText="Description" 
                            SortExpression="description" />
                        <asp:BoundField DataField="Location" HeaderText="Location" 
                            SortExpression="Location" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [description], [Location] FROM [e_class] WHERE ([classid] = @classid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="classid" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Label" Visible="False" ></asp:Label>
            </td>
        </tr>
    </table>

             </div>  
        

    
    
   </div>
   <div style=" margin-left:0px;">
   
   <div style="margin-top:30px;">
   
   
   
       <table  width="100%" >
           <tr>
               <td>
                   <asp:Button ID="Button1" runat="server" Text="Go to Previous Week" 
                       class="btn btn-info" onclick="Button1_Click" Height="30px" Width="197px"/>
                   
               </td>
               <td>
                  <asp:Label ID="Label5" runat="server" class="btn btn-info"
                       Text="Weekly Class Dates and Timings Table " ></asp:Label></td>
               <td>
                   <asp:Button ID="Button2" runat="server" Text="Go to Next Week" 
                       class="btn btn-info" onclick="Button2_Click" Height="27px" Width="197px"/></td>
           </tr>
       </table>
   
   
   
   </div>
   <div id="sch calender" style="margin-top:30px;overflow:auto;max-width:1200px;" >
       <table cellpadding="0" cellspacing="10" class="table table-bordered table-hover" >
       
           <tr>
               <td>
                   <asp:Label ID="ldate1" runat="server" Text="Label"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="ldate2" runat="server" Text="Label"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="ldate3" runat="server" Text="Label"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="ldate4" runat="server" Text="Label"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="ldate5" runat="server" Text="Label"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="ldate6" runat="server" Text="Label"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="ldate7" runat="server" Text="Label"></asp:Label>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lday1" runat="server" Text="Label"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="lday2" runat="server" Text="Label"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="lday3" runat="server" Text="Label"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="lday4" runat="server" Text="Label"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="lday5" runat="server" Text="Label"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="lday6" runat="server" Text="Label"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="lday7" runat="server" Text="Label"></asp:Label>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:DataList ID="DataList1" runat="server" DataKeyField="id" 
                       DataSourceID="SqlDataSource1">
                    
                   
                    
                       <ItemTemplate>
                    
                                   Class
                                   <br />
                                       <asp:Label ID="Label8" runat="server" Text='<%# Eval("stime") %>'></asp:Label>
                                 
                                       <asp:Label ID="Label9" runat="server" Text='<%# Eval("etime") %>'></asp:Label>
                              
                                  <br />
                                       <asp:Label ID="Label10" runat="server" Text='<%# Eval("location") %>'></asp:Label>
                                 
                           <br />
                       </ItemTemplate>
                       
                   </asp:DataList>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       SelectCommand="SELECT * FROM [schedule] WHERE (([class_id] = @class_id) AND ([sdate] = @sdate)) ORDER BY [id] DESC">
                       <SelectParameters>
                           <asp:QueryStringParameter Name="class_id" QueryStringField="id" Type="Int32" />
                           <asp:ControlParameter ControlID="ldate1" Name="sdate" PropertyName="Text" 
                               Type="String" />
                       </SelectParameters>
                   </asp:SqlDataSource>
               </td>
               <td>
                    <asp:DataList ID="DataList2" runat="server" DataKeyField="id" 
                       DataSourceID="SqlDataSource2">
                      
                       <ItemTemplate>
                         <%--  &nbsp;<table>
                               <tr>
                                   <td colspan="3" 
                                       >
                                       </td>
                               </tr>
                               <tr>
                                   <td >--%>
                                   Class
                                   <br />
                                       <asp:Label ID="Label8" runat="server" Text='<%# Eval("stime") %>'></asp:Label>
                                   <%--</td>
                                   <td >
                                       -</td>
                                   <td >--%>
                                       <asp:Label ID="Label9" runat="server" Text='<%# Eval("etime") %>'></asp:Label>
                                 <%--  </td>
                               </tr>
                               <tr>
                                   <td colspan="3" 
                                      >--%><br />
                                       <asp:Label ID="Label10" runat="server" Text='<%# Eval("location") %>'></asp:Label>
                                   <%--</td>
                               </tr>
                           </table>--%>
                           <br />
                       </ItemTemplate>
                   </asp:DataList>
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       SelectCommand="SELECT * FROM [schedule] WHERE (([class_id] = @class_id) AND ([sdate] = @sdate)) ORDER BY [id] DESC">
                       <SelectParameters>
                           <asp:QueryStringParameter Name="class_id" QueryStringField="id" Type="Int32" />
                           <asp:ControlParameter ControlID="ldate2" Name="sdate" PropertyName="Text" 
                               Type="String" />
                       </SelectParameters>
                   </asp:SqlDataSource>
                   
                   
                   </td>
               <td>
                    <asp:DataList ID="DataList3" runat="server" DataKeyField="id" 
                       DataSourceID="SqlDataSource3">
                      
                       <ItemTemplate>
                         <%--  &nbsp;<table>
                               <tr>
                                   <td colspan="3" 
                                       >
                                       </td>
                               </tr>
                               <tr>
                                   <td >--%>
                                   Class
                                   <br />
                                       <asp:Label ID="Label8" runat="server" Text='<%# Eval("stime") %>'></asp:Label>
                                   <%--</td>
                                   <td >
                                       -</td>
                                   <td >--%>
                                       <asp:Label ID="Label9" runat="server" Text='<%# Eval("etime") %>'></asp:Label>
                                 <%--  </td>
                               </tr>
                               <tr>
                                   <td colspan="3" 
                                      >--%><br />
                                       <asp:Label ID="Label10" runat="server" Text='<%# Eval("location") %>'></asp:Label>
                                   <%--</td>
                               </tr>
                           </table>--%>
                           <br />
                       </ItemTemplate>
                   </asp:DataList>
                   <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       SelectCommand="SELECT * FROM [schedule] WHERE (([class_id] = @class_id) AND ([sdate] = @sdate)) ORDER BY [id] DESC">
                       <SelectParameters>
                           <asp:QueryStringParameter Name="class_id" QueryStringField="id" Type="Int32" />
                           <asp:ControlParameter ControlID="ldate3" Name="sdate" PropertyName="Text" 
                               Type="String" />
                       </SelectParameters>
                   </asp:SqlDataSource>
                  
                  
                  </td>
               <td>
                  
                    <asp:DataList ID="DataList4" runat="server" DataKeyField="id" 
                       DataSourceID="SqlDataSource4">
                      
                       <ItemTemplate>
                         <%--  &nbsp;<table>
                               <tr>
                                   <td colspan="3" 
                                       >
                                       </td>
                               </tr>
                               <tr>
                                   <td >--%>
                                   Class
                                   <br />
                                       <asp:Label ID="Label8" runat="server" Text='<%# Eval("stime") %>'></asp:Label>
                                   <%--</td>
                                   <td >
                                       -</td>
                                   <td >--%>
                                       <asp:Label ID="Label9" runat="server" Text='<%# Eval("etime") %>'></asp:Label>
                                 <%--  </td>
                               </tr>
                               <tr>
                                   <td colspan="3" 
                                      >--%><br />
                                       <asp:Label ID="Label10" runat="server" Text='<%# Eval("location") %>'></asp:Label>
                                   <%--</td>
                               </tr>
                           </table>--%>
                           <br />
                       </ItemTemplate>
                   </asp:DataList>
                   <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       SelectCommand="SELECT * FROM [schedule] WHERE (([class_id] = @class_id) AND ([sdate] = @sdate)) ORDER BY [id] DESC">
                       <SelectParameters>
                           <asp:QueryStringParameter Name="class_id" QueryStringField="id" Type="Int32" />
                           <asp:ControlParameter ControlID="ldate4" Name="sdate" PropertyName="Text" 
                               Type="String" />
                       </SelectParameters>
                   </asp:SqlDataSource>
                  
                  
                  </td>
               <td>
                   
                     <asp:DataList ID="DataList5" runat="server" DataKeyField="id" 
                       DataSourceID="SqlDataSource5">
                      
                       <ItemTemplate>
                         <%--  &nbsp;<table>
                               <tr>
                                   <td colspan="3" 
                                       >
                                       </td>
                               </tr>
                               <tr>
                                   <td >--%>
                                   Class
                                   <br />
                                       <asp:Label ID="Label8" runat="server" Text='<%# Eval("stime") %>'></asp:Label>
                                   <%--</td>
                                   <td >
                                       -</td>
                                   <td >--%>
                                       <asp:Label ID="Label9" runat="server" Text='<%# Eval("etime") %>'></asp:Label>
                                 <%--  </td>
                               </tr>
                               <tr>
                                   <td colspan="3" 
                                      >--%><br />
                                       <asp:Label ID="Label10" runat="server" Text='<%# Eval("location") %>'></asp:Label>
                                   <%--</td>
                               </tr>
                           </table>--%>
                           <br />
                       </ItemTemplate>
                   </asp:DataList>
                   <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       SelectCommand="SELECT * FROM [schedule] WHERE (([class_id] = @class_id) AND ([sdate] = @sdate)) ORDER BY [id] DESC">
                       <SelectParameters>
                           <asp:QueryStringParameter Name="class_id" QueryStringField="id" Type="Int32" />
                           <asp:ControlParameter ControlID="ldate5" Name="sdate" PropertyName="Text" 
                               Type="String" />
                       </SelectParameters>
                   </asp:SqlDataSource>
                   
                   </td>
               <td>
                  
                    <asp:DataList ID="DataList6" runat="server" DataKeyField="id" 
                       DataSourceID="SqlDataSource6">
                      
                       <ItemTemplate>
                         <%--  &nbsp;<table>
                               <tr>
                                   <td colspan="3" 
                                       >
                                       </td>
                               </tr>
                               <tr>
                                   <td >--%>
                                   Class
                                   <br />
                                       <asp:Label ID="Label8" runat="server" Text='<%# Eval("stime") %>'></asp:Label>
                                   <%--</td>
                                   <td >
                                       -</td>
                                   <td >--%>
                                       <asp:Label ID="Label9" runat="server" Text='<%# Eval("etime") %>'></asp:Label>
                                 <%--  </td>
                               </tr>
                               <tr>
                                   <td colspan="3" 
                                      >--%><br />
                                       <asp:Label ID="Label10" runat="server" Text='<%# Eval("location") %>'></asp:Label>
                                   <%--</td>
                               </tr>
                           </table>--%>
                           <br />
                       </ItemTemplate>
                   </asp:DataList>
                   <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       SelectCommand="SELECT * FROM [schedule] WHERE (([class_id] = @class_id) AND ([sdate] = @sdate)) ORDER BY [id] DESC">
                       <SelectParameters>
                           <asp:QueryStringParameter Name="class_id" QueryStringField="id" Type="Int32" />
                           <asp:ControlParameter ControlID="ldate6" Name="sdate" PropertyName="Text" 
                               Type="String" />
                       </SelectParameters>
                   </asp:SqlDataSource>
                  
                  
                  
                  </td>
               <td>
                    <asp:DataList ID="DataList7" runat="server" DataKeyField="id" 
                       DataSourceID="SqlDataSource7">
                       
                       <ItemTemplate>
                         <%--  &nbsp;<table>
                               <tr>
                                   <td colspan="3" 
                                       >
                                       </td>
                               </tr>
                               <tr>
                                   <td >--%>
                                   Class
                                   <br />
                                       <asp:Label ID="Label8" runat="server" Text='<%# Eval("stime") %>'></asp:Label>
                                   <%--</td>
                                   <td >
                                       -</td>
                                   <td >--%>
                                       <asp:Label ID="Label9" runat="server" Text='<%# Eval("etime") %>'></asp:Label>
                                 <%--  </td>
                               </tr>
                               <tr>
                                   <td colspan="3" 
                                      >--%><br />
                                       <asp:Label ID="Label10" runat="server" Text='<%# Eval("location") %>'></asp:Label>
                                   <%--</td>
                               </tr>
                           </table>--%>
                           <br />
                       </ItemTemplate>
                   </asp:DataList>
                   <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       SelectCommand="SELECT * FROM [schedule] WHERE (([class_id] = @class_id) AND ([sdate] = @sdate)) ORDER BY [id] DESC">
                       <SelectParameters>
                           <asp:QueryStringParameter Name="class_id" QueryStringField="id" Type="Int32" />
                           <asp:ControlParameter ControlID="ldate7" Name="sdate" PropertyName="Text" 
                               Type="String" />
                       </SelectParameters>
                   </asp:SqlDataSource>
                  
                  
                  </td>
           </tr>
      

           <tr>
               <td>
                   <asp:Button ID="btn1" runat="server" Text="Add Class" 
                       class="btn btn-mini btn-primary" onclick="btn1_Click" Width="89px" /> </td>
               <td>
                   <asp:Button ID="btn2" runat="server" Text="Add Class" 
                       class="btn btn-mini btn-primary" onclick="btn1_Click" Width="88px"/> </td>
               <td>
                   <asp:Button ID="btn3" runat="server" Text="Add Class" 
                       class="btn btn-mini btn-primary" onclick="btn1_Click" Width="87px"/> </td>
               <td>
                   <asp:Button ID="btn4" runat="server" Text="Add Class" 
                       class="btn btn-mini btn-primary" onclick="btn1_Click" Width="87px"/> </td>
               <td>
                   <asp:Button ID="btn5" runat="server" Text="Add Class" 
                       class="btn btn-mini btn-primary" onclick="btn1_Click" Width="87px"/> </td>
               <td>
                   <asp:Button ID="btn6" runat="server" Text="Add Class" 
                       class="btn btn-mini btn-primary" onclick="btn1_Click" Width="89px"/> </td>
               <td>
                   <asp:Button ID="btn7" runat="server" Text="Add Class" 
                       class="btn btn-mini btn-primary" onclick="btn1_Click" Width="87px"/> </td>
           </tr>
          
       </table>
   
       
   
   
   
   
       <%--<table cellpadding="5" cellspacing="20" class="table table-bordered">
       
           <tr>
               <td>
                  </td>
               <td>
                   </td>
               <td>
                   </td>
               <td>
                  </td>
               <td>
                  </td>
               <td>
                   </td>
               <td>
                   </td>
           </tr>
          
       </table>--%>
       <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="divmodel" TargetControlID="openmodel"   >
       </asp:ModalPopupExtender>
   
       <div id="openmodel" runat="server"></div>
      
   <div id="divmodel" style="width:400px;background-color:White;box-shadow:5px  5px 5px 5px #888;border-radius:25px;">
   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
 
  <div style="margin:10px 0 0 20px;">

  <div class="control-group">
   
    <div class="controls">
    
        <asp:Label ID="lblerror" runat="server" 
            Text="End Time Must be after Start Time" Visible="False"></asp:Label>
    
    </div>
    </div>
  <div class="control-group">
    <label class="control-label" for="inputEmail">Date</label>
    <div class="controls">
    
        <asp:Label ID="sdate" runat="server" Text="Label"></asp:Label>
        
        
    </div>
    </div>
    
   <div class="control-group">
    <label class="control-label" for="inputEmail">start time</label>
    <div class="controls">
    
        <MKB:TimeSelector ID="TimeSelector1" runat="server" 
            DisplaySeconds="False" SelectedTimeFormat="TwentyFour">
        </MKB:TimeSelector>
    
    </div>
    </div>
     <div class="control-group">
    <label class="control-label" for="inputEmail">End time</label>
    <div class="controls">
    
      
        
        <MKB:TimeSelector ID="TimeSelector2" runat="server" DisplaySeconds="False" 
            SelectedTimeFormat="TwentyFour">
        </MKB:TimeSelector>
        
        
      
        
        
    </div>
    </div>
  
          
       <asp:Button ID="btnclose" runat="server" Text="cancel" onclick="Button3_Click" 
          class="btn btn-mini btn-primary" Width="71px"/>
  
      <asp:Button ID="Button3" runat="server" Text="Save" 
          class="btn btn-mini btn-primary" onclick="Button3_Click1" Width="86px"/>

          
        </ContentTemplate>
</asp:UpdatePanel>

       </div>
      
   </div>
   
   
   </div>


   <div>
   &nbsp
   </div>
   <div style="border-width: thin; border-color: #000000; color: #666666; font-family: 'Arial Narrow'; font-size: medium; font-weight: bold; background-color: #CCCCCC; border-style: solid solid none solid; height:30px; width:252px;padding-top:10px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Scheduled class Details</div>


   <div>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
           DataSourceID="SqlDataSource8" CellPadding="4" ForeColor="#333333" 
           GridLines="None" onselectedindexchanged="GridView2_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
      <Columns>
          <asp:BoundField DataField="sdate" HeaderText="Date" SortExpression="sdate" />
          <asp:BoundField DataField="stime" HeaderText="Start Time" 
              SortExpression="stime" />
          <asp:BoundField DataField="etime" HeaderText="End Time" 
              SortExpression="etime" />
          <asp:BoundField DataField="location" HeaderText="location" 
              SortExpression="location" Visible="False" />
          <asp:BoundField DataField="description" HeaderText="description" 
              SortExpression="description" Visible="False" />
      </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
           
           
           
           SelectCommand="SELECT schedule.sdate, schedule.stime, schedule.etime, e_class.location,e_class.description FROM e_class INNER JOIN schedule ON e_class.classid = schedule.class_id WHERE (e_class.classid =@cid) AND (e_class.eid=@eid) ORDER BY [sdate] DESC">

             
                         <SelectParameters>
                         
                         <asp:QueryStringParameter Name="cid" Type="Int32" QueryStringField="id" />
                         
                         <asp:SessionParameter Name="eid" Type="Int32" SessionField="user" />
                         </SelectParameters>

       </asp:SqlDataSource>
   </div>
</asp:Content>

