<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Layout.Master" AutoEventWireup="true" CodeBehind="CleaningProcess.aspx.cs" Inherits="BoxGroveCleaners.Pages.CleaningProcess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Cleaning Process</title>
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
            <li class="nav__link nav__link--selected">
                <a data-js-hook="singlepagenav" href="/Pages/CleaningProcess.aspx" class="text-contrasting">Cleaning Process</a>
            </li>
            <li class="nav__link">
                <a data-js-hook="singlepagenav" href="/Pages/LaundryFaqs.aspx" class="text-contrasting">Laundry FAQs</a>
            </li>
            <li class="nav__link">
                <a data-js-hook="singlepagenav" href="/Pages/ContactUs.aspx" class="text-contrasting">Contact Us</a>
            </li>
        </ul>
    </nav>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <article>
        <div id="pnlCleaningProcess" class="content">
            <h1 class="content__header">
                <span class="content__header__text container-main">
                    Cleaning Process
                    <span class="icons--arrowDown">&nbsp;</span>
                </span>
            </h1>
            <section class="content__section--first cf">
                <div class="content__container container-main cf">
                    <h2 class="content__section__title">
                        We Use the GreenEarth Cleaning Process
                    </h2>
                    <p>
                        The GreenEarth Cleaning process uses liquid silicone in place of perchloroethylene. Essentially liquified sand, silicone is non-hazardous and non-toxic to the environment. When released to the environment, it safely breaks down into the three natural elements it is made from: sand (SiO2) and trace amounts of water and carbon dioxide. Which means it is safe for the air, water and soil.
                    </p>
                </div>
            </section><br />
            <section class="cf">
                <div class="content__container container-main cf">
                    <img class="content__section--left" src="/Content/images/process1.png" alt="process 1" />
                    <h2 class="content__section__title content__section__title--spacious content__section--right">
                        Use Silicone Based Detergent
                    </h2>
                    <p class="content__section--right">
                        Liquid silicone is chemically inert, meaning it doesn’t chemically react with fabric fibers. It just carriers the detergent to your clothes and gently carries away the dirt and oil. 
                    </p>
                </div>
            </section><br />
            <section class="cf">
                <div class="content__container container-main cf">
                    <img class="content__section--left" src="/Content/images/process2.png" alt="process 2" />
                    <h2 class="content__section__title content__section__title--spacious content__section--right">
                        Removes Soil
                    </h2>
                    <p class="content__section--right">
                        Our detergent is delivered directly to the dirt, soil, and stains of any fabric. Because the detergent we use is silicone based it is light weight and has very low surface tension, allowing it to gently penetrate fabric fibers and rinse away dirt in a way that water or perc cannot.
                    </p>
                </div>
            </section><br />
            <section class="cf">
                <div class="content__container container-main cf">
                    <img class="content__section--left" src="/Content/images/process3.png" alt="process 3" />
                    <h2 class="content__section__title content__section__title--spacious content__section--right">
                        Freshens Clothes
                    </h2>
                    <p class="content__section--right">
                        Since clothes are cleaned the GreenEarth way, they are not bathed in perc or other petrochemical solvents, they come back fresh and clean without unpleasant “dry cleaning” odor.
                    </p>
                </div>
            </section><br />
            <div class="content__container container-main cf">
                <a href="http://www.greenearthcleaning.com/patented-process/" target="_blank">
                    <img id="greenEarthLogo" src="/Content/images/greenEarthLogo.png" alt="Green Earth Logo" />
                </a>
            </div>
        </div>
    </article>    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
