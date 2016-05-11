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
    public class ClientCAD
    {
        public DataSet addClient(UserEN cliente_nuevo)
        {
            String str;
            str = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            SqlConnection c = new SqlConnection(str);
            DataSet virtdb = new DataSet();
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Client", c);
                da.Fill(virtdb, "client");
                DataTable dt = new DataTable();
                dt = virtdb.Tables["client"];
                DataRow newRow = dt.NewRow();
                newRow[0] = cliente_nuevo.Email;
                newRow[1] = cliente_nuevo.Password;
                newRow[2] = cliente_nuevo.Name;
                newRow[3] = cliente_nuevo.Username;
                newRow[4] = cliente_nuevo.PhoneNumber;
                newRow[5] = cliente_nuevo.Dni;
                dt.Rows.Add(newRow);
                SqlCommandBuilder cbuilder = new SqlCommandBuilder(da);
                da.Update(virtdb, "client");
            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR adding the new client");
            }
            finally
            {
                c.Close();
            }

            return virtdb;
        }

        public DataSet update(UserEN cliente_actualizado, int i)
        {
            string s;
            s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            SqlConnection c = new SqlConnection(s);
            DataSet virtdb = new DataSet();
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Client'", c);
                da.Fill(virtdb, "client");
                DataTable t = new DataTable();
                t = virtdb.Tables["client"];

                t.Rows[i]["Email"] = cliente_actualizado.Email;
                t.Rows[i]["Password"] = cliente_actualizado.Password;
                t.Rows[i]["Name"] = cliente_actualizado.Name;
                t.Rows[i]["Username"] = cliente_actualizado.Username;
                t.Rows[i]["PhoneNumber"] = cliente_actualizado.PhoneNumber;
                t.Rows[i]["Dni"] = cliente_actualizado.Dni;

                SqlCommandBuilder cbuilder = new SqlCommandBuilder(da);
                da.Update(virtdb, "client");
            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR Updating the client");
            }
            finally
            {
                c.Close();
            }
            return virtdb;    
        }

        public DataSet delete(ClientEN cliente_borrado, int i)
        {
            string s;
            s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            SqlConnection c = new SqlConnection(s);
            DataSet virtdb = new DataSet();
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Client", c);
                da.Fill(virtdb, "client");
                DataTable t = new DataTable();
                t = virtdb.Tables["client"];

                t.Rows[i].Delete();

                SqlCommandBuilder cbuilder = new SqlCommandBuilder(da);
                da.Update(virtdb, "client");
            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR Deleting the client");
            }
            finally
            {
                c.Close();
            }
            return virtdb; 
        }

        public DataSet read(ClientEN cliente_leido)
        {
            string s;
            s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            SqlConnection c = new SqlConnection(s);
            DataSet virtdb = new DataSet();

            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Client", c);
                da.Fill(virtdb, "client");

            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR showing the client");
            }
            finally
            {
                c.Close();
            }
            return virtdb;

        }

        public DataSet searchClients(String email, String password)
        {
            string s;
            s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            SqlConnection c = new SqlConnection(s);
            DataSet virtdb = new DataSet();

            try
            {                   
                SqlDataAdapter da = new SqlDataAdapter("Select count(*) from Client where email = '" + email + "' and password = '" + password + "'", c);
                da.Fill(virtdb, "client");

            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR showing the client");
            }
            finally
            {
                c.Close();
            }
            return virtdb;
        }
    }
}