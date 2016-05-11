using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1;

namespace WebApplication1.descriptions
{
    public partial class description : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //int id = Int32.Parse( Request.QueryString["id"] );

            //For Testing
            string name = "glass1";
            Sunglasses_website.ProductEN productEN = null;
            Sunglasses_website.ProductCAD productCAD = new Sunglasses_website.ProductCAD();
            DataSet data = productCAD.searchProductByName(name);
            DataTable dt = new DataTable();

            //SearchProductByName
            var sth = data.Tables[0].Rows[0]["productName"];

            this.lable_ProductName.Text = sth.ToString();

            //productEN = productCAD.searchProduct(id);



        }
    }
}