using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace BoxGroveCleaners.Admin
{
    public partial class Coupon : System.Web.UI.Page
    {
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
    }
}