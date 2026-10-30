<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Totals.aspx.cs"
    Inherits="Practical_9.TotalsPage" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Placement Totals</title>
</head>
<body>
<form id="form1" runat="server">

    <h1>Placement Totals</h1>

    <a href="PlacementDashboard.aspx">Back to Dashboard</a>

    <br /><br />

    <table border="1" cellpadding="10" cellspacing="0">
        <tr>
            <th>Sr. No.</th>
            <th>Placement Statistic</th>
            <th>Value</th>
        </tr>

        <tr>
            <td>1</td>
            <td>Total Students</td>
            <td>
                <asp:Label ID="lblTotal" runat="server" Text="0" />
            </td>
        </tr>

        <tr>
            <td>2</td>
            <td>Placed Students</td>
            <td>
                <asp:Label ID="lblPlaced" runat="server" Text="0" />
            </td>
        </tr>

        <tr>
            <td>3</td>
            <td>Not Placed Students</td>
            <td>
                <asp:Label ID="lblNotPlaced" runat="server" Text="0" />
            </td>
        </tr>

        <tr>
            <td>4</td>
            <td>Average Package (LPA)</td>
            <td>
                <asp:Label ID="lblAvgPackage" runat="server" Text="0.00" />
            </td>
        </tr>
    </table>

</form>
</body>
</html>