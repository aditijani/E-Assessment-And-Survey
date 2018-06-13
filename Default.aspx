<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


.pull-right {
  float: right;
}

.label {
  -webkit-border-radius: 3px;
     -moz-border-radius: 3px;
          border-radius: 3px;
}

.label,
.badge {
  display: inline-block;
  padding: 2px 4px;
  font-size: 11.844px;
  font-weight: bold;
  line-height: 14px;
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  white-space: nowrap;
  vertical-align: baseline;
  background-color: #999999;
}

  * {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    box-shadow: none !important;
  }
  
a {
  color: #0088cc;
  text-decoration: none;
}

  a,
  a:visited {
    text-decoration: underline;
  }
  
table {
  max-width: 100%;
  background-color: transparent;
  border-collapse: collapse;
  border-spacing: 0;
    margin-right: 52px;
}

        .style1
        {
            width: 100%;
        }
        .style2
        {
            color: White;
            font-weight: bold;
            background-color: #6B696B;
        }
        .style3
        {
            background-color: #F7F7DE;
        }
        .style4
        {
            background-color: White;
        }
        .style5
        {
            color: Black;
            background-color: #F7F7DE;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
     
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" 
                    ForeColor="Black" GridLines="Vertical" Width="333px" Height="672px" 
                    style="margin-left: 0px; margin-right: 22px" BackColor="White" 
            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="answer" HeaderText="answer" 
                            SortExpression="answer" Visible="False" />
                        <asp:BoundField DataField="username" HeaderText="username" 
                            SortExpression="username" Visible="False" />
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" 
                            Visible="False" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td>
                                            Commented by :</td>
                                        <td>
                                            <asp:Label ID="Label19" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                                        <td>
                                            <asp:Label ID="Label20" runat="server" Text='<%# Eval("date") %>'></asp:Label>
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
                                            <asp:Label ID="Label18" runat="server" Text='<%# Eval("answer") %>'></asp:Label>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField></asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <table class="style1">
                            <tr>
                                <td class="style5">
                                    Comment By:</td>
                                <td>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    Date:</td>
                                <td>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("date", "{0:t}") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("answer") %>'></asp:Label>
                    </EmptyDataTemplate>
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
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="classid" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="classid" HeaderText="classid" InsertVisible="False" 
                            ReadOnly="True" SortExpression="classid" />
                        <asp:BoundField DataField="eid" HeaderText="eid" SortExpression="eid" />
                        <asp:BoundField DataField="course" HeaderText="course" 
                            SortExpression="course" />
                        <asp:BoundField DataField="description" HeaderText="description" 
                            SortExpression="description" />
                        <asp:BoundField DataField="Location" HeaderText="Location" 
                            SortExpression="Location" />
                        <asp:BoundField DataField="member" HeaderText="member" 
                            SortExpression="member" />
                    </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [e_class] ORDER BY [classid] DESC">
        </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [answer], [username], [date] FROM [foruma] WHERE ([qid] = @qid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="qid" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
     
    </div>
    </form>
</body>
</html>
