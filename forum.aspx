<%@ Page Title="" Language="C#" MasterPageFile="~/vc.master" AutoEventWireup="true" CodeFile="forum.aspx.cs" Inherits="ff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
            <asp:Image ID="Image1" runat="server"  
                    style="margin-top: 0px;" 
                    ImageUrl="~/CL.png" Height="67px" Width="123px"   />
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align=right>
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger" 
                            onclick="Button1_Click" Text="Click to Add Post" Width="160px" />
                        </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align=center>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="fid" 
                            DataSourceID="SqlDataSource1" GridLines="None" 
                           width="75%" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                            ForeColor="#333333">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="fid" HeaderText="fid" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="fid" Visible="False" />
                                <asp:BoundField DataField="username" HeaderText="username" 
                                    SortExpression="username" Visible="False" />
                                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" 
                                    Visible="False" />
                                <asp:BoundField DataField="question" HeaderText="question" 
                                    SortExpression="question" Visible="False" />
                                <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" 
                                    Visible="False" />
                                <asp:TemplateField Visible="False"></asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <table class="table table-hover table-bordered">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label4" runat="server" ForeColor="#CC0000" Text="Post"></asp:Label>
                                                </td>
                                                <td class="text-success">
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("question") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label5" runat="server" ForeColor="#CC0000" Text="By"></asp:Label>
                                                </td>
                                                <td class="text-success">
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label6" runat="server" ForeColor="#CC0000" Text="Label"></asp:Label>
                                                </td>
                                                <td class="text-success">
                                                    (<asp:Label ID="Label3" runat="server" Text='<%# Eval("date") %>'></asp:Label>
                                                    )</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:LinkButton ID="LinkButton2" runat="server" 
                                                        CommandArgument='<%# Eval("fid") %>' onclick="LinkButton2_Click">Comments</asp:LinkButton>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                          <%--  <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />--%>
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                  
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [forumq] ORDER BY [fid] DESC">
        </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

