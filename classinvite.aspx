<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="classinvite.aspx.cs" Inherits="classinvite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align=center>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="classid" DataSourceID="SqlDataSource1" BackColor="White" 
                BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                ForeColor="Black" GridLines="Vertical" Height="258px" Width="527px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="classid" HeaderText="classid" InsertVisible="False" 
                        ReadOnly="True" SortExpression="classid" Visible="False" />
                    <asp:BoundField DataField="eid" HeaderText="eid" SortExpression="eid" 
                        Visible="False" />
                    <asp:BoundField DataField="course" HeaderText="Course" 
                        SortExpression="course" />
                    <asp:BoundField DataField="description" HeaderText="Description" 
                        SortExpression="description" />
                    <asp:BoundField DataField="Location" HeaderText="Location" 
                        SortExpression="Location" />
                    <asp:BoundField DataField="member" HeaderText="Member" 
                        SortExpression="member" Visible="False" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" 
                                CommandArgument='<%# Eval("classid") %>' onclick="LinkButton2_Click">Invite</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [e_class] WHERE ([eid] = @eid)">
                <SelectParameters>
                    <asp:SessionParameter Name="eid" SessionField="user" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

