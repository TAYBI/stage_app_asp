<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="stage_asp_web_app.details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="content">
        <asp:Label ID="title" runat="server" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
    <div>
    
        <asp:Label ID="info" runat="server"></asp:Label>
        <br />
    
    </div>
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Large" Text="Profile de formation"></asp:Label>
        <br />
        <asp:Label ID="profil" runat="server"></asp:Label>
        
        <br />
        <br />
        
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Large" Text="Conditions"></asp:Label>
        <br />
        <asp:Label ID="conditions" runat="server"></asp:Label>

        <br />
        <br />

        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Large" Text="Debouches"></asp:Label>
        <br />
        <asp:Label ID="debouche" runat="server"></asp:Label>                
        <br />
        <br />
        </div>
        <input type="button" value="Telecharger les details" id="btnPrint" />
    </form>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $("#btnPrint").live("click", function () {
            var divContents = $("#content").html();
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title>DIV Contents</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(divContents);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
        });
    </script>
</body>
</html>
