<%@ Page Language="C#" %>
<script runat="server">

    void Button1_Click(Object sender, EventArgs e) {
       Label1.Text = "Page is valid!";
    }

</script>
<html>
<head>
</head>
<body>
    <form runat="server">
        <p>
            <asp:TextBox id="TextBox1" 
             runat="server"></asp:TextBox>
            &nbsp; 
            <asp:RequiredFieldValidator 
             id="RequiredFieldValidator1" runat="server" 
             ErrorMessage="Required!" 
             ControlToValidate="TextBox1">
            </asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button id="Button1" onclick="Button1_Click" 
             runat="server" Text="Button"></asp:Button>
        </p>
        <p>
            <asp:Label id="Label1" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
