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
        public ProductEN(int productId,string productRef,string productName, float productPrice,string productBrand, string color, string description,string filePathPicture1, string filePathPicture2)
        {
            this.productId = productId;
            this.productRef = productRef;
            this.productName = productName;
            this.productPrice = productPrice;
            this.productBrand = productBrand;
            this.color = color;
            this.description = description;
            this.filePathPicture1 = filePathPicture1;
            this.filePathPicture2 = filePathPicture2;
        }

        //Variables declaration
        private int productId;
        private string productRef;
        private string productName;
        private float productPrice;
        private string productBrand;
        private string color;
        private string description;
        private string filePathPicture1;
        private string filePathPicture2;

        public string ProductRef
        {
            get { return productRef; }
            set { productRef = value;  }
        }

        public string Description
        {
            get { return description; }
            set { description = value; }
        }

        public int ProductId
        {
            get { return productId; }
            set { productId  = value; }
        }

        public float ProductPrice
        {
            get { return productPrice; }
            set { productPrice = value; }
        }

        public string Color
        {
            get { return color; }
            set { color = value; }
        }

        public string FilePathPicture1
        {
            get { return filePathPicture1; }
            set { filePathPicture1 = value; }
        }

        public string FilePathPicture2
        {
            get { return filePathPicture2; }
            set { filePathPicture2 = value; }
        }

        public string ProductName
        {
            get { return productName; }
            set { productName = value; }
        }

        public String ProductBrand
        {
            get { return productBrand; }
            set { productBrand = value; }
        }

    }
}