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
    public class ClientEN
    {
        //Class constructor
        public ClientEN()
        {
        }

        //Method used in order to add a client to the DB
        public DataSet add_Client(UserEN u)
        {
            ClientCAD c = new ClientCAD();
            DataSet da = c.addClient(u);
            return da;
        }

        //Method used in order to delete a cliente from the DB
        public DataSet delete_Client(ClientEN cl, int i){
            ClientCAD c = new ClientCAD();
            DataSet da = c.delete(cl, i);
            return da;
        }

        //Method used in order to update the information about a client
        public DataSet update_Client(UserEN cl, int i)
        {
            ClientCAD c = new ClientCAD();
            DataSet da = c.update(cl, i);
            return da;
        }

        //Method used in order to look for a client
        public DataSet search_Client(String email, String password)
        {
            ClientCAD c = new ClientCAD();
            DataSet da = c.searchClients(email, password);
            return da;
        }

        //Method used in order to obtain information about a client
        public DataSet read_Client(ClientEN cl)
        {
            ClientCAD c = new ClientCAD();
            DataSet da = c.read(cl);
            return da;
        }

    }
}