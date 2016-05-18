using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1;
using Sunglasses_website;

namespace WebApplication1
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<ProductEN> productENs = new List<ProductEN>();
            ProductCAD productCAD = new ProductCAD();
            productENs = productCAD.searchProducts();

            // Picture file path
            DataTable productsDataTable = new DataTable();

            // add some columns to our datatable
            productsDataTable.Columns.Add("productName");
            productsDataTable.Columns.Add("filePath1");
            productsDataTable.Columns.Add("filePath2");
            productsDataTable.Columns.Add("href");
            productsDataTable.Columns.Add("onclick");
            productsDataTable.Columns.Add("productId");
            foreach (ProductEN p in productENs)
            {
                DataRow row = productsDataTable.NewRow();
                row["productName"] = p.ProductName.ToString();
                row["filePath1"] = p.FilePathPicture1.ToString();
                row["filePath2"] = p.FilePathPicture2.ToString();
                row["href"] = "./description.aspx?id=" + p.ProductId.ToString();
                row["onclick"] = "location.assign('./description.aspx?id=" + p.ProductId.ToString() + "')";
                row["productId"] = p.ProductId.ToString();
                productsDataTable.Rows.Add(row);
            }
            products.DataSource = productsDataTable;
            products.DataBind();
        }

        protected void IndexPage(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void Login(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
        protected void Contact(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }
    }
}