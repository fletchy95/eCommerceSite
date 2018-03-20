using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Team2FinalProject
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.AddBreadcrumbLink("/Order.aspx", "Home");

            string header = "Our Products";
            string catID = Request.QueryString["catID"];

            // assign data source based on whether there's a catID query string value
            if (string.IsNullOrEmpty(catID))
            {
                Repeater1.DataSourceID = "SqlDataSourceAll";
                Master.AddCurrentPage("Products");
            }  
            else
            {
                Repeater1.DataSourceID = "SqlDataSourceByCategory";
                Master.AddBreadcrumbLink("/Products.aspx", "Products");

                // amend header string to include category 
                switch (catID)
                {
                    case "basketball":
                        header += " - Basketball";
                        Master.AddCurrentPage("Basketball");
                        break;
                    case "baseball":
                        header += " - Baseball";
                        Master.AddCurrentPage("Baseball");
                        break;
                    case "football":
                        header += " - Football";
                        Master.AddCurrentPage("Football");
                        break;
                    case "hockey":
                        header += " - Hockey";
                        Master.AddCurrentPage("Hockey");
                        break;
                }
            }

            // set page header text 
            Master.HeaderText = header;
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "ProductSend")
            {
                LinkButton button = e.CommandSource as LinkButton;
                Session["ProductLinkID"] = button.Text;
                Response.Redirect("Order");
            }
        }
    }
}