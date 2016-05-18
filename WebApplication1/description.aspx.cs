using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using WebApplication1;
using Sunglasses_website;

namespace WebApplication1.descriptions
{
    public partial class description : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Int32.Parse( Request.QueryString["id"] );
            // int id = 1;

            //Insert User
            // UserEN  userEN = new UserEN("123", "user007", "user007", "user007@sunbest.com.us");
            // UserCAD cad = new UserCAD();
            // cad.register_user(userEN);

            //Read Product
            ProductEN productEN = null;
            ProductCAD productCAD = new ProductCAD();
            productEN = productCAD.searchProductById(id);

            //Get the product information from the productEN
            if (productEN != null)
            {
                int productId = productEN.ProductId;
                string productRef = productEN.ProductRef;
                string productName = productEN.ProductName;
                float productPrice = productEN.ProductPrice;
                string productBrand = productEN.ProductBrand;
                string color = productEN.Color;
                string description = productEN.Description;
                string[] filePathPicture = new string [2];
                filePathPicture[0] = productEN.FilePathPicture1;
                filePathPicture[1] = productEN.FilePathPicture2;
                List<ProductEN> relations = productEN.Relations;
                
                this.Title = productName;
                this.lbl_ProductName.Text = productName;
                this.lbl_ProductBrand.Text = productBrand;
                this.lbl_ProductRef.Text = productRef;
                this.lbl_ProductPrice.Text = productPrice.ToString();
                this.lbl_Description.Text = description;

                // Picture file path
                DataTable pictureDataTable = new DataTable();

                // add some columns to our datatable
                pictureDataTable.Columns.Add("filePathPicture");

                for (int i = 0; i < filePathPicture.Length; i++)
                {
                    DataRow row = pictureDataTable.NewRow();
                    row["filePathPicture"] = filePathPicture[i];
                    pictureDataTable.Rows.Add(row);
                }
                slides.DataSource = pictureDataTable;
                slides.DataBind();

                // Colors
                DataTable colorsDataTable = new DataTable();

                // add some columns to our datatable
                colorsDataTable.Columns.Add("relatedProductName");
                colorsDataTable.Columns.Add("relatedProductId");
                colorsDataTable.Columns.Add("relatedColor");

                // firstRelations = self
                DataRow dataRow = colorsDataTable.NewRow();
                dataRow["relatedProductName"] = productEN.ProductName.ToString();
                dataRow["relatedProductId"] = productEN.ProductId.ToString();
                dataRow["relatedColor"] = productEN.Color.ToString();
                colorsDataTable.Rows.Add(dataRow);
                // other related products
                foreach (ProductEN r in relations)
                {
                    DataRow row = colorsDataTable.NewRow();
                    row["relatedProductName"] = r.ProductName.ToString();
                    row["relatedProductId"] = r.ProductId.ToString();
                    row["relatedColor"] = r.Color.ToString();
                    colorsDataTable.Rows.Add(row);
                }
                colors.DataSource = colorsDataTable;
                colors.DataBind();
            }

        }
    }
}