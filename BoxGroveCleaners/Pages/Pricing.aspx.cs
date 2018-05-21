using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
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
    }
}