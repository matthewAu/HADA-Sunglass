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
        public bool register_user(UserEN u)
        {
            bool ok = false;
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

                    ok = true;
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
            return ok;
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

        //public ArrayList login_user(UserEN u)
        //{
        //    string s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
        //    ArrayList al = new ArrayList();
        //    SqlConnection c = new SqlConnection(s);
        //    try
        //    {
        //        c.Open();
        //        SqlCommand com = new SqlCommand("Select * from User where email = " + u.Email, c);
        //        SqlDataReader dr = com.ExecuteReader();
        //        while (dr.Read())
        //        {
        //            al.Add(dr["Email"].ToString());
        //        }
        //        dr.Close();
        //    }
        //    catch (Exception ex)
        //    {
        //        ex.ToString();
        //        Console.WriteLine("ERROR: Login User");
        //    }
        //    finally
        //    {
        //        c.Close();
        //    }
        //    return al;
        //}

        public UserEN searchUserById(int id)
        {
            UserEN res = new UserEN();
            //String where it's stored the instructions for the connecton for the DB
            string str = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            DataSet virtdb = new DataSet(); // Created the DataSet that is going to be returned with the information asked
            SqlConnection c = new SqlConnection(str);

            try
            {    //The select in SQL language that is processed in the DB which will return all the rows from the table "Admin"
                //SqlDataAdapter da = new SqlDataAdapter("select * from Product where productName = '" + name + "'", c);
                SqlDataAdapter da = new SqlDataAdapter("select * from [dbo].[User] where UserId = '" + id + "'", c);
                da.Fill(virtdb, "searchProductById"); //It introduces the information returned from the select into this virtual DB

                res.UserId = (int)virtdb.Tables[0].Rows[0]["productId"];
                res.Username = (string)virtdb.Tables[0].Rows[0]["usrename"];
                res.Password = (string)virtdb.Tables[0].Rows[0]["password"];
                res.Name = (string)virtdb.Tables[0].Rows[0]["name"];
                res.Email = (string)virtdb.Tables[0].Rows[0]["email"];
            }
            catch (Exception e)
            {
                e.ToString();
                Console.WriteLine("ERROR showing the product");
            }
            finally
            {
                c.Close();
            }

            return res;
        }

        public UserEN loginByUserNameAndPassword(string name, string password)
        {
            UserEN res = new UserEN();
            //String where it's stored the instructions for the connecton for the DB
            string str = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            DataSet virtdb = new DataSet(); // Created the DataSet that is going to be returned with the information asked
            SqlConnection c = new SqlConnection(str);

            try
            {    //The select in SQL language that is processed in the DB which will return all the rows from the table "Admin"
                //SqlDataAdapter da = new SqlDataAdapter("select * from Product where productName = '" + name + "'", c);
                SqlDataAdapter da = new SqlDataAdapter("select * from [dbo].[User] where Username = '" + name + "' and password = '"+ password +"'", c);
                da.Fill(virtdb, "searchProductById"); //It introduces the information returned from the select into this virtual DB

                if (virtdb.Tables[0].Rows.Count != 0)
                {
                    res.UserId = (int)virtdb.Tables[0].Rows[0]["userId"];
                    res.Username = (string)virtdb.Tables[0].Rows[0]["usrename"];
                    res.Password = (string)virtdb.Tables[0].Rows[0]["password"];
                    res.Name = (string)virtdb.Tables[0].Rows[0]["name"];
                    res.Email = (string)virtdb.Tables[0].Rows[0]["email"];
                }
                else {
                    res = null;
                }

            }
            catch (Exception e)
            {
                e.ToString();
                Console.WriteLine("ERROR showing the product");
            }
            finally
            {
                c.Close();
            }

            return res;
        }

        //public DataSet searchUsers(String email, String password)
        //{
        //    string s;
        //    s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
        //    SqlConnection c = new SqlConnection(s);
        //    DataSet virtdb = new DataSet();

        //    try
        //    {
        //        SqlDataAdapter da = new SqlDataAdapter("Select count(*) from User where email = '" + email + "' and password = '" + password + "'", c);
        //        da.Fill(virtdb, "user");

        //    }
        //    catch (Exception ex)
        //    {
        //        ex.ToString();
        //        Console.WriteLine("ERROR showing the user");
        //    }
        //    finally
        //    {
        //        c.Close();
        //    }
        //    return virtdb;
        //}
    }
}