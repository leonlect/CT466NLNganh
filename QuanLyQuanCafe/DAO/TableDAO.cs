using QuanLyQuanCafe.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanCafe.DAO
{
    public class TableDAO
    {
        private static TableDAO instance;

        public static TableDAO Instance
        {
            get { if (instance == null) instance = new TableDAO(); return instance; }
            private set { instance = value; }
        }

        public static int TableWidth = 120;
        public static int TableHeight = 120;

        private TableDAO() { }

        public List<Table> LoadTableList()
        {
            List<Table> tableList = new List<Table>();

            DataTable data = DataProvider.Instance.ExecuteQuery("USP_GetTableList");

            foreach(DataRow item in data.Rows)
            {
                Table table = new Table(item);
                tableList.Add(table);
            }

            return tableList;
        }

        public bool InsertTable(string ten, string trangthai)
        {
            string query = "exec InsertTable @name , @status";
            int resutl = DataProvider.Instance.ExecuteNonQuery(query, new object[] { ten , trangthai });
            return resutl > 0;
        }
        public bool UpdateTable(int id, string ten, string trangthai)
        {
            string query = "exec UpdateTable @id , @name , @status";
            int resutl = DataProvider.Instance.ExecuteNonQuery(query, new object[] { id , ten , trangthai });
            return resutl > 0;
        }
        public bool DeleteTable(int id)
        {
            string query = "delete TableFood where id= " + id;
            int resutl = DataProvider.Instance.ExecuteNonQuery(query);
            return resutl > 0;
        }


    }
}
