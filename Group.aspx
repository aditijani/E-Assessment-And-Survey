<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="Group.aspx.cs" Inherits="Group" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Group  Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr align=center>
            <td class="style2" colspan="2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" cssclass=btn-danger
                    Text="Add Group" />
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                <br />
                <table class="style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" cssclass="table table-bordered table table-hover"
                                AutoGenerateColumns="False" DataKeyNames="gid" 
                                DataSourceID="SqlDataSource1" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="487px">
                                <Columns>
                                    <asp:BoundField DataField="gid" HeaderText="gid" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="gid" Visible="False" />
                                    <asp:BoundField DataField="gname" HeaderText="GroupName" 
                                        SortExpression="gname" />
                                    <asp:BoundField DataField="creator" HeaderText="Creator" 
                                        SortExpression="creator" />
                                    <asp:BoundField DataField="Description" HeaderText="Description" 
                                        SortExpression="Description" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
                                                CommandArgument='<%# Eval("gid") %>'>Edit Members</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton3" runat="server" 
                                                CommandArgument='<%# Eval("gid") %>' onclick="LinkButton3_Click">Delete</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [groupdata] WHERE ([creator] = @creator)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="creator" SessionField="user" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

