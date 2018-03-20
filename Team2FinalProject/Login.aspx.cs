using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team2FinalProject
{
    public partial class Login : System.Web.UI.Page
    {
        string[] account = { "John", "password", "Carlos", "password", "chris", "password" };
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["LoginUsed"] == "true")
            {
                txtUsername.Text = (string)Session["Username"];
                txtPassword.Text = (string)Session["Password"];
                chkRemeber.Checked = true;
                Response.Redirect("Account");
            }
        }
        public void btnLogIn_Click(object sender, EventArgs e)
        {
            int i = 0;
            while (i < account.Length)
            {
                if(txtUsername.Text.ToString()==account[i])
                {
                    if(txtPassword.Text.ToString()==account[i+1])
                    {
                        if(chkRemeber.Checked)
                        {
                            Session["Username"] = txtUsername.Text.ToString();
                            Session["Password"] = txtPassword.Text.ToString();
                            Session["LoginUsed"] = "true";
                        }
                        Response.Redirect("Account");
                    }
                }
                i++;
            }
            lblIncorrect.Text = "Inccorect Username or Password, Try again.";
        }
    }
}