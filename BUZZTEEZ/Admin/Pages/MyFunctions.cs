﻿using System;
using System.Data;
using System.IO;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace BUZZTEEZ.Admin.Pages
{
    public class MyFunctions
    {
        private string connection;
        private SqlConnection con;
        
        public MyFunctions()
        {
            connection = ConfigurationManager.ConnectionStrings["DBCONN"].ConnectionString;
            con = new SqlConnection(connection);
        }

        public void IUDQuery(string query)
        {
            con.Open();
            new SqlCommand(query, con).ExecuteNonQuery();
            con.Close();
        }

        public DataTable SelectQuery(string query)
        {
            DataTable dbData = new DataTable();
            new SqlDataAdapter(query, con).Fill(dbData);
            return dbData;
        }

        public string SelectSingleValue(string query)
        {
            con.Open();
            string total = new SqlCommand(query, con).ExecuteScalar().ToString();
            con.Close();
            return total;
        }
    }

}