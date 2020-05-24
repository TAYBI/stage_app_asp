<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="stage_asp_web_app.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home | ofppt</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 id="home">home</h1>
        <h1>
            <asp:Label ID="visit" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
        </h1>
    </div>
        <p>
            CIN:&nbsp;
            <input id="cin" type="text" /></p>
        <p>
            &nbsp;Prenom:&nbsp;
            <input id="prenom" type="text" /></p>
        <p>
            Nom:&nbsp; <input id="nom" type="text" /></p>
        <p>
            Date_Naiss: 
            <input id="date_naiss" type="text" />
             </p>
        NiveauScolaire:&nbsp; <asp:DropDownList ID="DDNScoilare" runat="server" Height="16px" Width="130px" OnSelectedIndexChanged="DDNScoilare_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <br />
        Niveau de formation:&nbsp; <asp:DropDownList ID="DDNformation" runat="server" Height="17px"  Width="130px" AutoPostBack="True" OnSelectedIndexChanged="DDNformation_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        Secteur:&nbsp; <asp:DropDownList ID="DDSecteur" runat="server" Height="16px" Width="130px" AutoPostBack="True" OnSelectedIndexChanged="DDSecteur_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        Filiere:&nbsp; <asp:DropDownList ID="DDFiliere" runat="server" Width="130px" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="valiider" runat="server" Text="valider" OnClick="valiider_Click" />
    </form>
</body>
</html>
