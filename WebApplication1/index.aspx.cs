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

            //ImageButton1.Attributes.Add("onmouseout", "src='images/Picture1.jpg'");
            //ImageButton1.Attributes.Add("onmouseover", "src='images/Picture1_2.jpg'");

            //ImageButton2.Attributes.Add("onmouseout", "src='images/Picture2.jpg'");
            //ImageButton2.Attributes.Add("onmouseover", "src='images/Picture2_2.jpg'");

            //ImageButton3.Attributes.Add("onmouseout", "src='images/Picture3.jpg'");
            //ImageButton3.Attributes.Add("onmouseover", "src='images/Picture3_2.png'");

            //ImageButton4.Attributes.Add("onmouseout", "src='images/Picture4.jpg'");
            //ImageButton4.Attributes.Add("onmouseover", "src='images/Picture4_2.jpg'");

            //ImageButton5.Attributes.Add("onmouseout", "src='images/Picture5.jpg'");
            //ImageButton5.Attributes.Add("onmouseover", "src='images/Picture5_2.jpg'");

            //ImageButton6.Attributes.Add("onmouseout", "src='images/Picture6.jpg'");
            //ImageButton6.Attributes.Add("onmouseover", "src='images/Picture6_2.jpg'");

            //ImageButton7.Attributes.Add("onmouseout", "src='images/Picture7.jpg'");
            //ImageButton7.Attributes.Add("onmouseover", "src='images/Picture7_2.jpg'");

            //ImageButton8.Attributes.Add("onmouseout", "src='images/Picture8.jpg'");
            //ImageButton8.Attributes.Add("onmouseover", "src='images/Picture8_2.jpg'");

            //ImageButton9.Attributes.Add("onmouseout", "src='images/Picture9.jpg'");
            //ImageButton9.Attributes.Add("onmouseover", "src='images/Picture9_2.jpg'");

            //ImageButton10.Attributes.Add("onmouseout", "src='images/Picture10.jpg'");
            //ImageButton10.Attributes.Add("onmouseover", "src='images/Picture10_2.jpg'");

            //ImageButton11.Attributes.Add("onmouseout", "src='images/Picture11.jpg'");
            //ImageButton11.Attributes.Add("onmouseover", "src='images/Picture11_2.jpg'");

            //ImageButton12.Attributes.Add("onmouseout", "src='images/Picture12.jpg'");
            //ImageButton12.Attributes.Add("onmouseover", "src='images/Picture12_2.jpg'");

            //ImageButton13.Attributes.Add("onmouseout", "src='images/Picture13.png'");
            //ImageButton13.Attributes.Add("onmouseover", "src='images/Picture13_2.png'");

            //ImageButton14.Attributes.Add("onmouseout", "src='images/Picture14.png'");
            //ImageButton14.Attributes.Add("onmouseover", "src='images/Picture14_2.png'");

            //ImageButton15.Attributes.Add("onmouseout", "src='images/Picture15.png'");
            //ImageButton15.Attributes.Add("onmouseover", "src='images/Picture15_2.png'");

            //ImageButton16.Attributes.Add("onmouseout", "src='images/Picture16.jpg'");
            //ImageButton16.Attributes.Add("onmouseover", "src='images/Picture16_2.jpg'");

            //ImageButton17.Attributes.Add("onmouseout", "src='images/Picture17.jpg'");
            //ImageButton17.Attributes.Add("onmouseover", "src='images/Picture17_2.jpg'");

            //ImageButton18.Attributes.Add("onmouseout", "src='images/Picture18.jpg'");
            //ImageButton18.Attributes.Add("onmouseover", "src='images/Picture18_2.jpg'");
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

        //protected void Description_1(object sender, ImageClickEventArgs e)
        //{
        //    Response.Redirect("description.aspx?id=1");
        //}

        //protected void Description_2(object sender, ImageClickEventArgs e)
        //{
        //    Response.Redirect("description.aspx?id=2");
        //}

        //protected void Description_3(object sender, ImageClickEventArgs e)
        //{
        //    Response.Redirect("description.aspx?id=3");
        //}

        //protected void Description_4(object sender, ImageClickEventArgs e)
        //{
        //    Response.Redirect("description.aspx?id=4");
        //}

        //protected void Description_5(object sender, ImageClickEventArgs e)
        //{
        //    Response.Redirect("description.aspx?id=5");
        //}

        //protected void Description_6(object sender, ImageClickEventArgs e)
        //{
        //    Response.Redirect("description.aspx?id=6");
        //}

        //protected void Description_7(object sender, ImageClickEventArgs e)
        //{
        //    Response.Redirect("description.aspx?id=7");
        //}

        //protected void Description_8(object sender, ImageClickEventArgs e)
        //{
        //    Response.Redirect("description.aspx?id=8");
        //}

        //protected void Description_9(object sender, ImageClickEventArgs e)
        //{
        //    Response.Redirect("description.aspx?id=9");
        //}

        //protected void Description_10(object sender, ImageClickEventArgs e)
        //{
        //    Response.Redirect("description.aspx?id=10");
        //}

        //protected void Description_11(object sender, ImageClickEventArgs e)
        //{
        //    Response.Redirect("description.aspx?id=11");
        //}

        //protected void Description_12(object sender, ImageClickEventArgs e)
        //{
        //    Response.Redirect("description.aspx?id=12");
        //}

        //protected void Description_13(object sender, ImageClickEventArgs e)
        //{
        //    Response.Redirect("description.aspx?id=13");
        //}

        //protected void Description_14(object sender, ImageClickEventArgs e)
        //{
        //    Response.Redirect("description.aspx?id=14");
        //}

        //protected void Description_15(object sender, ImageClickEventArgs e)
        //{
        //    Response.Redirect("description.aspx?id=15");
        //}

        //protected void Description_16(object sender, ImageClickEventArgs e)
        //{
        //    Response.Redirect("description.aspx?id=16");
        //}

        //protected void Description_17(object sender, ImageClickEventArgs e)
        //{
        //    Response.Redirect("description.aspx?id=17");
        //}

        //protected void Description_18(object sender, ImageClickEventArgs e)
        //{
        //    Response.Redirect("description.aspx?id=18");
        //}
    }
}