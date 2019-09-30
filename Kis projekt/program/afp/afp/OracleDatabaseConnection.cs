using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.ManagedDataAccess.Client;

namespace afp
{
    class OracleDatabaseConnection
    {

        public OracleConnection getConnection()
        {

            OracleConnection connection = new OracleConnection();

            string connectionString = @"Data Source=127.0.0.1;";
            connection.ConnectionString = connectionString;

            return connection;
        }
    }
}
