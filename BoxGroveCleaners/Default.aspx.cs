using BoxGroveCleaners.Models;
using System;

namespace BoxGroveCleaners
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var model = new FAQs();
            model.LoadData();

            rptLaundryFaqs.DataSource = model.FaqList;
            rptLaundryFaqs.DataBind();
        }
    }
}