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
        public DataSet create(ProductEN producto_nuevo)
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
                
                newRow[0] = null ;
                newRow[1] = producto_nuevo.ProductRef;
                newRow[2] = producto_nuevo.ProductName;
                newRow[3] = producto_nuevo.ProductPrice;
                newRow[4] = producto_nuevo.ProductBrand;
                newRow[5] = producto_nuevo.Color;
                newRow[6] = producto_nuevo.Description;
                newRow[7] = producto_nuevo.FilePathPicture1;
                newRow[8] = producto_nuevo.FilePathPicture2;
                newRow[9] = producto_nuevo.FilePathPicture3;
                newRow[10] = producto_nuevo.FilePathPicture4;
                newRow[11] = producto_nuevo.FilePathPicture5;

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
                t.Rows[i]["FilepathPicture1"] = producto_actualizado.FilePathPicture1;
                t.Rows[i]["FilepathPicture2"] = producto_actualizado.FilePathPicture2;
                t.Rows[i]["FilepathPicture3"] = producto_actualizado.FilePathPicture3;
                t.Rows[i]["FilepathPicture4"] = producto_actualizado.FilePathPicture4;
                t.Rows[i]["FilepathPicture5"] = producto_actualizado.FilePathPicture5;
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

        public ProductEN searchProductById(int productID)
        {
            ProductEN res = null;
            //String where it's stored the instructions for the connecton for the DB
            string str = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            DataSet virtdb = new DataSet(); // Created the DataSet that is going to be returned with the information asked
            SqlConnection c = new SqlConnection(str);

            try
            {    //The select in SQL language that is processed in the DB which will return all the rows from the table "Admin"
                //SqlDataAdapter da = new SqlDataAdapter("select * from Product where productName = '" + name + "'", c);
                SqlDataAdapter da = new SqlDataAdapter("select * from Product where ProductId = '" + productID + "'", c);
                da.Fill(virtdb, "searchProductById"); //It introduces the information returned from the select into this virtual DB

                res.ProductId = (int)virtdb.Tables[0].Rows[0]["productId"];
                res.ProductRef = (string)virtdb.Tables[0].Rows[0]["productRef"];
                res.ProductName = (string)virtdb.Tables[0].Rows[0]["productName"];
                res.ProductPrice = (float)virtdb.Tables[0].Rows[0]["productPrice"];
                res.ProductBrand = (string)virtdb.Tables[0].Rows[0]["productBrand"];
                res.Color = (string)virtdb.Tables[0].Rows[0]["color"];
                res.Description = (string)virtdb.Tables[0].Rows[0]["description"];
                res.FilePathPicture1 = (string)virtdb.Tables[0].Rows[0]["filePathPicture1"];
                res.FilePathPicture2 = (string)virtdb.Tables[0].Rows[0]["filePathPicture2"];
                res.FilePathPicture3 = (string)virtdb.Tables[0].Rows[0]["filePathPicture3"];
                res.FilePathPicture4 = (string)virtdb.Tables[0].Rows[0]["filePathPicture4"];
                res.FilePathPicture5 = (string)virtdb.Tables[0].Rows[0]["filePathPicture5"];
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