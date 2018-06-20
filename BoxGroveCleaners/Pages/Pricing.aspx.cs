using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace BoxGroveCleaners.Pages
{
    public partial class Pricing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var model = new Models.Pricing();
            model.LoadData();

            if (model.Prices.Count > 0)
            {
                int firstIndex = Convert.ToInt32(Math.Ceiling((double)model.Prices.Count / 2));
                var firstGroupPricing = model.Prices.GetRange(0, firstIndex);

                rptPricingLeft.DataSource = firstGroupPricing;
                rptPricingLeft.DataBind();

                if (firstIndex < model.Prices.Count)
                {
                    var secondGroupPricing = model.Prices.GetRange(firstIndex, model.Prices.Count - firstIndex);

                    rptPricingRight.DataSource = secondGroupPricing;
                    rptPricingRight.DataBind();
                }
            }
        }

        protected void rptPricingLeft_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                HtmlGenericControl listItem = (HtmlGenericControl)e.Item.FindControl("itemLeft");

                string price = listItem.InnerText.Replace("\r\n", "").Trim();

                if (string.IsNullOrEmpty(price))
                {
                    listItem.Visible = false;
                }
            }
        }

        protected void rptPricingRight_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                HtmlGenericControl listItem = (HtmlGenericControl)e.Item.FindControl("itemRight");

                string price = listItem.InnerText.Replace("\r\n", "").Trim();

                if (string.IsNullOrEmpty(price))
                {
                    listItem.Visible = false;
                }
            }
        }
    }
}