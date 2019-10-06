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

            string connectionString = @"Data Source=193.225.33.71; User Id=RE1D25; Password=szelektcsillag";
            connection.ConnectionString = connectionString;

            return connection;
        }
    }
}
