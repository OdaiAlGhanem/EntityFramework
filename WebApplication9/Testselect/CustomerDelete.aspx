<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerDelete.aspx.cs" Inherits="Testselect.CustomerDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <!-- Image and text -->
                <nav class="navbar navbar-light bg-light">
                    <a class="navbar-brand" href="#">
                        <h1>Delete Customer</h1>
                    </a>
                </nav>
                <div class="container">
<%--                    <table class="table table-striped w-50">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="City"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Phone Number"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Photo"></asp:Label>
                            </td>
                            <td>
                                <asp:Image ID="Image1" runat="server" Height="88px" Width="84px" />
                            </td>
                        </tr>
                    </table>--%>
                </div>
                    <asp:DetailsView class="table table-striped w-50" ID="DetailsView1" runat="server" Height="196px" Width="342px">
                        <Fields>
                    <asp:BoundField DataField="CustomerId" HeaderText="Id" />
                    <asp:BoundField DataField="CustomerName" HeaderText="Name" />
                    <asp:BoundField DataField="Age" HeaderText="Age" />
                    <asp:BoundField DataField="City1" HeaderText="City" />
                    <asp:BoundField DataField="phone" HeaderText="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:ImageField DataImageUrlField="Photo" HeaderText="photo">
                        <ControlStyle Width="50px" />
                    </asp:ImageField>
                </Fields>
                    </asp:DetailsView>

                    <asp:Button ID="Button1" runat="server" Text="Delete" BorderColor="#CCCCCC" CssClass="btn" OnClick="Button1_Click" />

                <p style="margin-left: 100px;" class="btn btn-Secondary">
                    &nbsp;</p>

            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <p class="btn btn-Secondary" style="margin-left: 100px">
&nbsp;&nbsp;&nbsp;
    </p>
</body>
</html>