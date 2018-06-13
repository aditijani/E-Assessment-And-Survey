<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="accessmaterials.aspx.cs" Inherits="accessmaterials" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>


</div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" GridLines="None" width="100%">
        <Columns>
            <asp:BoundField DataField="sid" HeaderText="sid" SortExpression="sid" 
                Visible="False" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" 
                Visible="False" />
            <asp:BoundField DataField="path" HeaderText="path" SortExpression="path" 
                Visible="False" />
            <asp:BoundField DataField="deescription" HeaderText="deescription" 
                SortExpression="deescription" Visible="False" />
            <asp:BoundField DataField="gname" HeaderText="gname" SortExpression="gname" 
                Visible="False" />
            <asp:TemplateField>
                <ItemTemplate>
                    <table class="table table-hover table-bordered" >
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                            </td>
                            <td>
                                Group:<asp:Label ID="Label5" runat="server" Text='<%# Eval("gname") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("deescription") %>'></asp:Literal>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton2" runat="server" 
                                    CommandArgument='<%# Eval("path") %>' ForeColor="#0099CC" 
                                    onclick="LinkButton2_Click">View / Download</asp:LinkButton>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                     
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT groupformed.sid, upload.name, upload.path, upload.deescription, groupdata.gname FROM groupformed INNER JOIN material_share ON groupformed.gid = material_share.gid INNER JOIN upload ON material_share.mid = upload.mid INNER JOIN groupdata ON groupformed.gid = groupdata.gid WHERE (groupformed.sid = @sid)">
        <SelectParameters>
            <asp:SessionParameter Name="sid" SessionField="user" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="divmodel" TargetControlID="openmodel" CancelControlID="btnclose">
    </asp:ModalPopupExtender>
      <div id="openmodel" runat="server"></div>
   <div id="divmodel" style="background-color:White;box-shadow:5px  5px 5px 5px #888;border-radius:25px;">
 
 
  <div style="margin:10px 0 0 0px;border-radius:25px;">

 <div>
 
 <iframe width="610" height="410" src='<%=ViewState["path"] %>' id="i1" style="border-radius:25px;">
 
 
 </iframe>

 
 
 
 
 </div>
  
          
       <asp:Button ID="btnclose" runat="server" Text="cancel"  
          class="btn  btn-primary" Width="71px" onclick="btnclose_Click"/>
  
      <asp:Button ID="Button3" runat="server" Text="Download" 
          class="btn  btn-primary" onclick="Button3_Click1" Width="86px"/>

          
        

       </div>
</asp:Content>

