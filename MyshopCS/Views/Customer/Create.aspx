﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MyshopCS.Models.Customer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Create</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.CustomerID) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.CustomerID) %>
                <%: Html.ValidationMessageFor(model => model.CustomerID) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Name) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Name) %>
                <%: Html.ValidationMessageFor(model => model.Name) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Age) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Age) %>
                <%: Html.ValidationMessageFor(model => model.Age) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Birthday) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Birthday) %>
                <%: Html.ValidationMessageFor(model => model.Birthday) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Income) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Income) %>
                <%: Html.ValidationMessageFor(model => model.Income) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

