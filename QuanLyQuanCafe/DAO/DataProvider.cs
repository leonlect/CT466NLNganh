using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Sql;
using System.Data.SqlClient;

namespace QuanLyQuanCafe.DAO
{
    public class DataProvider
    {
        private string connectionSTR = "Data Source = DESKTOP-E5AILH0\\SQLEXPRESS; Initial Catalog = QuanLyQuanCafe; Integrated Security = True";

        string query = "SELECT * FROM Account";
        public DataTable ExecuteQuery(string query)
        {
            DataTable data = new DataTable();
            using (SqlConnection connection = new SqlConnection(connectionSTR)
            {
                

            }
        }

    }
}
