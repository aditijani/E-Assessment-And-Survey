<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="accessvideo.aspx.cs" Inherits="accessvideo" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div>



    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2" width="100%">
        <Columns>
            <asp:BoundField DataField="sid" HeaderText="sid" SortExpression="sid" 
                Visible="False" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" 
                Visible="False" />
            <asp:BoundField DataField="path" HeaderText="path" SortExpression="path" 
                Visible="False" />
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
                                <asp:LinkButton ID="LinkButton2" runat="server" 
                                    CommandArgument='<%# Eval("path") %>' ForeColor="#0099CC" onclick="LinkButton2_Click" 
                                  >View / Download</asp:LinkButton>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                     
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

      <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT groupformed.sid, video.name, video.path, groupdata.gname FROM groupformed INNER JOIN video_share ON groupformed.gid = video_share.gid INNER JOIN video ON video_share.vid = video.id INNER JOIN groupdata ON groupformed.gid = groupdata.gid WHERE (groupformed.sid = @sid)">
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
 
 <%if(ViewState["video"]!=null){ %>
                <a class="player" href='<% =ViewState["video"] %>' 
                    style="height: 400px; width: 750px; display: block"></a>
   <%}else { %>
                <a class="player" 
                    href="myvideo/Part%208%20%20Data%20access%20in%20mvc%20using%20entity%20framework.mp4" 
                    style="height: 400px; width: 750px; display: block"></a>
        <%} %>
 
 
 
 
 </div>
  
          
       <asp:Button ID="btnclose" runat="server" Text="cancel"  
          class="btn  btn-primary" Width="71px" onclick="btnclose_Click" />
  
      &nbsp;<asp:Button ID="Button3" runat="server" Text="Download" 
          class="btn  btn-primary"  Width="86px" onclick="Button3_Click"/>

          
        

       </div>
         <script src="FlowPlayer/flowplayer-3.2.12.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        flowplayer("a.player", "FlowPlayer/flowplayer-3.2.16.swf", {
            plugins: {
                pseudo: { url: "FlowPlayer/flowplayer.pseudostreaming-3.2.12.swf" }
            },
            clip: { provider: 'pseudo', autoPlay: false },
        });
    </script>


</div>
</asp:Content>

