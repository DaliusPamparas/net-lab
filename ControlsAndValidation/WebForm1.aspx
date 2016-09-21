<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ControlsAndValidation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div runat="server" id="divId">
       Messeage
    </div>
        <div>
            <label>Name</label>
            <asp:TextBox runat="server" ID="name" />
            <%--<label>Efternamn</label>
            <asp:TextBox runat="server" ID="efternamn" />--%>

        </div>
        <%--<div>
            <label>Color</label>
            <asp:DropDownList runat="server" ID="color">
                <asp:ListItem Value="red" Text="red" />
                <asp:ListItem Value="gold" Text="gold" Selected="True" />
                <asp:ListItem Value="green" Text="green" />
                <asp:ListItem Value="black" Text="black" />

            </asp:DropDownList>
        </div>--%>
        <div>
            <asp:Button runat="server" ID="btn" OnClick="btn_Click" text="Skicka medellande"/>
        </div>
        <div class="messeage">
            <asp:Literal ID="ltMesseage" runat="server" />

        </div>
    </form>
</body>
</html>
