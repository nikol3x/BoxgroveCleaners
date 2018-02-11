<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Layout.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="BoxGroveCleaners.Pages.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Services</title>
</asp:Content>
<asp:content id="content4" contentplaceholderid="navigation" runat="server">
    <h1 id="pnlLogoSmall" class="logo-container cf">
        <a data-js-hook="singlepagenav" href="/Default.aspx" title="Go Home" class="logo--small">&nbsp;</a>
    </h1>
    <nav class="nav__container">
        <ul>
            <li class="nav__link">
                <a data-js-hook="singlepagenav" href="/Default.aspx" class="text-contrasting">Home</a>
            </li>
            <li class="nav__link nav__link--selected">
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
                        Do you have a tough stain that you can’t get out? Come to us for expert shirt laundering to get those tough stains out. Our process combines a strong detergent and a spotting process to target those tough stains.
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
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
