using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.Data.SqlClient;
using System.Data.Sql;
using QuanLyQuanCafe.DAO;

namespace QuanLyQuanCafe
{
    public partial class fAdmin : DevExpress.XtraEditors.XtraForm
    {
        public fAdmin()
        {
            InitializeComponent();
            LoadAccountList();
        }

        void LoadAccountList()
        {
            string query = "EXEC USP_GetAccountByUserName @username"; //Khi viet query đa nhiều tham số phai co khoang cach o giua dau , vd @staff , @admin
            // Gọi DataProvider.Instance để tạo kết nối và truy vấn. Ko cần tạo mới đối tượng DataProvider
            dtgvAccount.DataSource = DataProvider.Instance.ExecuteQuery(query, new object[] {"staff"});
        }
    }
}