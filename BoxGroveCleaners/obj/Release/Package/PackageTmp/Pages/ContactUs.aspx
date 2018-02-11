<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Layout.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="BoxGroveCleaners.Pages.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Contact Us</title>
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
            <li class="nav__link nav__link--selected">
                <a data-js-hook="singlepagenav" href="/Pages/ContactUs.aspx" class="text-contrasting">Contact Us</a>
            </li>
        </ul>
    </nav>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <article>
        <div id="pnlContactUs" class="content">
            <h1 class="content__header">
                <span class="content__header__text container-main">
                    Contact Us
                    <span class="icons--arrowDown">&nbsp;</span>
                </span>
            </h1>
            <div class="content__section--first cf">
                <div id="pnlMap">&nbsp;</div>
                <div id="pnlContactContainer" class="container-main cf">
                    <section id="pnlContactInfo">
                        <h2 class="content__section__title">Address</h2>
                        <address>
                            6899 14th Ave #5<br />
                            Markham, ON L6B 0S2<br /><br />
                            Phone: 905-471-7242
                        </address><br />
                        <h2 class="content__section__title">Hours of Operation</h2>
                        <p>
                            Mon: 9:00AM - 7:00PM
                        </p>
                        <p>
                            Tues: Closed
                        </p>
                        <p>
                            Wed-Fri: 9:00AM - 7:00PM
                        </p>
                        <p>
                            Sat: 10:00AM - 5:00PM
                        </p>
                        <p>
                            Sun: 11:00AM - 4:00PM
                        </p>
                    </section>
                </div>
            </div>
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
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="scripts" runat="server">
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script>
        var mapCanvas = document.getElementById('pnlMap');
        var myLatLng = { lat: 43.8603448, lng: -79.2248218 };
        var mapOptions = {
            center: myLatLng
            , scrollwheel: false
            , zoom: 17
            , mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(mapCanvas, mapOptions);

        var marker = new google.maps.Marker({
            position: myLatLng,
            map: map,
            title: 'Boxgrove Cleaners'
        });
    </script>
</asp:Content>
