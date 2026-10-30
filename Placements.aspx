<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Placements.aspx.cs"
    Inherits="Practical_9.PlacementsPage" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Placement Records</title>
</head>
<body>
<form id="form1" runat="server">

    <h1>Placement Records</h1>

    <a href="PlacementDashboard.aspx">Back to Dashboard</a>
    <br /><br />

    <asp:GridView ID="gvPlacements" runat="server"
        AutoGenerateColumns="true"
        EmptyDataText="No placement records found." />

</form>
</body>
</html>