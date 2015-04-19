<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MyshopCS.Models.Customer>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th></th>
            <th>
                CustomerID
            </th>
            <th>
                Name
            </th>
            <th>
                Age
            </th>
            <th>
                Birthday
            </th>
            <th>
                Income
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.CustomerID }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.CustomerID })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.CustomerID })%>
            </td>
            <td>
                <%: item.CustomerID %>
            </td>
            <td>
                <%: item.Name %>
            </td>
            <td>
                <%: item.Age %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.Birthday) %>
            </td>
            <td>
                <%: String.Format("{0:F}", item.Income) %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

