<%@ Page Title="" Language="C#" MasterPageFile="~/vc.master" AutoEventWireup="true" CodeFile="answerlist.aspx.cs" Inherits="answers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 22px;
        }
        .style3
        {
            width: 84px;
        }
        .style4
        {
            height: 22px;
            width: 84px;
        }
        .style5
        {
            width: 195px;
        }
        .style6
        {
            height: 22px;
            width: 195px;
        }
        .style7
        {
            height: 22px;
            width: 70px;
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
            <td><asp:Image ID="Image1" runat="server"  
                    style="margin-top: 0px;" 
                    ImageUrl="~/CL.png" Height="65px" Width="120px"   />
                </td>
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
                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Back to Question List</asp:LinkButton>
                    </td>
        </tr>
        <tr>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style1">
                    <tr>
                        <td class="style5">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label17" runat="server" Text="Post" ForeColor="#CC0000"></asp:Label>
                        </td>
                        <td colspan="3" class="text-success">
                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6" >
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label26" runat="server" ForeColor="#CC0000" Text="By"></asp:Label>
                        </td>
                          
                        <td class="style7">
                            <asp:Label ID="Label6" runat="server" Text="Label" class="text-success"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label5" runat="server" Text="Date" ForeColor="#CC0000"></asp:Label>
                        </td>
                        <td class="style2">
                            <asp:Label ID="Label25" runat="server" Text="Label" class="text-success"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            &nbsp;</td>
                        <td colspan="3" class="style2">
                            <asp:Label ID="Label24" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            &nbsp;</td>
                        <td align="center" colspan="3">
                            <div align="center">
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table table-hover" 
                                    DataKeyNames="faid" DataSourceID="SqlDataSource1" 
                                    onselectedindexchanged="GridView2_SelectedIndexChanged" Width="475px" 
                                    EmptyDataText="No Comments Yet">
                                    <Columns>
                                        <asp:BoundField DataField="faid" HeaderText="faid" InsertVisible="False" 
                                            ReadOnly="True" SortExpression="faid" Visible="False" />
                                        <asp:BoundField DataField="qid" HeaderText="qid" SortExpression="qid" 
                                            Visible="False" />
                                        <asp:BoundField DataField="username" HeaderText="username" 
                                            SortExpression="username" Visible="False" />
                                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" 
                                            Visible="False" />
                                        <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" 
                                            Visible="False" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <table class="style1">
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td class="style3">
                                                            &nbsp;</td>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style2">
                                                        </td>
                                                        <td class="style4">
                                                            <asp:Label ID="Label22" runat="server" Text='<%# Eval("username") %>' 
                                                                ForeColor="#006600" BorderColor="Black" ></asp:Label>
                                                            &nbsp;
                                                        </td>
                                                        <td class="style2">
                                                            &nbsp;&nbsp; Said</td>
                                                        <td class="style2">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (<asp:Label ID="Label21" runat="server" 
                                                                Text='<%# Eval("date", "{0:d}") %>'></asp:Label>
                                                            ) </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:Label ID="Label23"   class="text-info" runat="server" Text='<%# Eval("answer") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT * FROM [foruma] WHERE ([qid] = @qid)">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="qid" QueryStringField="id" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </td>
                    </tr>
                </table>
                <div align="center">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="Your Comments Please" 
                        ForeColor="#003300"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Height="53px" TextMode="MultiLine" 
                        Width="446px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" cssclass="btn-danger" Height="35px" 
                        onclick="Button1_Click" Text="Submit" Width="187px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div align="right">
                    </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

