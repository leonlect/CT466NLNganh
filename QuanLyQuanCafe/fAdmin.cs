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
using DevComponents.DotNetBar.Controls;
using QuanLyQuanCafe.DTO;

namespace QuanLyQuanCafe
{
    public partial class fAdmin : DevExpress.XtraEditors.XtraForm
    {

        BindingSource foodList = new BindingSource();
        BindingSource categoryList = new BindingSource();
        BindingSource Tablelist = new BindingSource();

        public fAdmin()
        {
            InitializeComponent();
            Load();
        }

        #region Method

        void Load() //Load toàn bộ các phương thức viết bên dưới khi form admin mở lên.
        {
            dtgvFood.DataSource = foodList;
            dtgvCategory.DataSource = categoryList;
            dtgvTable.DataSource = Tablelist;

            LoadDateTimePickerBill();
            LoadListBillByDate(dtpkFromDate.Value, dtpkToDate.Value);
            LoadAccountList();
            LoadListFood();
            LoadCategoryList();
            LoadListTable();

            AddFoodBinding();
            AddCategoryFoodBinding();
            AddTableBinding();
            LoadCategoryIntoCombobox(cbCategory);
        }

        void LoadListBillByDate(DateTime checkIn, DateTime checkOut) //Nạp lên danh sách hóa đơn theo ngày
        {
            dtgvBill.DataSource = BillDAO.Instance.GetListBillByDate(checkIn, checkOut);
        }

        void LoadCategoryList() //Nạp lên danh mục món
        {
            categoryList.DataSource = CategoryDAO.Instance.GetListCategory();
        }

        void LoadListTable() //Nạp lên danh sách bàn ăn
        {
            Tablelist.DataSource = TableDAO.Instance.LoadTableList();
        }

        void LoadAccountList() //Nạp lên danh sách tài khoản
        {
            string query = "EXEC USP_GetAccountByUserName @username"; //Khi viet query đa nhiều tham số phai co khoang cach o giua dau , vd @staff , @admin
            // Gọi DataProvider.Instance để tạo kết nối và truy vấn. Ko cần tạo mới đối tượng DataProvider
            dtgvAccount.DataSource = DataProvider.Instance.ExecuteQuery(query, new object[] { "staff" });
        }

        void LoadListFood() //Nạp lên danh sách thức ăn.
        {
            foodList.DataSource = FoodDAO.Instance.GetListFood();
        }

        void LoadCategoryIntoCombobox(ComboBoxEx cb) //Nạp lên combobox danh mục thức ăn
        {
            cb.DataSource = CategoryDAO.Instance.GetListCategory();
            cb.DisplayMember = "name";
        }

        void LoadDateTimePickerBill() //Load ngày đầu/cuối tháng cho 2 ô datetimepicker
        {
            DateTime today = DateTime.Now;
            dtpkFromDate.Value = new DateTime(today.Year, today.Month, 1);
            dtpkToDate.Value = dtpkFromDate.Value.AddMonths(1).AddDays(-1);
        }

        void AddTableBinding() //Binding các thông tin bàn ăn từ datagridview lên các textbox
        {
            txtTableID.DataBindings.Add(new Binding("Text", dtgvTable.DataSource, "id"));
            txtTableName.DataBindings.Add(new Binding("Text", dtgvTable.DataSource, "name"));
            cbTableStatus.DataBindings.Add(new Binding("Text", dtgvTable.DataSource, "status"));
        }

        void AddCategoryFoodBinding() //Binding các thông tin loại thức ăn từ datagridview lên các textbox
        {
            txtCategoryID.DataBindings.Add(new Binding("Text", dtgvCategory.DataSource, "id", true, DataSourceUpdateMode.Never));
            txtCategoryName.DataBindings.Add(new Binding("Text", dtgvCategory.DataSource, "name", true, DataSourceUpdateMode.Never));
        }
      
        void AddFoodBinding() //Binding các thông tin thức ăn từ datagridview lên các textbox
        {
            txtFoodID.DataBindings.Add(new Binding("Text", dtgvFood.DataSource, "id", true, DataSourceUpdateMode.Never));
            txtFoodName.DataBindings.Add(new Binding("Text", dtgvFood.DataSource, "name", true, DataSourceUpdateMode.Never));
            nmFoodPrice.DataBindings.Add(new Binding("Value", dtgvFood.DataSource, "price", true, DataSourceUpdateMode.Never));
        }

        #endregion

        #region Events

        private event EventHandler insertFood;
        public event EventHandler InsertFood
        {
            add { insertFood += value; }
            remove { insertFood += value; }
        }

        private event EventHandler deleteFood;
        public event EventHandler DeleteFood
        {
            add { deleteFood += value; }
            remove { deleteFood += value; }
        }

        private event EventHandler updateFood;
        public event EventHandler UpdateFood
        {
            add { updateFood += value; }
            remove { updateFood += value; }
        }

        private event EventHandler insertFoodCategory;
        public event EventHandler InsertFoodCategory
        {
            add { insertFoodCategory += value; }
            remove { insertFoodCategory -= value; }
        }

        private event EventHandler deleteFoodCategory;
        public event EventHandler DeleteFoodCategory
        {
            add { deleteFoodCategory += value; }
            remove { deleteFoodCategory -= value; }
        }

        private event EventHandler updateFoodCategory;
        public event EventHandler UpdateFoodCategory
        {
            add { updateFoodCategory += value; }
            remove { updateFoodCategory -= value; }
        }

        private event EventHandler insertTable;
        public event EventHandler InsertTable
        {
            add { insertTable += value; }
            remove { insertTable -= value; }
        }

        private event EventHandler deleteTable;
        public event EventHandler DeleteTable
        {
            add { deleteTable += value; }
            remove { deleteTable -= value; }
        }

        private event EventHandler updateTable;
        public event EventHandler UpdateTable
        {
            add { deleteTable += value; }
            remove { deleteTable -= value; }
        }

        private void btnShowFood_Click(object sender, EventArgs e)
        {
            LoadListFood();
        }

        private void txtFoodID_TextChanged(object sender, EventArgs e)
        {
            if (dtgvFood.SelectedCells.Count > 0)
            {
                //Chọn lên 1 ô bất kỳ. Lấy ra tất cả ô của dòng này. Lấy ra cột có tên idCategory.
                int id = (int)dtgvFood.SelectedCells[0].OwningRow.Cells["CategoryID"].Value;

                Category category = CategoryDAO.Instance.GetCategoryByID(id);

                cbCategory.SelectedItem = category;

                int index = -1;

                int i = 0;

                foreach (Category item in cbCategory.Items)
                {
                    if (item.ID == category.ID)
                    {
                        index = i;
                        break;
                    }
                    i++;
                }

                cbCategory.SelectedIndex = index;
            }


        }

        private void btnAddFood_Click(object sender, EventArgs e) //Xử lý sự kiện nút thêm
        {
            string name = txtFoodName.Text;
            int caterogyID = (cbCategory.SelectedItem as Category).ID;
            float price = (float)nmFoodPrice.Value;

            if (FoodDAO.Instance.InsertFood(name, caterogyID, price))
            {
                MessageBox.Show("Thêm món thành công !");
                LoadListFood();

                if (insertFood != null)
                {
                    insertFood(this, new EventArgs());
                }
            }
            else
            {
                MessageBox.Show(" Lỗi ! Thêm món thành công !");
            }
        }

        private void btnEditFood_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(txtFoodID.Text);
            string name = txtFoodName.Text;
            int caterogyID = (cbCategory.SelectedItem as Category).ID;
            float price = (float)nmFoodPrice.Value;

            if (FoodDAO.Instance.UpdateFood(id, name, caterogyID, price))
            {
                MessageBox.Show("Sửa món thành công !");
                LoadListFood();
                if (updateFood != null)
                {
                    updateFood(this, new EventArgs());
                }
            }
            else
            {
                MessageBox.Show(" Lỗi ! Sửa không thành công !");
            }
        }

        private void btnDeleteFood_Click(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(txtFoodID.Text);

            if (FoodDAO.Instance.DeleteFood(id))
            {
                MessageBox.Show("Xóa món thành công !");
                LoadListFood();
                if(deleteFood != null)
                {
                    deleteFood(this, new EventArgs());
                }
            }
            else
            {
                MessageBox.Show(" Lỗi ! Xóa không thành công !");
            }
        }

        private void btnShowCategory_Click(object sender, EventArgs e) //Show danh muc mon
        {
            LoadCategoryList();
        }

        private void btnAddCategory_Click(object sender, EventArgs e)
        {
            String name = txtCategoryName.Text;
            if (CategoryDAO.Instance.InsertCategory(name))
            {
                MessageBox.Show("Thêm danh mục mới thành công !");
                LoadCategoryList();
                if (insertFoodCategory != null)
                {
                    insertFoodCategory(this, new EventArgs());
                }
            }
            else
            {
                MessageBox.Show("Thêm danh mục không thành công !");
            }




        }

        private void btnEditCategory_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(txtCategoryID.Text);
            String name = txtCategoryName.Text;
            if (CategoryDAO.Instance.UpdateFoodCategory(id, name))
            {
                MessageBox.Show("Sửa danh mục thành công !");
                LoadCategoryList();
                if (updateFoodCategory != null)
                {
                    updateFoodCategory(this, new EventArgs());
                }
            }
            else
            {
                MessageBox.Show("Sửa danh mục không thành công !");
            }

        }

        private void btnDeleteCategory_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(txtCategoryID.Text);
            if (CategoryDAO.Instance.DeleteFoodCategory(id))
            {
                MessageBox.Show("Xóa danh mục thành công !");
                LoadCategoryList();
                if (deleteFoodCategory != null)
                {
                    deleteFoodCategory(this, new EventArgs());
                }
            }
            else
            {
                MessageBox.Show("Xóa danh mục không thành công !");
            }
        }

        private void btnAddTable_Click(object sender, EventArgs e)
        {
            string tablename = txtTableName.Text;
            string tablestatus = "Trống";
            if (TableDAO.Instance.InsertTable(tablename, tablestatus))
            {
                MessageBox.Show("Thêm bàn mới thành công !");
                LoadListTable();
                if (insertTable != null)
                {
                    insertTable(this, new EventArgs());
                }
            }
            else
            {
                MessageBox.Show("Thêm bàn không thành công !");
            }



        }

        private void btnEditTable_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(txtTableID.Text);
            String name = txtTableName.Text;
            String tablestatus = cbTableStatus.SelectedItem.ToString();
            if (TableDAO.Instance.UpdateTable(id, name, tablestatus))
            {
                MessageBox.Show("Sửa thành công !");
                LoadListTable();
                if (updateTable != null)
                {
                    updateTable(this, new EventArgs());
                }
            }
            else
            {
                MessageBox.Show("Sửa không thành công !");
            }
        }

        private void btnDeleteTable_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(txtTableID.Text);
            if (TableDAO.Instance.DeleteTable(id))
            {
                MessageBox.Show("Xóa thành công");
                LoadListTable();
                if (deleteTable != null)
                {
                    deleteTable(this, new EventArgs());
                }
            }
            else
            {
                MessageBox.Show("Xóa thất bại");
            }
        }
       
        private void btnViewbill_Click(object sender, EventArgs e)
        {
            LoadListBillByDate(dtpkFromDate.Value, dtpkToDate.Value);
        }
        #endregion

    }
}