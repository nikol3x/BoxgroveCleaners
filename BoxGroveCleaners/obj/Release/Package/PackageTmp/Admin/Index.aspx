<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Layout.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="BoxGroveCleaners.Admin.Index" %>
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
    <h1 class="content__header">
        <span class="content__header__text container-main">
            Site Administration
            <span class="icons--arrowDown">&nbsp;</span>
        </span>
    </h1>
    <section class="content__section--first cf" style="margin-bottom: 30em;">
        <div class="content__container container-main cf">
            <a href="/Admin/LogOut.aspx" class="link">
                Click Here to <strong>Log Out</strong>
            </a>
            <br /><br />
            <h2 class="content__section__title">
                What Would You Like to Change?
            </h2>
            <div class="row">
                <div class="col-xs-12">
                    <ul class="list-dotted">
                        <li>
                            <a href="/Admin/Coupon.aspx" class="text-secondary">Upload A Coupon</a>
                        </li>
                        <li>
                            <a href="/Admin/Faq.aspx" class="text-secondary">Update FAQs</a>
                        </li>
                        <li>
                            <a href="/Admin/Hours.aspx" class="text-secondary">Update Hours</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="scripts" runat="server">
    <script src="/Scripts/bootstrap.min.js"></script>
    <script src="/Scripts/summernote.min.js"></script>
    <script src="/PageScripts/Content.js"></script>
</asp:Content>
