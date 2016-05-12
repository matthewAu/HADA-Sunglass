using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1;
using Sunglasses_website;

namespace WebApplication1.descriptions
{
    public partial class description : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //int id = Int32.Parse( Request.QueryString["id"] );
            int id = 1;

            //Insert User
            UserEN  userEN = new UserEN("123", "user007", "user007", "user007@sunbest.com.us");
            UserCAD cad = new UserCAD();
            cad.register_user(userEN);

            //Read Product
            ProductEN productEN = null;
            ProductCAD productCAD = new ProductCAD();
            productEN = productCAD.searchProductById(id);

            //Get the product information from the productEN
            if (productEN != null)
            {
                string description = productEN.Description;
                string filePath1 = productEN.FilePathPicture1;
                string filePath2 = productEN.FilePathPicture2;
                string filePath3 = productEN.FilePathPicture3;
                string filePath4 = productEN.FilePathPicture4;
                string filePath5 = productEN.FilePathPicture5;
            }


            this.Title = productEN.ProductName.ToString();
            this.lbl_ProductName.Text = productEN.ProductName.ToString();

        }
    }
}