<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Students.aspx.cs"
    Inherits="Practical_9.StudentsPage" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Students</title>
</head>
<body>
<form id="form1" runat="server">

    <h1>Student Records</h1>

    <a href="PlacementDashboard.aspx">Back to Dashboard</a>
    <br /><br />

    <asp:GridView ID="gvStudents" runat="server"
        AutoGenerateColumns="true"
        EmptyDataText="No students found." />

</form>
</body>
</html>