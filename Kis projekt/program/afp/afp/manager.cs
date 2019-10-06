using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.ManagedDataAccess.Client;

namespace afp
{
    class manager : OracleDatabaseConnection
    {
        public List<musicans> Select()
        {
            List<musicans> records = new List<musicans>();
            OracleCommand command = new OracleCommand();
            command.CommandType = System.Data.CommandType.Text;
            command.CommandText = "SELECT* FROM RIPAFPLABPR";
            OracleConnection connection = getConnection();
            connection.Open();
            command.Connection= connection;
            OracleDataReader reader = command.ExecuteReader();
            while(reader.Read())
            {
                musicans newmusican = new musicans();
                newmusican.Id = int.Parse(reader["id"].ToString());
                newmusican.Name = (string)reader["zenesznev"];
                newmusican.Lakcim = (string)reader["lakcim"];
                newmusican.Name = (string)reader["elerhetőség"];
                records.Add(newmusican);

            }
            connection.Close();
            return records;
        }
    }
}
