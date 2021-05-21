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
using QuanLyQuanCafe.DAO;
using QuanLyQuanCafe.DTO;

namespace QuanLyQuanCafe
{
    public partial class fListFood : DevExpress.XtraEditors.XtraForm
    {
        BindingSource foodList = new BindingSource();

        public fListFood()
        {
            InitializeComponent();
            LoadListFood();
            dtgvFood.DataSource = foodList;
            AddFoodBinding();
        }

        void LoadListFood() //Nạp lên danh sách thức ăn.
        {
            foodList.DataSource = FoodDAO.Instance.GetListFood();
        }

        void AddFoodBinding() //Binding các thông tin thức ăn từ datagridview lên các textbox
        {
            txtSearchFoodName.DataBindings.Add(new Binding("Text", dtgvFood.DataSource, "name", true, DataSourceUpdateMode.Never));
        }

        List<Food> SearchFoodByName(string name) //Method Tìm kiếm thức ăn
        {
            List<Food> listFood = FoodDAO.Instance.SearchFoodByName(name);

            return listFood;
        }
        private void btnSearchFood_Click(object sender, EventArgs e)
        {
            foodList.DataSource = SearchFoodByName(txtSearchFoodName.Text);

        }

    }
}