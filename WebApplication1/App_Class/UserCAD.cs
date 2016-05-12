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
    class UserCAD
    {
        public void register_user(UserEN u)
        {
            string s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            SqlConnection c = new SqlConnection(s);

            try
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[User] (password, username, name, email) output INSERTED.USERID VALUES(@password,@username,@name,@email)", c))
                {
                    cmd.Parameters.AddWithValue("@password", u.Password);
                    cmd.Parameters.AddWithValue("@username", u.Username);
                    cmd.Parameters.AddWithValue("@name", u.Name);
                    cmd.Parameters.AddWithValue("@email", u.Email);
                    c.Open();

                    int modified = (int)cmd.ExecuteScalar();

                    if (c.State == System.Data.ConnectionState.Open)
                        c.Close();
                }
            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR Registering the User");
            }
            finally
            {
                c.Close();
            }
        }

        public void delete_user(UserEN u)
        {
            string s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            SqlConnection c = new SqlConnection(s);
            try
            {
                c.Open();
                SqlCommand com = new SqlCommand("Delete From User Where Email = " + u.Username, c);
                com.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR Deleting the Admin");
            }
            finally
            {
                c.Close();
            }
        }

        public void update_user(UserEN u)
        {
            string s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            SqlConnection c = new SqlConnection(s);
            try
            {
                c.Open();
                SqlCommand com = new SqlCommand("Update User Set name = '" + u.Name + "', email ='" +
                    u.Email + "', password = '" + u.Password + "',username = " + u.Username + "',phoneNumber = '" + 
                    u.PhoneNumber + "'and dni = '" + u.Dni, c);
                com.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR updating the User");
            }
            finally
            {
                c.Close();
            }
        }

        public ArrayList login_user(UserEN u)
        {
            string s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            ArrayList al = new ArrayList();
            SqlConnection c = new SqlConnection(s);
            try
            {
                c.Open();
                SqlCommand com = new SqlCommand("Select * from User where email = " + u.Email, c);
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    al.Add(dr["Email"].ToString());
                }
                dr.Close();
            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR: Login User");
            }
            finally
            {
                c.Close();
            }
            return al;
        }

        public DataSet searchUsers(String email, String password)
        {
            string s;
            s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            SqlConnection c = new SqlConnection(s);
            DataSet virtdb = new DataSet();

            try
            {
                SqlDataAdapter da = new SqlDataAdapter("Select count(*) from User where email = '" + email + "' and password = '" + password + "'", c);
                da.Fill(virtdb, "user");

            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR showing the user");
            }
            finally
            {
                c.Close();
            }
            return virtdb;
        }
    }
}