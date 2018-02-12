using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BoxGroveCleaners.Models;

namespace BoxGroveCleaners.Admin
{
    public partial class Hours : System.Web.UI.Page
    {
        #region Event Handlers
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                var hoursModel = new HoursOfOperation();
                hoursModel.LoadData();

                rptHoursList.DataSource = hoursModel.Days;
                rptHoursList.DataBind();
            }
        }

        protected void rptHoursList_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            HiddenField hiddenKeyField = (HiddenField)e.Item.FindControl("hiddenKey");
            TextBox txtName = (TextBox)e.Item.FindControl("txtName");
            TextBox txtHours = (TextBox)e.Item.FindControl("txtHours");

            var hoursModel = new HoursOfOperation();

            switch (e.CommandName)
            {
                case "Update":
                    hoursModel.Update(Convert.ToInt32(hiddenKeyField.Value), 
                        txtName.Text, txtHours.Text);
                    break;
                case "Delete":
                    hoursModel.Remove(Convert.ToInt32(hiddenKeyField.Value));
                    break;
                case "Insert":
                    hoursModel.Add(txtName.Text, txtHours.Text);
                    break;
            }

            rptHoursList.DataSource = hoursModel.Days;
            rptHoursList.DataBind();
        }
        #endregion
    }
}