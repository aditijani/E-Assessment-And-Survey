<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="edu_class.aspx.cs" Inherits="edu_class" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row-fluid">
						<div class="span12">
							<%--<h2 class="welcome">
								Welcome ,
								<span class="text-info"><% Response.Write(Session["username"]); %></span>
							</h2>--%>
						</div>
					</div>
                    <div style="margin-left:50px;">

                          <form>
    <fieldset>
    <legend><a href="#myModal"  data-toggle="modal" data-backdrop="static" data-keyboard="false" class="btn btn-danger">Click here to Create Class</a></legend>
        
    
    </fieldset>
    </form>

    <div>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="classid" DataSourceID="SqlDataSource1" 
            class="table table-bordered" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="classid" HeaderText="classid" InsertVisible="False" 
                ReadOnly="True" SortExpression="classid" Visible="False" />
            <asp:BoundField DataField="eid" HeaderText="eid" SortExpression="eid" 
                Visible="False" />
            <asp:BoundField DataField="course" HeaderText="Course" SortExpression="course">
            </asp:BoundField>
            <asp:BoundField DataField="description" HeaderText="Description" 
                SortExpression="description" />
            <asp:BoundField DataField="member" HeaderText="Member" 
                SortExpression="member" />
            <asp:TemplateField HeaderText="Schedule">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" 
                        CommandArgument='<%# Eval("classid") %>' onclick="LinkButton2_Click1" 
                        CommandName='<%# Eval("course") %>'>Schedule class</asp:LinkButton>
                    
                    
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Students">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton3" runat="server" 
                        CommandArgument='<%# Eval("classid") %>' onclick="LinkButton3_Click">Add/Remove</asp:LinkButton>
                    <br />
                    <asp:LinkButton ID="LinkButton4" runat="server" 
                        CommandArgument='<%# Eval("classid") %>' onclick="LinkButton4_Click">Invite</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton6" runat="server" 
                        CommandArgument='<%# Eval("classid") %>' onclick="LinkButton6_Click1">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [e_class] WHERE [classid] = @original_classid AND (([eid] = @original_eid) OR ([eid] IS NULL AND @original_eid IS NULL)) AND (([course] = @original_course) OR ([course] IS NULL AND @original_course IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([member] = @original_member) OR ([member] IS NULL AND @original_member IS NULL))" 
            InsertCommand="INSERT INTO [e_class] ([eid], [course], [description], [member]) VALUES (@eid, @course, @description, @member)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [e_class] WHERE ([eid] = @eid) ORDER BY [classid] DESC" 
            
            UpdateCommand="UPDATE [e_class] SET [eid] = @eid, [course] = @course, [description] = @description, [member] = @member WHERE [classid] = @original_classid AND (([eid] = @original_eid) OR ([eid] IS NULL AND @original_eid IS NULL)) AND (([course] = @original_course) OR ([course] IS NULL AND @original_course IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([member] = @original_member) OR ([member] IS NULL AND @original_member IS NULL))" 
            onselecting="SqlDataSource1_Selecting">
            <DeleteParameters>
                <asp:Parameter Name="original_classid" Type="Int32" />
                <asp:Parameter Name="original_eid" Type="Int32" />
                <asp:Parameter Name="original_course" Type="String" />
                <asp:Parameter Name="original_description" Type="String" />
                <asp:Parameter Name="original_member" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="eid" Type="Int32" />
                <asp:Parameter Name="course" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="member" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="eid" SessionField="user" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="eid" Type="Int32" />
                <asp:Parameter Name="course" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="member" Type="Int32" />
                <asp:Parameter Name="original_classid" Type="Int32" />
                <asp:Parameter Name="original_eid" Type="Int32" />
                <asp:Parameter Name="original_course" Type="String" />
                <asp:Parameter Name="original_description" Type="String" />
                <asp:Parameter Name="original_member" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        
    </div>
    
   </div>
   <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
   
   <div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
<h3 id="myModalLabel"><h2 class="sign-in">Create class</h2></h3>
    
</div>
<div class="modal-body">
   <div class="control-group">
    <label class="control-label" for="inputEmail">Class Name</label>
    <div class="controls">
    
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Course name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Enter Course name" Font-Bold="True" ControlToValidate="TextBox1" 
            ValidationGroup="a" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    
    </div>
    <div class="control-group">
    <label class="control-label" for="inputEmail">Location</label>
    <div class="controls">
    
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Location"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Enter Location of class" Font-Bold="True" ControlToValidate="TextBox2" 
            ValidationGroup="a" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    
    </div>
    
    <div class="control-group">
    <label class="control-label" for="inputPassword">Description</label>
    <div class="controls">
    
        <asp:TextBox ID="TextBox3" runat="server" placeholder="description" TextMode="MultiLine"></asp:TextBox>


    </div>
    </div>
    <div class="control-group">
    
    </div>
    </div>
    <div class="modal-footer">
    <div class="controls">
   
   
        <asp:Button ID="Button1" runat="server" Text="Add" class="btn btn-primary" 
            onclick="Button1_Click" ValidationGroup="a" />
            <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
    </div>


</div>
  </div>
</asp:Content>

