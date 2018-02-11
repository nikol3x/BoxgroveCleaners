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
        }
    }
}