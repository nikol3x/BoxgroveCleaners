using BoxGroveCleaners.Models;
using System;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace BoxGroveCleaners
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Load FAQ Model
            var faqModel = new FAQs();
            faqModel.LoadData();

            rptLaundryFaqs.DataSource = faqModel.FaqList;
            rptLaundryFaqs.DataBind();

            // Load Hours of Operation Model
            var hoursModel = new HoursOfOperation();
            hoursModel.LoadData();

            rptHoursOfOperation.DataSource = hoursModel.Days;
            rptHoursOfOperation.DataBind();

            // Load Pricing
            var pricingModel = new Models.Pricing();
            pricingModel.LoadData();

            if (pricingModel.Prices.Count > 0)
            {
                int firstIndex = Convert.ToInt32(Math.Ceiling((double)pricingModel.Prices.Count / 2));
                var firstGroupPricing = pricingModel.Prices.GetRange(0, firstIndex);

                rptPricingLeft.DataSource = firstGroupPricing;
                rptPricingLeft.DataBind();

                if (firstIndex < pricingModel.Prices.Count)
                {
                    var secondGroupPricing = pricingModel.Prices.GetRange(firstIndex, pricingModel.Prices.Count - firstIndex);

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