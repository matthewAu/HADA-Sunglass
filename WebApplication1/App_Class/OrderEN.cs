using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Threading.Tasks;

namespace Sunglasses_website
{
    public class OrderEN
    {

        //Class constructor
        public OrderEN()
        {
        }

        //Copy constructor
        public OrderEN(int orderId, UserEN client, ProductEN product, DateTime transactionDate, String address, int postalCode,int quality )
        {
            this.orderId = orderId;
            this.client = client;
            this.product =  product ;
            this.transactionDate = transactionDate;
            this.address = address;
            this.postalCode = postalCode;
            this.quantity = quality; 
        }

        //Method used in order to search an order in the DB
        public DataSet order_Transaction(int transactionId)
        {
            OrderCAD c = new OrderCAD();
            DataSet datSet = c.searchOrder(orderId);

            return datSet;
        }
        
        //Variables declaration
        private int orderId;
        private ProductEN product;
        private UserEN client;
        private DateTime transactionDate;
        private String address;
        private int postalCode;
        private int quantity;

        //Getters and setters methods
        public int OrderId
        {
            get { return orderId; }
            set { orderId = value; }
        }

        public ProductEN Product
        {
            get { return product; }
            set { product = value; }
        }


        public UserEN User
        {
            get { return client; }
            set { client = value; }
        }

        public DateTime TransactionDate
        {
            get { return transactionDate; }
            set { transactionDate = value; }
        }

        public String Address
        {
            get { return address; }
            set { address = value; }
        }

        public int PostalCode
        {
            get { return postalCode; }
            set { postalCode = value; }
        }

        public int Quantity
        {
            get { return quantity; }
            set { quantity = value; }
        }
    }
}