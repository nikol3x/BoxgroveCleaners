using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BoxGroveCleaners.Models;

namespace BoxGroveCleaners.Pages
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Load Hours of Operation Model
            var hoursModel = new HoursOfOperation();
            hoursModel.LoadData();

            rptHoursOfOperation.DataSource = hoursModel.Days;
            rptHoursOfOperation.DataBind();
        }
    }
}