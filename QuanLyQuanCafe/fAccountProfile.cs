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
using QuanLyQuanCafe.DTO;
using QuanLyQuanCafe.DAO;

namespace QuanLyQuanCafe
{
    public partial class fAccountProfile : DevExpress.XtraEditors.XtraForm
    {

        private Account loginAccount;

        public Account LoginAccount
        {
            get { return loginAccount; }
            set { loginAccount = value; ChangeAccount(loginAccount); }
        }
        public fAccountProfile(Account acc)
        {
            InitializeComponent();
            LoginAccount = acc;
        }

        void ChangeAccount(Account acc)
        {
            txtUserName.Text = LoginAccount.UserName;
            txtDisplayName.Text = LoginAccount.DisplayName;
        }

        void UpdateAccountInfo() //Cập nhật thông tin tài khoản
        {
            string displayName = txtDisplayName.Text;
            string passWord = txtPassWord.Text;
            string newPass = txtNewPass.Text;
            string reenterPass = txtReenter.Text;
            string userName = txtUserName.Text;
            if(!newPass.Equals(reenterPass)) {
                MessageBox.Show("Mật khẩu không giống. Nhập lại !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                if(AccountDAO.Instance.UpdateAccountInfo(userName, displayName, passWord, newPass))
                {
                    MessageBox.Show("Cập nhật thành công !","Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    if(updateAccount != null)
                    {
                        updateAccount(this, new AccountEvent(AccountDAO.Instance.GetAccountByUserName(userName)));
                    }
                }
                else
                {
                    MessageBox.Show("Vui lòng điền đúng mật khẩu !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
        }

        private event EventHandler<AccountEvent> updateAccount;
        public event EventHandler<AccountEvent> UpdateAccount
        {
            add { updateAccount += value; }
            remove { updateAccount -= value; }
        }

        public class AccountEvent:EventArgs
        {
            private Account acc;
            public Account Acc { get => acc; set => acc = value; }

            public AccountEvent(Account acc)
            {
                this.Acc = acc;
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            UpdateAccountInfo();
        }

    }
}