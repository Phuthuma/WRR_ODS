<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Online_Driving_School_MS.Workings.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtPass" runat="server" onkeyup="passFunc();"></asp:TextBox><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <script type="text/javascript">
            function passFunc() {

                var txtpass = document.getElementById("txtPass");
                var pass = txtpass.value;
                var special = "!@#$%^&*_?";

                if (pass.legnth >= 8) {
                    document.getElementById("txtPass").style.backgroundColor = "green";
                }

            }


        </script>
    </div>
        
     
    </form>
</body>
</html>
