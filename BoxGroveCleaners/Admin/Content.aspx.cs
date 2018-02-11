using BoxGroveCleaners.Models;
using System;
using System.IO;
using System.Web;
using System.Web.Configuration;
using System.Web.UI.WebControls;

namespace BoxGroveCleaners.Admin
{
    public partial class Content : System.Web.UI.Page
    {
        #region Event Handlers
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCoupon_Click(object sender, EventArgs e)
        {
            if (upCoupon.HasFile)
            {
                SaveFile(upCoupon.PostedFile);
            }
            else
            {
                lblCouponError.Text = "You did not specify a file to upload.";
                lblCouponError.CssClass = "error-text";
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = WebConfigurationManager.AppSettings["adminUsername"].ToLower();
            string password = WebConfigurationManager.AppSettings["adminPassword"].ToLower();

            if (txtUsername.Text.ToLower() == username && txtPassword.Text == password)
            {
                ToggleFormState(FormState.authenticated);

                var faqModel = new FAQs();
                faqModel.LoadData();
                
                rptFAQsList.DataSource = faqModel.FaqList;
                rptFAQsList.DataBind();
            }
            else
            {
                ToggleFormState(FormState.anonymous);
                lblLoginError.Text = "User name or password provided is invalid";
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
        #endregion

        #region Helpers
        private void ToggleFormState(FormState state)
        {
            switch (state)
            {
                case FormState.anonymous:
                    pnlLoginForm.Visible = true;
                    pnlUploadCoupon.Visible = false;
                    pnlFAQs.Visible = false;
                    break;
                case FormState.authenticated:
                    pnlLoginForm.Visible = false;
                    pnlUploadCoupon.Visible = true;
                    pnlFAQs.Visible = true;
                    break;
            }
        }

        private void SaveFile(HttpPostedFile file)
        {
            string savePath = Server.MapPath("\\Coupon\\");
            string fileName = "Coupon.pdf";

            if (Path.GetExtension(upCoupon.FileName).ToLower() != ".pdf")
            {
                lblCouponError.Text = "The file uploaded is not a PDF.";
                lblCouponError.CssClass = "error-text";
                return;
            }

            if (File.Exists(savePath + fileName))
            {
                File.Delete(savePath + fileName);
            }

            lblCouponError.Text = "Coupon has been changed.";
            lblCouponError.CssClass = "status--success";

            upCoupon.SaveAs(savePath + fileName);
        }
        #endregion

        #region Internal Classes/Enums/Structs
        private enum FormState
        {
            anonymous = 0,
            authenticated = 1
        }
        #endregion
    }
}