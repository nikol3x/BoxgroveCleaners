<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BoxGroveCleaners.Admin.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Administration</title>
    <link href="/Content/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet" />
    <link href="/Content/bootstrap/summernote.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
    <h1 id="pnlLogoSmall" class="logo-container cf">
        <a data-js-hook="singlepagenav" href="/Default.aspx" title="Go Home" class="logo--small">&nbsp;</a>
    </h1>
    <nav class="nav__container">
        <ul>
            <li class="nav__link">
                <a data-js-hook="singlepagenav" href="/Default.aspx" class="text-contrasting">Home</a>
            </li>
            <li class="nav__link">
                <a data-js-hook="singlepagenav" href="/Pages/Services.aspx" class="text-contrasting">Services</a>
            </li>
            <li class="nav__link">
                <a data-js-hook="singlepagenav" href="/Pages/CleaningProcess.aspx" class="text-contrasting">Cleaning Process</a>
            </li>
            <li class="nav__link">
                <a data-js-hook="singlepagenav" href="/Pages/LaundryFaqs.aspx" class="text-contrasting">Laundry FAQs</a>
            </li>
            <li class="nav__link">
                <a data-js-hook="singlepagenav" href="/Pages/ContactUs.aspx" class="text-contrasting">Contact Us</a>
            </li>
            <li class="nav__link nav__link--selected">
                <a data-js-hook="singlepagenav" href="/Admin/Index.aspx" class="text-contrasting">Administration</a>
            </li>
        </ul>
    </nav>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form id="pnlAdminForm" runat="server">
        <asp:panel id="pnlLoginForm" cssclass="content" runat="server">
            <h1 class="content__header">
                <span class="content__header__text container-main">
                    Administrator Login
                    <span class="icons--arrowDown">&nbsp;</span>
                </span>
            </h1>
            <section class="content__section--first cf">
                <div class="content__container container-main cf">
                    <div id="pnlLoginContent">
                        <h2 class="content__section__title">
                            Enter Your Credentials
                        </h2>
                        <asp:label id="lblUsername" runat="server" associatedcontrolid="txtUsername" cssclass="label">User name:</asp:label><br />
                        <asp:textbox id="txtUsername" runat="server" cssclass="textbox"></asp:textbox><br />

                        <asp:label id="lblPassword" runat="server" associatedcontrolid="txtPassword" cssclass="label">Password:</asp:label><br />
                        <asp:textbox id="txtPassword" runat="server" cssclass="textbox" textmode="Password"></asp:textbox><br />

                        <asp:label id="lblLoginError" runat="server" cssclass="error-text"></asp:label>
                        <asp:button id="btnLogin" cssclass="btn-main" runat="server" text="Log In" onclick="btnLogin_Click" />
                    </div>
                </div>
            </section>
        </asp:panel>
    </form>    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="scripts" runat="server">
    <script src="/Scripts/bootstrap.min.js"></script>
    <script src="/Scripts/summernote.min.js"></script>
    <script src="/PageScripts/Content.js"></script>
</asp:Content>
