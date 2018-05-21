using BoxGroveCleaners.Models;
using System;

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
    }
}