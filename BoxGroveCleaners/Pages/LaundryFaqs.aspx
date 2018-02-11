<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Layout.Master" AutoEventWireup="true" CodeBehind="LaundryFaqs.aspx.cs" Inherits="BoxGroveCleaners.Pages.LaundryFaqs" %>
<asp:content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Laundry FAQs</title>
</asp:content>
<asp:content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
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
            <li class="nav__link nav__link--selected">
                <a data-js-hook="singlepagenav" href="/Pages/LaundryFaqs.aspx" class="text-contrasting">Laundry FAQs</a>
            </li>
            <li class="nav__link">
                <a data-js-hook="singlepagenav" href="/Pages/ContactUs.aspx" class="text-contrasting">Contact Us</a>
            </li>
        </ul>
    </nav>
</asp:content>
<asp:content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <article>
        <div id="pnlLaundryFaqs" class="content">
            <h1 class="content__header">
                <span class="content__header__text container-main">
                    Laundry FAQs
                    <span class="icons--arrowDown">&nbsp;</span>
                </span>
            </h1>
            <section class="content__section--first cf">
                <div class="content__container container-main cf">
                    <div id="laundryFaqsAccordion">
                        <asp:repeater id="rptLaundryFaqs" runat="server">
                            <itemtemplate>
                                <h2>
                                    <a href="#">Q: <%#Eval("Question") %></a>
                                </h2>
                                <div>
                                    <%#Eval("Answer") %>
                                </div>
                            </itemtemplate>
                        </asp:repeater>
                    </div>
                </div>
            </section>
        </div>
    </article>
    <footer class="footer">
        <div class="content__header__text container-main cf">
            <span class="icons--arrowDownMap">&nbsp;</span>
            <section class="footer__section">
                <h2 class="content__section__title--contrasting">Services</h2>
                <ul class="text-muted">
                    <li>
                        <a data-js-hook="scrollnav" href="/Default.aspx#pnlFineDryCleaning" class="text-muted">
                            Fine Dry Cleaning
                        </a>
                    </li>
                    <li>
                        <a data-js-hook="scrollnav" href="/Default.aspx#pnlShirtLaundering" class="text-muted">
                            Expert Shirt Laundering
                        </a>
                    </li>
                    <li>
                        <a data-js-hook="scrollnav" href="/Default.aspx#pnlProfessionalAlterations" class="text-muted">
                            Professional Alterations
                        </a>
                    </li>
                    <li>
                        <a data-js-hook="scrollnav" href="/Default.aspx#pnlHouseholdTextile" class="text-muted">
                            Household Textile Care
                        </a>
                    </li>
                    <li>
                        <a data-js-hook="scrollnav" href="/Default.aspx#pnlSuedeNLeather" class="text-muted">
                            Suede &amp; Leather Cleaning
                        </a>
                    </li>
                    <li>
                        <a data-js-hook="scrollnav" href="/Default.aspx#pnlWeddingGown" class="text-muted">
                            Wedding Gown Cleaning &amp; Preservation
                        </a>
                    </li>
                </ul>
            </section>
            <section class="footer__section">
                <h2 class="content__section__title--contrasting">Links</h2>
                <ul class="text-muted">
                    <li>
                        <a data-js-hook="singlepagenav" href="/Default.aspx" class="text-muted">
                            Home
                        </a>
                    </li>
                    <li>
                        <a data-js-hook="singlepagenav" href="/Pages/Services.aspx" class="text-muted">
                            Services
                        </a>
                    </li>
                    <li>
                        <a data-js-hook="singlepagenav" href="/Pages/CleaningProcess.aspx" class="text-muted">
                            Cleaning Process
                        </a>
                    </li>
                    <li>
                        <a data-js-hook="singlepagenav" href="/Pages/LaundryFaqs.aspx" class="text-muted">
                            Laundry FAQs
                        </a>
                    </li>
                    <li>
                        <a data-js-hook="singlepagenav" href="/Pages/ContactUs.aspx" class="text-muted">
                            Contact Us
                        </a>
                    </li>
                </ul>
            </section>
            <section class="footer__section">
                <h2 class="content__section__title--contrasting">Affiliation</h2>
                <ul class="text-muted">
                    <li>
                        <a data-js-hook="singlepagenav" href="/Pages/CleaningProcess.aspx" class="text-muted">
                            GreenEarth Cleaning
                        </a>
                    </li>
                </ul>
            </section>
        </div>
    </footer>
</asp:content>
<asp:content ID="Content4" ContentPlaceHolderID="scripts" runat="server">
    <script>
        $('#laundryFaqsAccordion').accordion({
            heightStyle: 'content'
                , collapsible: true
        });
    </script>
</asp:content>
