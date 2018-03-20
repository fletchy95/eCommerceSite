using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team2FinalProject
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["AccountInfoRecorded"] == "true")
            {
                txtFirstName.Text = (string)Session["FirstName"];
                txtFirstNameBilling.Text = (string)Session["FirstName"];
                txtLastName.Text = (string)Session["LastName"];
                txtLastNameBilling.Text = (string)Session["LastName"];
                txtEmail.Text = (string)Session["Email"];
                txtEmailBilling.Text = (string)Session["Email"];
                txtPhone.Text = (string)Session["Phone"];
                txtPhoneBilling.Text = (string)Session["Phone"];
                txtAddress.Text = (string)Session["Address"];
                txtAddressBilling.Text = (string)Session["Address"];
                txtCSV.Text = (string)Session["CardSecurityCode"];
                txtCity.Text = (string)Session["City"];
                txtCityBilling.Text = (string)Session["City"];
                txtZip.Text = (string)Session["Zipcode"];
                txtZipBilling.Text = (string)Session["Zipcode"];
                txtNameOnCard.Text = (string)Session["FirstName"] + " " + (string)Session["LastName"];
                txtCardNumber.Text = (string)Session["CardNumber"];
                txtDOB.Text = (string)Session["CardExpiration"];
                ddlState.SelectedValue = (string)Session["State"];
                ddlStateBilling.SelectedValue = (string)Session["State"];
                ddlCardType.SelectedValue = (string)Session["CardType"];
            }
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // lblSubmitMessage.EnableViewState = true;
                lblSubmitMessage.Text = "Thank You! You have successfully submitted your details and your order will be shipped in 2-3 business days!";
            }
        }
    }
}