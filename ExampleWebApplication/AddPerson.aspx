<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPerson.aspx.cs" Inherits="ExampleWebApplication.AddPerson1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <label>Name</label>
                <input id="Name" type="text" runat="server"/>
            </div>
            <div>
                <label>Surname</label>
                <input id="Surname" type="text" runat="server"/>
            </div>
            <div>
                <label>Birthdate</label>
                <input id="BirthDate" type="text" runat="server"/>
            </div>
            <div>
                <label>Gender</label>
                <select id="Gender" runat="server">
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                </select>
            </div>
            <div>
                <label>Pesel</label>
                <input id="Pesel" type="text" runat="server" />
            </div>
        </div>
        <asp:Button runat="server" Text="Insert" OnClick="InsertButton_OnClick"/>
        <asp:Button runat="server" Text="Cancel" OnClick="CancelButton_OnClick"/>
    </form>
</body>
</html>
