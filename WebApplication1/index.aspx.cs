using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ImageButton1.Attributes.Add("onmouseout", "src='images/Picture1.jpg'");
            ImageButton1.Attributes.Add("onmouseover", "src='images/Picture1_2.jpg'");

            ImageButton2.Attributes.Add("onmouseout", "src='images/Picture2.jpg'");
            ImageButton2.Attributes.Add("onmouseover", "src='images/Picture2_2.jpg'");

            ImageButton3.Attributes.Add("onmouseout", "src='images/Picture3.jpg'");
            ImageButton3.Attributes.Add("onmouseover", "src='images/Picture3_2.png'");

            ImageButton4.Attributes.Add("onmouseout", "src='images/Picture4.jpg'");
            ImageButton4.Attributes.Add("onmouseover", "src='images/Picture4_2.jpg'");

            ImageButton5.Attributes.Add("onmouseout", "src='images/Picture5.jpg'");
            ImageButton5.Attributes.Add("onmouseover", "src='images/Picture5_2.jpg'");

            ImageButton6.Attributes.Add("onmouseout", "src='images/Picture6.jpg'");
            ImageButton6.Attributes.Add("onmouseover", "src='images/Picture6_2.jpg'");

            ImageButton7.Attributes.Add("onmouseout", "src='images/Picture7.jpg'");
            ImageButton7.Attributes.Add("onmouseover", "src='images/Picture7_2.jpg'");

            ImageButton8.Attributes.Add("onmouseout", "src='images/Picture8.jpg'");
            ImageButton8.Attributes.Add("onmouseover", "src='images/Picture8_2.jpg'");

            ImageButton9.Attributes.Add("onmouseout", "src='images/Picture9.jpg'");
            ImageButton9.Attributes.Add("onmouseover", "src='images/Picture9_2.jpg'");

            ImageButton10.Attributes.Add("onmouseout", "src='images/Picture10.jpg'");
            ImageButton10.Attributes.Add("onmouseover", "src='images/Picture10_2.jpg'");

            ImageButton11.Attributes.Add("onmouseout", "src='images/Picture11.jpg'");
            ImageButton11.Attributes.Add("onmouseover", "src='images/Picture11_2.jpg'");

            ImageButton12.Attributes.Add("onmouseout", "src='images/Picture12.jpg'");
            ImageButton12.Attributes.Add("onmouseover", "src='images/Picture12_2.jpg'");

            ImageButton13.Attributes.Add("onmouseout", "src='images/Picture13.png'");
            ImageButton13.Attributes.Add("onmouseover", "src='images/Picture13_2.png'");

            ImageButton14.Attributes.Add("onmouseout", "src='images/Picture14.png'");
            ImageButton14.Attributes.Add("onmouseover", "src='images/Picture14_2.png'");

            ImageButton15.Attributes.Add("onmouseout", "src='images/Picture15.png'");
            ImageButton15.Attributes.Add("onmouseover", "src='images/Picture15_2.png'");

            ImageButton16.Attributes.Add("onmouseout", "src='images/Picture16.jpg'");
            ImageButton16.Attributes.Add("onmouseover", "src='images/Picture16_2.jpg'");

            ImageButton17.Attributes.Add("onmouseout", "src='images/Picture17.jpg'");
            ImageButton17.Attributes.Add("onmouseover", "src='images/Picture17_2.jpg'");

            ImageButton18.Attributes.Add("onmouseout", "src='images/Picture18.jpg'");
            ImageButton18.Attributes.Add("onmouseover", "src='images/Picture18_2.jpg'");
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

        protected void Description_1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("descriptions/description1.html");
        }

        protected void Description_2(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("descriptions/description2.html");
        }

        protected void Description_3(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("descriptions/description3.html");
        }

        protected void Description_4(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("descriptions/description4.html");
        }

        protected void Description_5(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("descriptions/description5.html");
        }

        protected void Description_6(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("descriptions/description6.html");
        }

        protected void Description_7(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("descriptions/description7.html");
        }

        protected void Description_8(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("descriptions/description8.html");
        }

        protected void Description_9(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("descriptions/description9.html");
        }

        protected void Description_10(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("descriptions/description10.html");
        }

        protected void Description_11(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("descriptions/description11.html");
        }

        protected void Description_12(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("descriptions/description12.html");
        }

        protected void Description_13(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("descriptions/description13.html");
        }

        protected void Description_14(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("descriptions/description14.html");
        }

        protected void Description_15(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("descriptions/description15.html");
        }

        protected void Description_16(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("descriptions/description16.html");
        }

        protected void Description_17(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("descriptions/description17.html");
        }

        protected void Description_18(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("descriptions/description18.html");
        }
    }
}