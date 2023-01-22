<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Testselect.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .but
        {background-color: #555555;
         color:white;
         border-color:navy;
        }  
        .img{
            width : 200px;
            height : 200px;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1"  runat="server">
        <div>
        <!-- Image and text -->
            <nav class="navbar navbar-light bg-light" style="left: 0px; top: 0px">
                <a class="navbar-brand" href="#">

                    <h1>Customer</h1>
                <h1>&nbsp;</h1>
                <h1>
                    <asp:Button ID="Button1" class="btn btn-secondary" required runat="server" OnClick="Button1_Click" Text="search by id" Width="100%" />
                <a class="navbar-brand" href="#">

                    <asp:TextBox ID="TextBox2" class="form-control mb-2" runat="server" Width="100%"></asp:TextBox>
                </a>
                    <asp:Button ID="Button2" class="btn btn-secondary" required runat="server" OnClick="Button2_Click" Text="search by name" Width="100%" />
                <a class="navbar-brand" href="#">

                    <asp:TextBox ID="TextBox3" class="form-control mb-2" runat="server" Width="100%"></asp:TextBox>
                </a>
                </h1>
                        <asp:GridView ID="GridView2" CssClass="table table-striped" runat="server">
            <Columns>
                <asp:ImageField DataImageUrlField="Photo" HeaderText="photo">
                    <ControlStyle Width="50px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
                </a>
            </nav>
        </div>
        <div >
                      <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Add Customer" CssClass="but" />

        </div>
        <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server">
            <Columns>
                <asp:ImageField DataImageUrlField="Photo" HeaderText="photo">
                    <ControlStyle Width="50px" />
                </asp:ImageField>
            </Columns>
          <%--  <Columns>

                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>--%>
        </asp:GridView>
        <p>
            &nbsp;</p>  
        <table class="table table-striped w-50">
        <tr>
            <td>⦁ Number of customers </td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>⦁ Avg of age </td>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>⦁ Max Age</td>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

        <table class="w-100">
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
    
      
    </form>
    
</body>
</html>
