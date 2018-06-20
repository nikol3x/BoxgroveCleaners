<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Layout.Master" AutoEventWireup="true" CodeBehind="Pricing.aspx.cs" Inherits="BoxGroveCleaners.Pages.Pricing" %>
<asp:content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Pricing</title>
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
            <li class="nav__link nav__link">
                <a data-js-hook="singlepagenav" href="/Pages/LaundryFaqs.aspx" class="text-contrasting">Laundry FAQs</a>
            </li>
            <li class="nav__link nav__link--selected">
                <a data-js-hook="singlepagenav" href="/Pages/Pricing.aspx" class="text-contrasting">Pricing</a>
            </li>
            <li class="nav__link">
                <a data-js-hook="singlepagenav" href="/Pages/ContactUs.aspx" class="text-contrasting">Contact Us</a>
            </li>
        </ul>
    </nav>
</asp:content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <article>
        <div id="pnlPricing" class="content background--nature">
            <h1 class="content__header">
                <span class="content__header__text container-main">
                    Pricing
                    <span class="icons--arrowDown">&nbsp;</span>
                </span>
            </h1>
            <section class="content__section--first cf">
                <div class="content__container container-main cf">
                    <div class="pricing-container cf">
                        <div class="pricing-container__col pricing-container__col1">
                            <ul class="list-dotted">
                                <asp:repeater id="rptPricingLeft" runat="server" onitemdatabound="rptPricingLeft_ItemDataBound">
                                    <itemtemplate>
                                        <li id="itemLeft" runat="server">
                                            <%#Eval("Description") %>
                                        </li>
                                    </itemtemplate>
                                </asp:repeater>                                
                            </ul>
                        </div>
                        <div class="pricing-container__col pricing-container__col2">
                            <ul class="list-dotted">
                                <asp:repeater id="rptPricingRight" runat="server" onitemdatabound="rptPricingRight_ItemDataBound">
                                    <itemtemplate>
                                        <li id="itemRight" runat="server">
                                            <%#Eval("Description") %>
                                        </li>
                                    </itemtemplate>
                                </asp:repeater>
                            </ul>
                        </div>
                    </div>
                    <br />
                    <p>
                        Please call 
                        <b>905-471-7242</b> or 
                        for any additional pricing.
                    </p>
                </div>
            </section>
        </div>
    </article>    
</asp:Content>