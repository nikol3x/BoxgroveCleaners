using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BoxGroveCleaners.Models;

namespace BoxGroveCleaners.Admin
{
    public partial class Pricing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("/Admin/Login.aspx");
            }

            if (IsPostBack == false)
            {
                var model = new Models.Pricing();
                model.LoadData();

                rptPrices.DataSource = model.Prices;
                rptPrices.DataBind();
            }
        }

        protected void btnAddPrice_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtNewDescription.Text) == false)
            {
                lblNewPriceError.Text = string.Empty;

                var model = new Models.Pricing();
                model.Add(
                    HttpUtility.UrlDecode(txtNewDescription.Text)
                );

                rptPrices.DataSource = model.Prices;
                rptPrices.DataBind();

                txtNewDescription.Text = string.Empty;

                lblNewPriceError.Text = "New Price added";
                lblNewPriceError.CssClass = "status--success";
            }
            else
            {
                lblNewPriceError.Text = "Ensure that a value is entered for the price";
                lblNewPriceError.CssClass = "error-text";
            }
        }

        protected void rptPrices_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            var hiddenKeyField = (HiddenField)e.Item.FindControl("hiddenKey");
            var key = Convert.ToInt32(hiddenKeyField.Value);
            var model = new Models.Pricing();
            model.Remove(key);

            rptPrices.DataSource = model.Prices;
            rptPrices.DataBind();
        }
    }
}