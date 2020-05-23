<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="stage_asp_web_app.details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
        <asp:Button ID="telecharger" runat="server" Text="Telecharger les  details" />
    </form>
</body>
</html>
