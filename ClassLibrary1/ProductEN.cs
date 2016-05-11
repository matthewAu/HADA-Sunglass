using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Threading.Tasks;

namespace Sunglasses_website
{
    public class ProductEN
    {
        //Class constructor
        public ProductEN()
        {
        }

        //Copy constructor
        public ProductEN(int id, float price, String color, String filepathPicture, String name, String brand)
        {
            this.id = id;
            this.price = price;
            this.color = color;
            this.filepathPicture = filepathPicture;
            this.name = name;
            this.brand = brand;
        }

        //Method used in order to search products in the DB
        public DataSet searchProduct(int productId)
        {
            ProductCAD c = new ProductCAD();
            DataSet datSet = c.searchProduct(productId);

            return datSet;
        }

        //Variables declaration
        private int id;
        private float price;
        private String color;
        private String filepathPicture;
        private String name;
        private String brand;

        //Getters and setters methods
        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        public float Price
        {
            get { return price; }
            set { price = value; }
        }

        public String Color
        {
            get { return color; }
            set { color = value; }
        }

        public String FilepathPicture
        {
            get { return filepathPicture; }
            set { filepathPicture = value; }
        }

        public String Name
        {
            get { return name; }
            set { name = value; }
        }

        public String Brand
        {
            get { return brand; }
            set { brand = value; }
        }

    }
}