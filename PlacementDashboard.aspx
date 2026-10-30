<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="PlacementDashboard.aspx.cs"
    Inherits="Practical_9.PlacementDashboard" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Placement Dashboard</title>
</head>
<body>
<form id="form1" runat="server">

    <h1>Placement Dashboard</h1>

    <p>
        <a href="PlacementDashboard.aspx">Dashboard</a>
        <a href="Students.aspx">Students</a>
        <a href="Placements.aspx">Placements</a>
        <a href="Totals.aspx">Placement Totals</a>
    </p>

    <div>
        <div>
            <h3>Total Students</h3>
            <asp:Label ID="lblTotal" runat="server" Text="0" />
        </div>

        <div>
            <h3>Placed Students</h3>
            <asp:Label ID="lblPlaced" runat="server" Text="0" />
        </div>

        <div>
            <h3>Not Placed</h3>
            <asp:Label ID="lblNotPlaced" runat="server" Text="0" />
        </div>

        <div>
            <h3>Average Package (LPA)</h3>
            <asp:Label ID="lblAvgPackage" runat="server" Text="0.00" />
        </div>
    </div>

</form>
</body>
</html>