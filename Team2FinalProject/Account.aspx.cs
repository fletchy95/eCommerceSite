using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team2FinalProject
{
    public partial class AboutUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.HeaderText = "Account Information";
            Master.AddCurrentPage("Account Information");
            btnUpdate.Visible = false;
            btnUpdateInfo.Visible = true;
            string imageHeader = "~/Images/Products/";
            if((string)Session["AccountInfoRecorded"] == "true")
            {
                txtFirstName.Text = (string)Session["FirstName"];
                txtLastName.Text = (string)Session["LastName"];
                txtEmail.Text = (string)Session["Email"];
                txtPhone.Text = (string)Session["Phone"];
                txtAddress.Text = (string)Session["Address"];
                txtCardNumber.Text = (string)Session["CardNumber"];
                txtExpiration.Text = (string)Session["CardExpiration"];
                txtSecuityCode.Text = (string)Session["CardSecurityCode"];
                txtCity.Text = (string)Session["City"];
                txtState.Text = (string)Session["State"];
                txtZipcode.Text = (string)Session["Zipcode"];
                txtCardType.Text = (string)Session["CardType"];
            }
            if((string)Session["Load"] == "Two")
            {
                ItemOneImg.ImageUrl = String.Concat(imageHeader, (string)Session["ProductOnePicture"]);
                ItemOneBtn.Text = (string)Session["ProductOneName"];
                ItemOnePrice.Text = (string)Session["ProductOnePrice"];
            }
            else if((string)Session["Load"] == "Full")
            {
                ItemOneImg.ImageUrl = String.Concat(imageHeader, (string)Session["ProductOnePicture"]);
                ItemOneBtn.Text = (string)Session["ProductOneName"];
                ItemOnePrice.Text = (string)Session["ProductOnePrice"];
                ItemTwoImg.ImageUrl = String.Concat(imageHeader, (string)Session["ProductTwoPicture"]);
                ItemTwoBtn.Text = (string)Session["ProductTwoName"];
                ItemTwoPrice.Text = (string)Session["ProductTwoPrice"];
            }
            else if((string)Session["Load"] == "Replace")
            {
                ItemOneImg.ImageUrl = String.Concat(imageHeader, (string)Session["ProductOnePicture"]);
                ItemOneBtn.Text = (string)Session["ProductOneName"];
                ItemOnePrice.Text = (string)Session["ProductOnePrice"];
                ItemTwoImg.ImageUrl = String.Concat(imageHeader, (string)Session["ProductTwoPicture"]);
                ItemTwoBtn.Text = (string)Session["ProductTwoName"];
                ItemTwoPrice.Text = (string)Session["ProductTwoPrice"];
                ItemThreeImg.ImageUrl = String.Concat(imageHeader, (string)Session["ProductThreePicture"]);
                ItemThreeBtn.Text = (string)Session["ProductThreeName"];
                ItemThreePrice.Text = (string)Session["ProductThreePrice"];
            }
            else
            {
                // Do Nothing
            }
        }

        protected void btnUpdateInfo_Click(object sender, EventArgs e)
        {
            txtFirstName.ReadOnly = false;
            txtLastName.ReadOnly = false;
            txtEmail.ReadOnly = false;
            txtPhone.ReadOnly = false;
            txtAddress.ReadOnly = false;
            txtCardNumber.ReadOnly = false;
            txtExpiration.ReadOnly = false;
            txtSecuityCode.ReadOnly = false;
            txtCity.ReadOnly = false;
            txtState.ReadOnly = false;
            txtZipcode.ReadOnly = false;
            txtCardType.ReadOnly = false;
            btnUpdateInfo.Visible = false;
            btnUpdate.Visible = true;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Session["FirstName"] = txtFirstName.Text.ToString();
            Session["LastName"] = txtLastName.Text.ToString();
            Session["Email"] = txtEmail.Text.ToString();
            Session["Phone"] = txtPhone.Text.ToString();
            Session["Address"] = txtAddress.Text.ToString();
            Session["CardNumber"] = txtCardNumber.Text.ToString();
            Session["CardExpiration"] = txtExpiration.Text.ToString();
            Session["CardSecurityCode"] = txtSecuityCode.Text.ToString();
            Session["City"] = txtCity.Text.ToString();
            Session["State"] = txtState.Text.ToString();
            Session["Zipcode"] = txtZipcode.Text.ToString();
            Session["CardType"] = txtCardType.Text.ToString();
            Session["AccountInfoRecorded"] = "true";
            txtFirstName.ReadOnly = true;
            txtLastName.ReadOnly = true;
            txtEmail.ReadOnly = true;
            txtPhone.ReadOnly = true;
            txtAddress.ReadOnly = true;
            txtCardNumber.ReadOnly = true;
            txtExpiration.ReadOnly = true;
            txtSecuityCode.ReadOnly = true;
            txtCardType.ReadOnly = true;
            btnUpdateInfo.Visible = true;
            btnUpdate.Visible = false;
        }

        protected void ItemOneBtn_Click(object sender, EventArgs e)
        {
            Session["ProductName"] = Session["ProductOneID"];
            Response.Redirect("Order");
        }

        protected void ItemTwoBtn_Click(object sender, EventArgs e)
        {
            Session["ProductName"] = Session["ProductTwoID"];
            Response.Redirect("Order");
        }

        protected void ItemThreeBtn_Click(object sender, EventArgs e)
        {
            Session["ProductName"] = Session["ProductThreeID"];
            Response.Redirect("Order");
        }
    }
}