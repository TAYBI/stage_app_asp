using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace stage_asp_web_app
{
    public class Connexion
    {

        public SqlConnection cnx = new SqlConnection(@"Data Source=DESKTOP-1GE9PP9;Initial Catalog=stage_app;Integrated Security=True");
        SqlCommand command;
        public SqlDataAdapter dataAdapter;
        public DataTable table;

        DataSet ds = new DataSet();

        public void Open()
        {
            cnx.Open();
        }
        public void Close()
        {
            cnx.Close();
        }

        public void execute(String req)
        {
            Open();
            command = new SqlCommand(req, cnx);
            command.ExecuteNonQuery(); // insert add delete0
            Close();
        }

        public void execut_values(String req)
        {
            Open();
            command = new SqlCommand(req, cnx);
            command.ExecuteScalar(); //  cunt , max ...
            Close();
        }

        public void execute_List(String req)
        {
            Open();
            command = new SqlCommand(req, cnx);
            dataAdapter = new SqlDataAdapter(command);
            dataAdapter.Fill(ds, command.CommandText);
            table = ds.Tables[command.CommandText];
            Close();
        }
    }
}