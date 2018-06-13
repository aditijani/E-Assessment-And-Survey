<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="addmember.aspx.cs" Inherits="addmember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
           /* width: 6%;*/
            height: 20px;
        }
        .style2
        {
            height: 166px;
        }
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
       
        <tr>
            <td>
              <%--  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="rid" DataSourceID="SqlDataSource1" Width="16px">
                    <Columns>
                        <asp:BoundField DataField="rid" HeaderText="rid" InsertVisible="False" 
                            ReadOnly="True" SortExpression="rid" />
                        <asp:BoundField DataField="sid" HeaderText="sid" SortExpression="sid" />
                        <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                        <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                        <asp:BoundField DataField="Collage" HeaderText="Collage" 
                            SortExpression="Collage" />
                        <asp:BoundField DataField="emailid" HeaderText="emailid" 
                            SortExpression="emailid" />
                        <asp:BoundField DataField="imagepath" HeaderText="imagepath" 
                            SortExpression="imagepath" Visible="False" />
                        <asp:BoundField DataField="contactno" HeaderText="contactno" 
                            SortExpression="contactno" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="59px" 
                                    ImageUrl='<%# Eval("imagepath") %>' Width="92px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table class="style3">
                                    <tr>
                                        <td>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </td>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("sid") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT Student.rid, Invitation_data.sid, Student.fname, Student.lname, Student.Collage, Student.emailid, Student.imagepath, Student.contactno, Student.city FROM Invitation_data INNER JOIN Student ON Invitation_data.sid = Student.rid INNER JOIN groupformed ON Student.rid=groupformed.sid WHERE (Invitation_data.eid = @eid) AND (groupformed.status <> 'send')">
                <SelectParameters>
                        <asp:SessionParameter Name="eid" SessionField="user" Type="Int32" />
               </SelectParameters>
                </asp:SqlDataSource>--%>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView3" runat="server" 
                    EmptyDataText="You have no members to be add in Group.">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Image ID="Image2" runat="server" Height="68px" 
                                    ImageUrl='<%# Eval("imagepath") %>' Width="78px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table class="style3">
                                    <tr>
                                        <td class="style4" width="60">
                                            <asp:CheckBox ID="CheckBox2" runat="server" />
                                        </td>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("sid") %>' Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add Member" CssClass=" btn btn-danger" Width="154px"
                     />
                <br />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Members Of Group"></asp:Label>
                <br />
                <table class="style1">
                    <tr>
                        <td>
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="3" DataSourceID="SqlDataSource2" AllowSorting="True" Width="100%"
                                onselectedindexchanged="GridView2_SelectedIndexChanged">
                                <Columns>
                                    <asp:BoundField DataField="fname" HeaderText="FirstName" 
                                        SortExpression="fname" />
                                    <asp:BoundField DataField="lname" HeaderText="LastName" 
                                        SortExpression="lname" />
                                    <asp:BoundField DataField="contactno" HeaderText="Contactno" 
                                        SortExpression="contactno" />
                                    <asp:BoundField DataField="emailid" HeaderText="EmailId" 
                                        SortExpression="emailid" />
                                    <asp:BoundField DataField="imagepath" HeaderText="imagepath" 
                                        SortExpression="imagepath" Visible="False" />
                                    <asp:BoundField DataField="gid" HeaderText="gid" SortExpression="gid" 
                                        Visible="False" />
                                    <asp:BoundField DataField="sid" HeaderText="sid" SortExpression="sid" 
                                        Visible="False" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Image ID="Image3" runat="server" Height="68px" 
                                                ImageUrl='<%# Eval("imagepath") %>' Width="91px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT Student.fname, Student.lname, Student.contactno, Student.emailid, Student.imagepath, groupformed.gid, groupformed.sid FROM groupformed INNER JOIN Student ON groupformed.sid = Student.rid WHERE (groupformed.gid = @gid)">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="gid" QueryStringField="id" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

