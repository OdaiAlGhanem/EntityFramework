<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditCustomer.aspx.cs" Inherits="Testselect.WebForm3" %>

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
                        <h1>Edit Customer</h1>
                    </a>
                </nav>
                <div class="container">
                    <table class="table table-striped w-50">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" class="form-control mb-2" required runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" class="form-control mb-2" required runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="City"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" class="btn btn-secondary dropdown-toggle" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" class="form-control mb-2" required runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Phone Number"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox4" class="form-control  mb-2" required runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Photo"></asp:Label>
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                <asp:Image ID="Image1" runat="server" />
                            </td>
                        </tr>
                    </table>
                </div>
                <p style="margin-left: 100px;" class="btn btn-Secondary">
                    <asp:Button ID="Button1" runat="server" Text="Save" BorderColor="#CCCCCC" CssClass="btn" OnClick="Button1_Click" />
                </p>

            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>