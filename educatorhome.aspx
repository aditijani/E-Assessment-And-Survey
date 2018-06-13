<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="educatorhome.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
			
		
 
					<div class="row-fluid">
						<div class="span12">
							<div class="hero-unit">
								<button type="button" class="close hidden-phone" data-dismiss="alert">&times;</button>
								<h1>Welcome back,<span class="text-info"><%Response.Write(Session["username"].ToString()); %></span></h1>
								<p>
									
								
								
							</p>
								<%--<p class="hidden-phone">
									<a class="btn btn-info btn-large pull-right">Learn more &raquo;</a>
								</p>--%>
							</div>
						</div>
					</div>

					<div class="row-fluid">
						<div class="span12">
							<%--<h2 class="welcome">
								Welcome back,
								<span class="text-info">Jack Frost</span>
							</h2>--%>
						</div>
					</div>

					<div class="row-fluid">
						<div class="span5">
							<h4 class="title">Recent Activity</h4>
							<div class="squiggly-border"></div>
							<table class="table table-index">
								<thead>
									<tr>
										<th>Number</th>
										<th>Description</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="numbers">
                                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                        </td>
										<td class="text">Class Formed</td>
									</tr>
									<tr>
										<td class="numbers">
                                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                        </td>
										<td class="text">Group Formed</td>
									</tr>
									<tr>
										<td class="numbers">
                                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                        </td>
										<td class="text">Material Share</td>
									</tr>
									<tr>
										<td class="numbers">
                                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                        </td>
										<td class="text">Video Share</td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="span7">
							<h4 class="title">
                                <asp:Image ID="Image1" runat="server" Height="161px" Width="156px" />
                            </h4>
							<div class="squiggly-border"></div>
							<div class="graph" id="flot-line-graph"></div>
						</div>
					</div>

					<div class="row-fluid">
						<div class="span12">&nbsp;</div>
					</div>

					<div class="row-fluid">
						

					</div>

					

					
		

</asp:Content>

