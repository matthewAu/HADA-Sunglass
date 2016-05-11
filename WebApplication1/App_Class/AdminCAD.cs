using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;

namespace Sunglasses_website
{
    class AdminCAD
    {
        public void register_admin(UserEN a)
        {
            string s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            SqlConnection c = new SqlConnection(s);
            
            try
            {
                c.Open();
                SqlCommand com = new SqlCommand("Insert Into Admin (Id,name,dni,email,password,phoneNumber,dni) VALUES ('" + a.Name + "','"  + a.Email + "','" + a.Password + "'," + a.PhoneNumber + "'," + a.Dni + "')", c);

                com.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR Registering the Admin");
            }
            finally
            {
                c.Close();
            }
        }

        public void delete_admin(UserEN a)
        {
            string s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            SqlConnection c = new SqlConnection(s);
            try
            {
                c.Open();
                SqlCommand com = new SqlCommand("Delete From Admin Where Email = " + a.Email, c);
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

        public void update_admin(UserEN a)
        {
            string s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            SqlConnection c = new SqlConnection(s);
            try
            {
                c.Open();
                SqlCommand com = new SqlCommand("Update Admin Set name = '" + a.Name + "', email ='" +
                    a.Email + "', password = '" + a.Password + "',username = " + a.Username + "',phoneNumber = '" +
                    a.PhoneNumber + "'and dni = '" + a.Dni, c);
                com.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR Updating the Admin");
            }
            finally
            {
                c.Close();
            }
        }

        public ArrayList login_admin(UserEN a)
        {
            string s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            ArrayList al = new ArrayList();
            SqlConnection c = new SqlConnection(s);
            try
            {
                c.Open();
                SqlCommand com = new SqlCommand("Select * from Admin where email = " + a.Email, c);
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    al.Add(dr["Id"].ToString());
                }
                dr.Close();
            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR: Login Admin");
            }
            finally
            {
                c.Close();
            }
            return al;
        }


        public DataSet searchAdmin(string nameAdmin)
        {
            string str = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            DataSet virtdb = new DataSet();
            SqlConnection c = new SqlConnection(str);

            try
            { 
                SqlDataAdapter da = new SqlDataAdapter("select count(*) from Admin where Id = '" + nameAdmin + "'", c);
                da.Fill(virtdb, "admin");

            }
            catch (Exception e)
            {
                e.ToString();
                Console.WriteLine("ERROR: show admin");
            }
            finally
            {
                c.Close();
            }
            return virtdb;
        }
    }
}