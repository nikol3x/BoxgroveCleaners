<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Layout.Master" AutoEventWireup="true" CodeBehind="Hours.aspx.cs" Inherits="BoxGroveCleaners.Admin.Hours" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Hours Administration</title>
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
    <form id="frmHours" runat="server">
        <asp:panel id="pnlHours" cssclass="content" runat="server">
            <h1 class="content__header">
                <span class="content__header__text container-main">
                    Update Hours
                    <span class="icons--arrowDown">&nbsp;</span>
                </span>
            </h1>
            <section class="content__section--first cf">
                <div id="pnlHourList" class="content__container container-main cf">
                    <a href="/Admin/LogOut.aspx" class="link">
                        Click Here to <strong>Log Out</strong>
                    </a>
                    <br /><br />
                    <h2 class="content__section__title">
                        Update Hours From List
                    </h2>
                    <asp:repeater id="rptHoursList" runat="server" onitemcommand="rptHoursList_ItemCommand">
                        <itemtemplate>
                            <div class="row">
                                <div class="col-xs-2" style="padding-top: 1.1em">
                                    <asp:hiddenfield id="hiddenKey" runat="server" value='<%#Eval("Key") %>' />
                                    <asp:linkbutton id="btnUpdate" runat="server" commandname="Update" text="Update" cssclass="btn-main"></asp:linkbutton>
                                    <asp:linkbutton id="btnDelete" runat="server" commandname="Delete" text="Delete" cssclass="btn-main"></asp:linkbutton>
                                </div>
                                <div class="col-xs-10">
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <asp:textbox id="txtName" text='<%#Eval("Name") %>' runat="server" cssclass="textbox textbox--inline"></asp:textbox>
                                        </div>
                                        <div class="col-xs-6">
                                            <asp:textbox id="txtHours" text='<%#Eval("Hours") %>' runat="server" cssclass="textbox textbox--inline"></asp:textbox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </itemtemplate>
                        <footertemplate>
                            <div class="row">
                                <div class="col-xs-2" style="padding-top: 1.1em">
                                    <asp:linkbutton id="btnInsert" runat="server" commandname="Insert" text="Add New Hours" cssclass="btn-main"></asp:linkbutton>
                                </div>
                                <div class="col-xs-10">
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <asp:textbox id="txtName" text='<%#Eval("Name") %>' runat="server" cssclass="textbox textbox--inline"></asp:textbox>
                                        </div>
                                        <div class="col-xs-6">
                                            <asp:textbox id="txtHours" text='<%#Eval("Hours") %>' runat="server" cssclass="textbox textbox--inline"></asp:textbox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </footertemplate>
                    </asp:repeater>
                    <div id="pnlFAQsForm" class="content__container container-main cf">
                    <h2 class="content__section__title">
                        Instructions When Updating Hours
                    </h2>
                    <p>
                        When updating hours update one row at a time.
                    </p><br />
                </div>
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
