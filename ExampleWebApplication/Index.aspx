<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ExampleWebApplication.Index" %>

<%@ Import Namespace="ExampleWebApplication" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <h4>Filtrowanie</h4>
                <details>
                    <summary>Płeć</summary>
                    <select id="GenderFiltering" style="margin: 5px;" runat="server">
                        <option value="Male" >Male</option>
                        <option value="Female">Female</option>
                    </select>
                    <asp:Button runat="server" ID="GenderFilteringBtn" style="margin: 5px;" Text="Filtruj" OnClick="GenderFilteringButn_OnClick"/>
                </details>
                <details>
                    <summary>Ilość rekordów</summary>
                    <input id="NumberOfRecordsFiltering" style="margin: 5px;" runat="server"/>
                    <asp:Button runat="server" ID="NumberOfRecordsFilteringBtn" Text="Filtruj" OnClick="NumberOfRecordsFilteringBtn_OnClick"/>
                </details>
                <details>
                    <summary>Przedział dat</summary>
                    <label style="margin: 5px;">Od</label> 
                    <input id="DateFilteringFrom"  runat="server"/>
                    <label>Do</label> 
                    <input id="DateFilteringTo" runat="server"/>
                    <asp:Button runat="server" ID="DateFilteringBtn" style="margin: 5px;" Text="Filtruj" OnClick="DateFilteringBtn_OnClick"/>
                </details>
            </div>
            <asp:HyperLink runat="server" NavigateUrl="AddPerson.aspx" Text="Add new person" style="margin: 15px; text-decoration: none; font-size: 20px; color: darkgreen; font-weight: 40px;" />
            <asp:GridView runat="server" ID="People" style="margin-left: 10px"
                ItemType="Person"
                AllowSorting="True"
                AllowPaging="True"
                PageSize="4"
                AutoGenerateColumns="False"
                OnPageIndexChanging="People_OnPageIndexChanging"
                OnSorting="People_OnSorting">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Imię" />
                    <asp:BoundField DataField="Surname" HeaderText="Nazwisko" SortExpression="Surname" />
                    <asp:BoundField DataField="BirthDate" HeaderText="Data urodzenia" DataFormatString="{0:dd/MM/yyyy}" SortExpression="BirthDate" />
                    <asp:BoundField DataField="Gender" HeaderText="Płeć" SortExpression="Gender" />
                    <asp:BoundField DataField="Pesel" HeaderText="PESEL" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
