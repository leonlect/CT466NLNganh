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
using Menu = QuanLyQuanCafe.DTO.Menu;
using DevComponents.DotNetBar.Controls;
using System.Globalization;
using System.Threading;
using System.Threading.Tasks;


namespace QuanLyQuanCafe
{
    public partial class fTableManager : DevExpress.XtraEditors.XtraForm
    {
        public fTableManager()
        {
            InitializeComponent();

            LoadTable(); //Load dữ liệu bàn

            LoadCategory(); //Load lên

            LoadComboboxTable(cboSwitchTable); //Load lên tất cả bàn cho combobox chuyển bàn

        }


        #region Method

        void LoadCategory() //Nạp lên combobox danh mục món ID.
        {
            List<Category> listCategory = CategoryDAO.Instance.GetListCategory();
            cbCategory.DataSource = listCategory;
            cbCategory.DisplayMember = "Name";
        }

        void LoadFoodListByCategory(int id) //Nạp lên combobox món tương ứng danh mục ID.
        {
            List<Food> listFood = FoodDAO.Instance.GetFoodCategoryID(id);
            cbFood.DataSource = listFood;
            cbFood.DisplayMember = "Name";
        }

        void LoadTable() //Method load danh sách bàn lên hệ thống.
        {

            flpTable.Controls.Clear();

            List<Table> tableList = TableDAO.Instance.LoadTableList();

            foreach (Table item in tableList)
            {
                //Using DevExpress XTraEditors to create SimpleButton
                // SimpleButton btn = new SimpleButton() { Width = TableDAO.TableWidth, Height = TableDAO.TableHeight };
                Button btn = new Button() { Width = TableDAO.TableWidth, Height = TableDAO.TableHeight };
                btn.Text = item.Name + Environment.NewLine + item.Status;
                btn.Click += btn_Click;
                btn.Tag = item;

                switch (item.Status)
                {
                    case "Trống":
                        btn.BackColor = Color.LightGray;
                        break;
                    default:
                        btn.BackColor = Color.LightGreen;
                        break;
                }

                flpTable.Controls.Add(btn);
            }
        }

        void LoadComboboxTable(ComboBoxEx cb) //Load dữ liệu lên combobox bàn để chuyển
        {
            cb.DataSource = TableDAO.Instance.LoadTableList();
            cb.DisplayMember = "Name";
        }

        void ShowBill(int id) //Hiển thị chi tiết hóa đơn cho từng bàn được chọn
        {
            lsvBill.Items.Clear();

            List<Menu> listBillInfo = MenuDAO.Instance.GetListMenuByTable(id);
            float totalPrice = 0;
            foreach (Menu item in listBillInfo)
            {
                ListViewItem lsvItem = new ListViewItem(item.FoodName.ToString());

                lsvItem.SubItems.Add(item.Count.ToString());
                lsvItem.SubItems.Add(item.Price.ToString());
                lsvItem.SubItems.Add(item.TotalPrice.ToString());
                totalPrice += item.TotalPrice;
                lsvBill.Items.Add(lsvItem);
            }
            CultureInfo curtual = new CultureInfo("vi");
            Thread.CurrentThread.CurrentCulture = curtual;
         //   txtTotalPrice.Text = totalPrice.ToString("c");
            txtTotalPrice.Text = totalPrice.ToString("#,##");
            txtSelectTable.Text = (lsvBill.Tag as Table).Name;
            LoadTable();


        }

        #endregion


        #region Events

        private void btn_Click(object sender, EventArgs e)
        {
            int tableID = ((sender as Button).Tag as Table).ID;
            lsvBill.Tag = (sender as Button).Tag; //Lưu table đang chọn trên để nạp vào thêm món
            ShowBill(tableID);
        }

        private void đăngXuấtToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void thôngTinCáNhânToolStripMenuItem_Click(object sender, EventArgs e)
        {
            fAccountProfile f = new fAccountProfile();
            f.ShowDialog();
        }

        private void thôngTinToolStripMenuItem_Click(object sender, EventArgs e)
        {
            fInformation f = new fInformation();
            f.ShowDialog();
        }

        private void adminToolStripMenuItem_Click(object sender, EventArgs e)
        {
            fAdmin f = new fAdmin();
            f.InsertFood += f_InsertFood;
            f.UpdateFood += f_UpdateFood;
            f.DeleteFood += f_DeleteFood;
            f.ShowDialog();
        }

        void f_InsertFood(object senders, EventArgs e)
        {
            LoadFoodListByCategory((cbCategory.SelectedItem as Category).ID);
            if (lsvBill.Tag != null)
                ShowBill((lsvBill.Tag as Table).ID);
            LoadTable();
        }

        void f_UpdateFood(object senders, EventArgs e)
        {
            LoadFoodListByCategory((cbCategory.SelectedItem as Category).ID);
            if (lsvBill.Tag != null)
                ShowBill((lsvBill.Tag as Table).ID);
        }

        void f_DeleteFood(object senders, EventArgs e)
        {
            LoadFoodListByCategory((cbCategory.SelectedItem as Category).ID);
            if (lsvBill.Tag != null)
                ShowBill((lsvBill.Tag as Table).ID);
            LoadTable();
        }

        private void cbCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = 0;
            ComboBoxEx cb = sender as ComboBoxEx;

            if (cb.SelectedItem == null)
                return;

            Category selected = cb.SelectedItem as Category;

            id = selected.ID;

            LoadFoodListByCategory(id);
        }

        private void btnAddFood_Click(object sender, EventArgs e) //Xử lý sự kiện nút thêm Món
        {

            Table table = lsvBill.Tag as Table; //Lấy ra table hiện tại đang chọn
            if (table == null)
            {                                  //Lấy ra ID bill hiện tại - Truong hợp Bill chưa tồn tại.
                MessageBox.Show("Vui lòng chọn bàn", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                int idBill = BillDAO.Instance.GetUncheckBillIDByTableID(table.ID);
                int foodID = (cbFood.SelectedItem as Food).ID;
                int count = (int)nmFoodCount.Value;

                if (idBill == -1) //Thêm bill mới nếu chưa tồn tại.
                {
                    BillDAO.Instance.InsertBill(table.ID);
                    BillInfoDAO.Instance.InsertBillInfo(BillDAO.Instance.GetMaxIDBill(), foodID, count);
                }

                //Trường hợp 2 Bill đã tồn tại
                else
                {
                    BillInfoDAO.Instance.InsertBillInfo(idBill, foodID, count);
                }
                ShowBill(table.ID);
                LoadTable();
            }
        }

        private void btnCheckout_Click(object sender, EventArgs e) //Xử lý sự kiện thanh toán
        {
            // Lấy ra table đang chọn hiện tại
            Table table = lsvBill.Tag as Table;
            if (table == null)
            {                                  //Lấy ra ID bill hiện tại - Truong hợp Bill chưa tồn tại.
                MessageBox.Show("Vui lòng chọn bàn", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else {
            //Lấy ra ID Bill
            int idBill = BillDAO.Instance.GetUncheckBillIDByTableID(table.ID);
            //Lấy ra khuyến mãi
            int discount = (int)nmDiscount.Value;
            txtSelectTable.Text = (lsvBill.Tag as Table).Name;
            double totalPrice = Convert.ToDouble(txtTotalPrice.Text.Split(',')[0]);
            double finalTotalPrice = totalPrice - (totalPrice / 100) * discount;

            if (idBill != -1)
            {
                    if (MessageBox.Show(string.Format("Bạn có muốn thanh toán hóa đơn cho bàn {0}\n Tổng tiền - (Tổng tiền/100)*Giảm giá =  {1} - ({1} / 100) * {2} = {3}", table.Name, totalPrice, discount, finalTotalPrice), "Thông báo", MessageBoxButtons.OKCancel) == DialogResult.OK)
                    {
                        BillDAO.Instance.CheckOut(idBill, discount, (float)finalTotalPrice);
                        ShowBill(table.ID);
                        LoadTable();
                    }
                }
            }
          }
          #endregion
      
        
        private void btnRefresh_Click(object sender, EventArgs e)
        {
            LoadTable();
        }

        private void btnSwitchTable_Click(object sender, EventArgs e)
        {
            
            int id1 = (lsvBill.Tag as Table).ID;
            int id2 = (cboSwitchTable.SelectedItem as Table).ID;
            if (MessageBox.Show(string.Format("Bạn có muốn chuyển bàn {0} qua bàn {1} không ?", (lsvBill.Tag as Table).Name, (cboSwitchTable.SelectedItem as Table).Name), "Thông báo", MessageBoxButtons.OKCancel )== DialogResult.OK)
            { 
                TableDAO.Instance.SwitchTable(id1, id2);
                LoadTable(); 
            }

        }
    }
}