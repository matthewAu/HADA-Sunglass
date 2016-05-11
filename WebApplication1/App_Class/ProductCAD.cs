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
    class ProductCAD
    {
        public DataSet addProduct(ProductEN producto_nuevo)
        {
            String str;
            str = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            SqlConnection c = new SqlConnection(str);
            DataSet virtdb = new DataSet();
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Product", c);
                da.Fill(virtdb, "product");
                DataTable dt = new DataTable();
                dt = virtdb.Tables["product"];
                DataRow newRow = dt.NewRow();
                newRow[0] = producto_nuevo.Id;
                newRow[1] = producto_nuevo.Price;
                newRow[2] = producto_nuevo.Color;
                newRow[3] = producto_nuevo.FilepathPicture;
                newRow[4] = producto_nuevo.Name;
                newRow[5] = producto_nuevo.Brand;
                dt.Rows.Add(newRow);
                SqlCommandBuilder cbuilder = new SqlCommandBuilder(da);
                da.Update(virtdb, "product");
            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR adding the new product");
            }
            finally
            {
                c.Close();
            }

            return virtdb;
        }

        public DataSet update(ProductEN producto_actualizado, int i)
        {
            string s;
            s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            SqlConnection c = new SqlConnection(s);
            DataSet virtdb = new DataSet();
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Product'", c);
                da.Fill(virtdb, "product");
                DataTable t = new DataTable();
                t = virtdb.Tables["product"];

                t.Rows[i]["Id"] = producto_actualizado.Id;
                t.Rows[i]["Price"] = producto_actualizado.Price;
                t.Rows[i]["Color"] = producto_actualizado.Color;
                t.Rows[i]["FilepathPicture"] = producto_actualizado.FilepathPicture;
                t.Rows[i]["Name"] = producto_actualizado.Name;
                t.Rows[i]["Brand"] = producto_actualizado.Brand;

                SqlCommandBuilder cbuilder = new SqlCommandBuilder(da);
                da.Update(virtdb, "product");
            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR Updating the product");
            }
            finally
            {
                c.Close();
            }
            return virtdb;
        }

        public DataSet delete(ProductEN producto_borrado, int i)
        {
            string s;
            s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            SqlConnection c = new SqlConnection(s);
            DataSet virtdb = new DataSet();
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Product", c);
                da.Fill(virtdb, "product");
                DataTable t = new DataTable();
                t = virtdb.Tables["product"];

                t.Rows[i].Delete();

                SqlCommandBuilder cbuilder = new SqlCommandBuilder(da);
                da.Update(virtdb, "product");
            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR Deleting the product");
            }
            finally
            {
                c.Close();
            }
            return virtdb; 
        }

        public DataSet read(ProductEN producto_leido)
        {
            string s;
            s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            SqlConnection c = new SqlConnection(s);
            DataSet virtdb = new DataSet();

            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Product", c);
                da.Fill(virtdb, "product");

            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR showing the product");
            }
            finally
            {
                c.Close();
            }
            return virtdb;
        }

        public DataSet searchProduct(int productID)
        {
            //String where it's stored the instructions for the connecton for the DB
            string str = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            DataSet virtdb = new DataSet(); // Created the DataSet that is going to be returned with the information asked
            SqlConnection c = new SqlConnection(str);

            try
            {    //The select in SQL language that is processed in the DB which will return all the rows from the table "Admin"
                SqlDataAdapter da = new SqlDataAdapter("select count(*) from Product where Id = '" + productID + "'", c);
                da.Fill(virtdb, "admin"); //It introduces the information returned from the select into this virtual DB

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
            return virtdb;
        }


        public DataSet searchProductByName(string name)
        {
            //String where it's stored the instructions for the connecton for the DB
            string str = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            DataSet virtdb = new DataSet(); // Created the DataSet that is going to be returned with the information asked
            SqlConnection c = new SqlConnection(str);

            try
            {    //The select in SQL language that is processed in the DB which will return all the rows from the table "Admin"
                SqlDataAdapter da = new SqlDataAdapter("select * from Product where productName = '" + name + "'", c);
                da.Fill(virtdb, "SearchProductByName"); //It introduces the information returned from the select into this virtual DB

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
            return virtdb;
        }

    }
}