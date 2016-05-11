﻿using System;
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
    class OrderCAD
    {

        public DataSet addOrder(OrderEN nuevo_pedido)
        {
            string str = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            DataSet virtdb = new DataSet();
            SqlConnection c = new SqlConnection(str);

            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Order", c);
                da.Fill(virtdb, "order");
                DataTable dt = new DataTable();
                dt = virtdb.Tables["order"];
                DataRow newRow = dt.NewRow();
                newRow[0] = nuevo_pedido.OrderId;
                newRow[1] = nuevo_pedido.Product;
                newRow[2] = nuevo_pedido.Client;
                newRow[3] = nuevo_pedido.Date;
                newRow[4] = nuevo_pedido.Address;
                newRow[5] = nuevo_pedido.PostalCode;
                newRow[6] = nuevo_pedido.Quantity;
                dt.Rows.Add(newRow);
                SqlCommandBuilder cbuilder = new SqlCommandBuilder(da);
                da.Update(virtdb, "order");
            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR adding the new order");
            }
            finally
            {
                c.Close();
            }

            return virtdb;
        }

        public DataSet update(OrderEN pedido_nuevo, int i)
        {
            string s;
            s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            SqlConnection c = new SqlConnection(s);
            DataSet virtdb = new DataSet();
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Order'", c);
                da.Fill(virtdb, "order");
                DataTable t = new DataTable();
                t = virtdb.Tables["order"];

                t.Rows[i]["orderId"] = pedido_nuevo.OrderId;
                t.Rows[i]["product"] = pedido_nuevo.Product;
                t.Rows[i]["client"] = pedido_nuevo.Client;
                t.Rows[i]["date"] = pedido_nuevo.Date;
                t.Rows[i]["address"] = pedido_nuevo.Address;
                t.Rows[i]["postalCode"] = pedido_nuevo.PostalCode;
                t.Rows[i]["quantity"] = pedido_nuevo.Quantity;

                SqlCommandBuilder cbuilder = new SqlCommandBuilder(da);
                da.Update(virtdb, "order");
            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR Updating the order");
            }
            finally
            {
                c.Close();
            }
            return virtdb;    
        }
        
        public DataSet delete(OrderEN pedido_borrado, int i)
        {
            string s;
            s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            SqlConnection c = new SqlConnection(s);
            DataSet virtdb = new DataSet();
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Order", c);
                da.Fill(virtdb, "order");
                DataTable t = new DataTable();
                t = virtdb.Tables["order"];

                t.Rows[i].Delete();

                SqlCommandBuilder cbuilder = new SqlCommandBuilder(da);
                da.Update(virtdb, "order");
            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR Deleting the order");
            }
            finally
            {
                c.Close();
            }
            return virtdb; 
        }

        public DataSet read(OrderEN pedido_leido)
        {
            string s;
            s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            SqlConnection c = new SqlConnection(s);
            DataSet virtdb = new DataSet();

            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Order", c);
                da.Fill(virtdb, "order");

            }
            catch (Exception ex)
            {
                ex.ToString();
                Console.WriteLine("ERROR showing the order");
            }
            finally
            {
                c.Close();
            }
            return virtdb;

        }

        public DataSet searchOrder(int orderId)
        {
            //String where it's stored the instructions for the connecton for the DB
            string str = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            DataSet virtdb = new DataSet(); // Created the DataSet that is going to be returned with the information asked
            SqlConnection c = new SqlConnection(str);

            try
            {    //The select in SQL language that is processed in the DB which will return all the rows from the table "Admin"
                SqlDataAdapter da = new SqlDataAdapter("select count(*) from Order where Id = '" + orderId + "'", c);
                da.Fill(virtdb, "admin"); //It introduces the information returned from the select into this virtual DB

            }
            catch (Exception e)
            {
                e.ToString();
                Console.WriteLine("ERROR showing the order");
            }
            finally
            {
                c.Close();
            }
            return virtdb;
        }
    }
}