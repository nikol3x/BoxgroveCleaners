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
</asp:content>
<asp:content ID="Content4" ContentPlaceHolderID="scripts" runat="server">
    <script>
        $('#laundryFaqsAccordion').accordion({
            heightStyle: 'content'
                , collapsible: true
        });
    </script>
</asp:content>
