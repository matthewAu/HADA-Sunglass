using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Sunglasses_website;

namespace WebApplication1
{
    public partial class register2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Index(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void SendInfo(object sender, EventArgs e)
        {
            Response.Redirect("register_correct.aspx");

            ClientCAD client = new ClientCAD();
        }
    }
}