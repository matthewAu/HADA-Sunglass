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
            bool success = false;
            UserEN en = new UserEN();
            en.Name = this.NameTextBox.Text;
            en.Password = this.PasswordTextBox.Text;
            en.Username = this.UserNameTextBox.Text;
            en.Email = this.EmailTextBox.Text;
            UserCAD cad = new UserCAD();
            success = cad.register_user(en);

            if (success)
            {
                Response.Redirect("register_correct.aspx");
            }
            else {
                //Error 
            }
        }
    }
}