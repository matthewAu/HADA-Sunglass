using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;
using System.Web;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;

namespace Sunglasses_website
{
    public class UserEN
    {
        //Class constructor
        public UserEN(int productId, string password, string username, string name, string email, string phone, string dni)
        {
            this.productId = productId;
            this.password = password;
            this.username = username;
            this.name = name;
            this.email = email;
            this.phoneNumber = phone;
            this.dni = dni;
        }

        //Variables declaration
        private int productId;
        private String password;
        private String username;
        private String name;
        private String email;
        //New Add
        private String phoneNumber;
        private String dni;

        //Getters and setters methods
        public int ProductId
        {
            get { return productId ; }
            set { productId = value; }
        }

        public String Password
        {
            get { return password; }
            set { password = value; }
        }

        public String Username
        {
            get { return username; }
            set { username = value; }
        }

        public String Name
        {
            get { return name; }
            set { name = value; }
        }

        public String Email
        {
            get { return email; }
            set { email = value; }
        }

        public String PhoneNumber
        {
            get { return phoneNumber; }
            set { phoneNumber = value; }
        }

        public String Dni
        {
            get { return dni; }
            set { dni = value; }
        }
    }
}
