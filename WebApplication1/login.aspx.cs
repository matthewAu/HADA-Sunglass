using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Sunglasses_website;

namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
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
            string login = this.UserNameTextBox.Text;
            string password = this.PasswordTextBox.Text;

            UserCAD cad = new UserCAD();
            UserEN en = cad.loginByUserNameAndPassword(login, password);

            if (en != null)
            {
                Response.Redirect("login_correct.html");
            }
            else {
                // Wrong
                this.PasswordTextBox.Text = "";
                this.UserNameTextBox.Text = "";
            }

        }
    }
}