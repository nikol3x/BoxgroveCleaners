<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Layout.Master" AutoEventWireup="true" CodeBehind="Coupon.aspx.cs" Inherits="BoxGroveCleaners.Admin.Coupon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Coupon Administration</title>
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
    <form id="frmCoupon" runat="server">
        <asp:panel id="pnlUploadCoupon" cssclass="content" runat="server">
            <h1 class="content__header">
                <span class="content__header__text container-main">
                    Upload Coupon
                    <span class="icons--arrowDown">&nbsp;</span>
                </span>
            </h1>
            <section class="content__section--first cf">
                <div class="content__container container-main cf">
                    <a href="/Admin/LogOut.aspx" class="link">
                        Click Here to <strong>Log Out</strong>
                    </a>
                    <br /><br />
                    <h2 class="content__section__title">
                        Choose a Coupon to Upload
                    </h2>
                    <p>
                        The uploaded coupon must be in .pdf format and will replace the current
                        coupon on the website.
                    </p><br />
                    <asp:fileupload id="upCoupon" runat="server" /><br /><br />
                    <asp:label id="lblCouponError" runat="server" cssclass="error-text"></asp:label>
                    <asp:button id="btnCoupon" cssclass="btn-main" runat="server" text="Save Coupon" onclick="btnCoupon_Click" />
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
