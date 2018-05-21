<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Layout.Master" AutoEventWireup="true" CodeBehind="Pricing.aspx.cs" Inherits="BoxGroveCleaners.Admin.Pricing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Pricing Administration</title>
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
                <a data-js-hook="singlepagenav" href="/Pages/Pricing.aspx" class="text-contrasting">Pricing</a>
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
        <asp:panel id="pnlPricing" cssclass="content" runat="server">
            <h1 class="content__header">
                <span class="content__header__text container-main">
                    Update Pricing
                    <span class="icons--arrowDown">&nbsp;</span>
                </span>
            </h1>
            <section class="content__section--first cf">
                <div id="pnlPrices" class="content__container container-main cf">
                    <a href="/Admin/LogOut.aspx" class="link">
                        Click Here to <strong>Log Out</strong>
                    </a>
                    <br /><br />
                    <h2 class="content__section__title">
                        Remove Price From List
                    </h2>
                    <asp:repeater id="rptPrices" runat="server" onitemcommand="rptPrices_ItemCommand">
                        <itemtemplate>
                            <div class="row">
                                <div class="column1">
                                    <asp:hiddenfield id="hiddenKey" runat="server" value='<%#Eval("Key") %>' />
                                    <asp:linkbutton id="btnRemovePrice" runat="server" commandname="Delete" text="Remove Price" cssclass="btn-main"></asp:linkbutton>
                                </div>
                                <div class="column2">
                                    <%#Eval("Description") %>
                                </div>
                            </div>
                        </itemtemplate>
                    </asp:repeater>
                </div>
                <div id="pnlPricesForm" class="content__container container-main cf">
                    <h2 class="content__section__title">
                        Add New Price
                    </h2>
                    <p>
                        When adding new Price type into the Price field, do not copy and paste from a different program such as Micrsoft Word since
                        such a program will add additional formatting which may not be valid for this website.
                    </p><br />
                    <asp:label id="lblNewDescription" runat="server" associatedcontrolid="txtNewDescription" cssclass="label">Price:</asp:label><br />
                    <asp:textbox id="txtNewDescription" runat="server" cssclass="textbox"></asp:textbox><br /><br />
                    <asp:label id="lblNewPriceError" runat="server" cssclass="error-text"></asp:label>
                    <asp:button id="btnAddPrice" cssclass="btn-main" runat="server" text="Add new Price" onclick="btnAddPrice_Click" />
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
