using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// make sure to include this namespace
using System.Data;

namespace Team2FinalProject
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // set breadcrumb on first load;    
            if (!IsPostBack)
            {
                Master.AddCurrentPage("Home");
                Session["Load"] = "One";
            }
            if (Session["ProductName"] != null)
            {
                ddlProducts.SelectedValue = (string)Session["ProductName"];
                Session["ProductName"] = null;
            }
            if(Session["ProductLinkID"] != null)
            {
                ddlProducts.SelectedValue = (string)Session["ProductLinkID"];
                Session["ProductLinkID"] = null;
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Product selectedProduct = GetSelectedProduct();
                CartItemList cart = CartItemList.GetCart();
                CartItem cartItem = cart[selectedProduct.ProductID];

                if (cartItem == null)
                {
                    cart.AddItem(selectedProduct,
                                 Convert.ToInt32(txtQuantity.Text));
                }
                else
                {
                    cartItem.AddQuantity(Convert.ToInt32(txtQuantity.Text));
                }
                Response.Redirect("Cart");
            }
        }

        public Product GetSelectedProduct()
        {
            // get row from SqlDataSource based on value in dropdownlist
            DataView productsTable = (DataView)
                SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            DataRowView row = productsTable[0];

            // create a new product object and load with data from row
            Product p = new Product();
            p.ProductID = row["ProductID"].ToString();
            p.Name = row["Name"].ToString();
            p.ShortDescription = row["ShortDescription"].ToString();
            p.LongDescription = row["LongDescription"].ToString();
            p.UnitPrice = (decimal)row["UnitPrice"];
            p.ImageFile = row["ImageFile"].ToString();
            Session["ImageTemp"] = p.ImageFile;
            return p;
        }

        public void ddlProducts_SelectedIndexChanged(object sender, EventArgs e)
        {            
            Product selectedProduct = GetSelectedProduct();
            Session["temp"] = selectedProduct.ImageFile;
            Session["ImageTemp"] = selectedProduct.ImageFile;
            if ((string)Session["Load"] == "One")
            {
                Session["Load"] = "Two";
                Session["ProductOnePicture"] = (string)Session["ImageTemp"];
                Session["ProductOneName"] = selectedProduct.Name.ToString();
                Session["ProductOnePrice"] = selectedProduct.UnitPrice.ToString();
                Session["ProductOneID"] = selectedProduct.ProductID.ToString();
            }
            else if ((string)Session["Load"] == "Two")
            {
                Session["Load"] = "Full";
                Session["ProductTwoPicture"] = (string)Session["ImageTemp"];
                Session["ProductTwoName"] = selectedProduct.Name.ToString();
                Session["ProductTwoPrice"] = selectedProduct.UnitPrice.ToString();
                Session["ProductTwoID"] = selectedProduct.ProductID.ToString();
            }
            else if ((string)Session["Load"] == "Full")
            {
                Session["Load"] = "Replace";
                Session["ProductThreePicture"] = (string)Session["ImageTemp"];
                Session["ProductThreeName"] = selectedProduct.Name.ToString();
                Session["ProductThreePrice"] = selectedProduct.UnitPrice.ToString();
                Session["ProductThreeID"] = selectedProduct.ProductID.ToString();
            }
            else
            {
                Session["ProductOnePicture"] = Session["ProductTwoPicture"];
                Session["ProductOneName"] = Session["ProductTwoName"];
                Session["ProductOnePrice"] = Session["ProductTwoPrice"];
                Session["ProductOneID"] = Session["ProductTwoID"];
                Session["ProductTwoPicture"] = Session["ProductThreePicture"];
                Session["ProductTwoName"] = Session["ProductThreeName"];
                Session["ProductTwoPrice"] = Session["ProductThreePrice"];
                Session["ProductTwoID"] = Session["ProductThreeID"];
                Session["ProductThreePicture"] = (string)Session["ImageTemp"];
                Session["ProductThreeName"] = selectedProduct.Name.ToString();
                Session["ProductThreePrice"] = selectedProduct.UnitPrice.ToString();
                Session["ProductThreeID"] = selectedProduct.ProductID.ToString();
            }
        }
    }
}