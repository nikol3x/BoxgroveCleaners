<%@ Page Title="" Language="C#" MasterPageFile="/Templates/Layout.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BoxGroveCleaners.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Boxgrove Cleaners</title>
</asp:Content>
<asp:content id="content4" contentplaceholderid="navigation" runat="server">
    <h1 id="pnlLogoSmall" class="logo-container cf">
        <a data-js-hook="singlepagenav" href="/Default.aspx" title="Go Home" class="logo--small">&nbsp;</a>
    </h1>
    <h1 id="pnlLogo" class="logo-container cf">
        <a data-js-hook="singlepagenav" href="/Default.aspx" title="Go Home" class="logo">&nbsp;</a>
    </h1>
    <nav class="nav__container">
        <ul>
            <li class="nav__link nav__link--selected">
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
        </ul>
    </nav>
</asp:content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div id="pnlDefault" class="banner">
        <div id="pnlSunrays">
            <div class="banner__slider">
                <div id="pnlSliderContainer" style="position: relative; width: 922px; height: 308px; overflow: hidden">
                    <div u="slides" style="cursor: move; position: absolute; overflow: hidden; left: 0; top: 0; width: 922px; height: 308px">
                        <div>
                            <figure class="banner__figure">
                                <img src="/Content/images/banner_plaza.jpg" alt="Shoppes of Boxgrove" class="banner__image" />
                                <figcaption class="banner__caption">
                                    We are located at<br />
                                    The Shoppes of BoxGrove
                                </figcaption>
                                <a data-js-hook="singlepagenav" data-nav-index="4" href="/Pages/ContactUs.aspx" class="banner_callToAction">View Store Location</a>
                            </figure>
                        </div>
                        <div class="hidden">
                            <figure class="banner__figure">
                                <img src="/Content/images/banner_slogan.jpg" alt="Shoppes of Boxgrove" class="banner__image" />
                                <%--<figcaption class="banner__caption">
                                    We are located at<br />
                                    The Shoppes of BoxGrove
                                </figcaption>
                                <a data-js-hook="singlepagenav" data-nav-index="4" href="/Pages/ContactUs.aspx" class="banner_callToAction">View Store Location</a>--%>
                            </figure>
                        </div>
                    </div>
                    <!--#region Bullet Navigator Skin Begin -->
                    <!-- Help: http://www.jssor.com/development/slider-with-bullet-navigator-jquery.html -->
                    <style>
                        /* jssor slider bullet navigator skin 01 css */
                        /*
                        .jssorb01 div           (normal)
                        .jssorb01 div:hover     (normal mouseover)
                        .jssorb01 .av           (active)
                        .jssorb01 .av:hover     (active mouseover)
                        .jssorb01 .dn           (mousedown)
                        */
                        .jssorb01 {
                            position: absolute;
                        }
                        .jssorb01 div, .jssorb01 div:hover, .jssorb01 .av {
                            position: absolute;
                            /* size of bullet elment */
                            width: 12px;
                            height: 12px;
                            filter: alpha(opacity=70);
                            opacity: .7;
                            overflow: hidden;
                            cursor: pointer;
                            border: #000 1px solid;
                        }
                        .jssorb01 div { background-color: gray; }
                        .jssorb01 div:hover, .jssorb01 .av:hover { background-color: #d3d3d3; }
                        .jssorb01 .av { background-color: #fff; }
                        .jssorb01 .dn, .jssorb01 .dn:hover { background-color: #555555; }
                    </style>
                    <!-- bullet navigator container -->
                    <div u="navigator" class="jssorb01" style="bottom: 16px; right: 10px;">
                        <!-- bullet navigator item prototype -->
                        <div u="prototype"></div>
                    </div>
                    <!--#endregion Bullet Navigator Skin End -->
        
                    <!--#region Arrow Navigator Skin Begin -->
                    <!-- Help: http://www.jssor.com/development/slider-with-arrow-navigator-jquery.html -->
                    <style>
                        /* jssor slider arrow navigator skin 05 css */
                        /*
                        .jssora05l                  (normal)
                        .jssora05r                  (normal)
                        .jssora05l:hover            (normal mouseover)
                        .jssora05r:hover            (normal mouseover)
                        .jssora05l.jssora05ldn      (mousedown)
                        .jssora05r.jssora05rdn      (mousedown)
                        */
                        .jssora05l, .jssora05r {
                            display: block;
                            position: absolute;
                            /* size of arrow element */
                            width: 40px;
                            height: 40px;
                            cursor: pointer;
                            background: url(../img/a17.png) no-repeat;
                            overflow: hidden;
                        }
                        .jssora05l { background-position: -10px -40px; }
                        .jssora05r { background-position: -70px -40px; }
                        .jssora05l:hover { background-position: -130px -40px; }
                        .jssora05r:hover { background-position: -190px -40px; }
                        .jssora05l.jssora05ldn { background-position: -250px -40px; }
                        .jssora05r.jssora05rdn { background-position: -310px -40px; }
                    </style>
                </div>
            </div>
            <div class="banner__summary cf">
                <section class="banner__summary__section">
                    <h1 class="banner__summary__header">Announcements &amp;<br />Special Promotion</h1>
                    <a href="/Coupon/Coupon.pdf" target="_blank" class="banner__summary__text text-contrasting">
                        Click Here to print our latest coupon
                    </a>
                </section>
                <section class="banner__summary__section banner__summary__section--separator">
                    <h1 class="banner__summary__header">Services Provided</h1>
                    <ul>
                        <li class="banner__summary__text">
                            <a data-js-hook="scrollnav" href="/Default.aspx#pnlFineDryCleaning" class="text-contrasting">
                                Fine Dry Cleaning
                            </a>
                        </li>
                        <li class="banner__summary__text">
                            <a data-js-hook="scrollnav" href="/Default.aspx#pnlShirtLaundering" class="text-contrasting">
                                Expert Shirt Laundering
                            </a>
                        </li>
                        <li class="banner__summary__text">
                            <a data-js-hook="scrollnav" href="/Default.aspx#pnlProfessionalAlterations" class="text-contrasting">
                                Professional Alterations
                            </a>
                        </li>
                        <li class="banner__summary__text">
                            <a data-js-hook="scrollnav" href="/Default.aspx#pnlHouseholdTextile" class="text-contrasting">
                                Household Textile Care
                            </a>
                        </li>
                        <li class="banner__summary__text">
                            <a data-js-hook="scrollnav" href="/Default.aspx#pnlSuedeNLeather" class="text-contrasting">
                                Suede &amp; Leather Cleaning
                            </a>
                        </li>
                        <li class="banner__summary__text">
                            <a data-js-hook="scrollnav" href="/Default.aspx#pnlWeddingGown" class="text-contrasting">
                                Wedding Gown Cleaning &amp; Preservation
                            </a>
                        </li>
                    </ul>
                </section>
                <section class="banner__summary__section">
                    <h1 class="banner__summary__header">Green Earth Cleaning</h1>
                    <p class="banner__summary__text">
                        We use non-hazardous and non-toxic detergents.
                    </p>
                    <a data-js-hook="singlepagenav" data-nav-index="2" href="/Pages/CleaningProcess.aspx" class="banner__summary__text text-contrasting">
                        >> Click here to learn more
                    </a>
                </section>
            </div>
        </div>
    </div>
    <article>
        <div id="pnlServices" class="content">
            <h1 class="content__header">
                <span class="content__header__text container-main">
                    Cleaning Services
                    <span class="icons--arrowDown">&nbsp;</span>
                </span>
            </h1>
            <section id="pnlFineDryCleaning" class="content__section--first cf">
                <div class="content__container container-main cf">
                    <h2 class="content__section__title content__section--left">
                        Fine Dry Cleaning
                    </h2>
                    <div class="content__section--right">
                        <img class="service__image" src="/Content/images/service1.jpg" alt="Fine Dry Cleaning" />
                    </div>
                    <p class="content__section--left">
                        Our dry cleaning processes uses liquid silicone in place of perchloroethylene to clean your clothes. It is used to clean delicate fabrics that cannot withstand the rough and tumble of a washing machine and clothes dryer.
                        <br /><br />
                        We are dedicated to providing the highest quality of service to our clients. By coming to us for dry cleaning you can rest assured that your garments will be properly cleaned.
                    </p>
                </div>
            </section>
            <section id="pnlShirtLaundering" class="cf">
                <div class="content__container container-main cf">
                    <h2 class="content__section__title content__section--right">
                        Expert Shirt Laundering
                    </h2>
                    <div class="content__section--left">
                        <img class="service__image" src="/Content/images/service2.jpg" alt="Expert Shirt Laundering" />
                    </div>
                    <p class="content__section--right">
                        Do you have a tough stain that you can’t get out? Come to us for expert shirt laundering to get those tough stains out. Our process combines an effective detergent and a gentle spotting process to target those stains without damaging the fabric.
                    </p>
                </div>
            </section>
            <section id="pnlProfessionalAlterations" class="cf">
                <div class="content__container container-main cf">
                    <h2 class="content__section__title content__section--left">
                        Professional Alterations
                    </h2>
                    <div class="content__section--right">
                        <img class="service__image" src="/Content/images/service3.jpg" alt="Professional Alterations" />
                    </div>
                    <p class="content__section--left">
                        Our services includes major and minor repairs or alterations to keep your clothes in tidy shape and custom-fit to your needs. Come to us for the following:
                    </p>
                    <ul class="list-dotted content__section--left text-spacious">
                        <li>
                            Repairs including replacing zipper and sewing pockets, waistbands, cuffs and hemlines
                        </li>
                        <li>
                            Alterations including shortening and lengthening, taking in and letting out
                        </li>
                        <li>
                            Tailoring can be performed alone or in conjunction with dry cleaning
                        </li>
                    </ul>
                </div>
            </section>
            <section id="pnlHouseholdTextile" class="cf">
                <div class="content__container container-main cf">
                    <h2 class="content__section__title content__section--right">
                        Household Textile Care
                    </h2>
                    <div class="content__section--left">
                        <img class="service__image" src="/Content/images/service4.jpg" alt="Household Textile Care" />
                    </div>
                    <p class="content__section--right">
                        To keep looking their best, drapes should be cleaned regularly, typically every six months or so if you're not rotating different window treatments in. Regular cleaning can help guard against your curtains getting too much sun damage and losing their luster. And there are health reasons for cleaning, not just aesthetic reasons - drapes collect and trap dust, pollen, smoke and bacteria.
                    </p>
                </div>
            </section>
            <section id="pnlSuedeNLeather" class="cf">
                <div class="content__container container-main cf">
                    <h2 class="content__section__title content__section--left">
                        Suede & Leather Cleaning
                    </h2>
                    <div class="content__section--right">
                        <img class="service__image" src="/Content/images/service5.jpg" alt="Suede & Leather Cleaning" />
                    </div>
                    <p class="content__section--left">
                        Our services includes cleaning of leather and suede jackets. From motorcycle jacks to varsity jackets to suede vests, there’s a leather look that’ll suit everyone.<br /><br />
                        Great quality leather and suede cleaning doesn't just clean your prized leathers; it also rejuvenates them, restoring the luster they may have lost through wear or through other cleaning processes.
                    </p>
                </div>
            </section>
            <section id="pnlWeddingGown" class="cf">
                <div class="content__container container-main cf">
                    <h2 class="content__section__title content__section--right">
                        Wedding Gown Cleaning & Preservation
                    </h2>
                    <div class="content__section--left">
                        <img class="service__image" src="/Content/images/service6.jpg" alt="Wedding Gown Cleaning & Preservation" />
                    </div>
                    <p class="content__section--right">
                        While a gown may be worn just one day, and may not appear soiled, it will require careful cleaning. Hidden soiling includes perspiration and body oils. Long gowns will pick up soil along the hemline and train. There may be food and beverage spills. Some stains, which are not immediately visible, will develop through oxidation causing discoloration, fabric weakness and damage to the gown.<br /><br />
                        We carefully examine every gown, establishing the most suitable method of cleaning and using proprietary pre-spotting techniques. Inspections are made at every stage of the cleaning and preservation process. Each wedding gown receives special and individual handling, with attention given to every detail.
                    </p>
                </div>
            </section>
        </div>
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

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <script src="Scripts/jssor.js"></script>
    <script src="Scripts/jssor.slider.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script src="Default.js"></script>
</asp:Content>
