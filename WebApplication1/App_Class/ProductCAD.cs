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
                
                newRow[0] = producto_nuevo.ProductId;
                newRow[1] = producto_nuevo.ProductRef;
                newRow[2] = producto_nuevo.ProductName;
                newRow[3] = producto_nuevo.ProductPrice;
                newRow[4] = producto_nuevo.ProductBrand;
                newRow[5] = producto_nuevo.Color;
                newRow[6] = producto_nuevo.Description;
                newRow[7] = producto_nuevo.FilepathPicture1;
                newRow[8] = producto_nuevo.FilepathPicture2;
                newRow[9] = producto_nuevo.FilepathPicture3;
                newRow[10] = producto_nuevo.FilepathPicture4;
                newRow[11] = producto_nuevo.FilepathPicture5;

                dt.Rows.Add(newRow);
                SqlCommandBuilder cbuilder = new SqlCommandBuilder(da);
                da.Update(virtdb, "product");

                //this.productId = productId;
                //this.productRef = productRef;
                //this.productName = productName;
                //this.productPrice = productPrice;
                //this.productBrand = productBrand;
                //this.color = color;
                //this.description = description;
                //this.filePathPicture1 = filePathPicture1;
                //this.filePathPicture2 = filePathPicture2;
                //this.filePathPicture3 = filePathPicture3;
                //this.filePathPicture4 = filePathPicture4;
                //this.filePathPicture5 = filePathPicture5;
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

                t.Rows[i]["productId"] = producto_actualizado.ProductId;
                t.Rows[i]["productPrice"] = producto_actualizado.ProductPrice;
                t.Rows[i]["descriptio"] = producto_actualizado.Description;
                t.Rows[i]["Color"] = producto_actualizado.Color;
                t.Rows[i]["FilepathPicture1"] = producto_actualizado.FilepathPicture1;
                t.Rows[i]["FilepathPicture2"] = producto_actualizado.FilepathPicture2;
                t.Rows[i]["FilepathPicture3"] = producto_actualizado.FilepathPicture3;
                t.Rows[i]["FilepathPicture4"] = producto_actualizado.FilepathPicture4;
                t.Rows[i]["FilepathPicture5"] = producto_actualizado.FilepathPicture5;
                t.Rows[i]["productName"] = producto_actualizado.ProductName;
                t.Rows[i]["productBrand"] = producto_actualizado.ProductBrand;

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