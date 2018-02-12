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
                        <asp:repeater id="rptHoursOfOperation" runat="server">
                            <itemtemplate>
                                <p>
                                    <%#Eval("Name") %>:&nbsp;<%#Eval("Hours") %>
                                </p>
                            </itemtemplate>
                        </asp:repeater>
                    </section>
                </div>
            </div>
        </div>
    </article>    
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
