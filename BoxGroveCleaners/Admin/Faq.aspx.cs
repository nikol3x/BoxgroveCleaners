using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BoxGroveCleaners.Models;

namespace BoxGroveCleaners.Admin
{
    public partial class Faq : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("/Admin/Login.aspx");
            }

            if (IsPostBack == false)
            {
                var faqModel = new FAQs();
                faqModel.LoadData();

                rptFAQsList.DataSource = faqModel.FaqList;
                rptFAQsList.DataBind();
            }
        }

        protected void btnAddFaq_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(hiddenAnswer.Value) == false
                && string.IsNullOrEmpty(txtNewQuestion.Text) == false)
            {
                lblNewFaqError.Text = string.Empty;

                var faqModel = new FAQs();
                faqModel.Add(
                    HttpUtility.UrlDecode(txtNewQuestion.Text),
                    HttpUtility.UrlDecode(hiddenAnswer.Value)
                );

                rptFAQsList.DataSource = faqModel.FaqList;
                rptFAQsList.DataBind();

                txtNewQuestion.Text = string.Empty;

                lblNewFaqError.Text = "New FAQ added";
                lblNewFaqError.CssClass = "status--success";
            }
            else
            {
                lblNewFaqError.Text = "Ensure that a value is entered for both question and answer";
                lblNewFaqError.CssClass = "error-text";
            }
        }

        protected void rptFAQsList_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            var hiddenKeyField = (HiddenField)e.Item.FindControl("hiddenKey");
            var key = Convert.ToInt32(hiddenKeyField.Value);
            var faqModel = new FAQs();
            faqModel.Remove(key);

            rptFAQsList.DataSource = faqModel.FaqList;
            rptFAQsList.DataBind();
        }
    }
}