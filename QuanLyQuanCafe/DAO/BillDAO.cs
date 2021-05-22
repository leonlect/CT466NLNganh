using QuanLyQuanCafe.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanCafe.DAO
{

    //Lấy ra BillID từ ID table
    public class BillDAO
    {
        private static BillDAO instance;

        public static BillDAO Instance
        {
            get { if (instance == null) instance = new BillDAO(); return instance; }
            private set { BillDAO.instance = value; }
        }

        private BillDAO() { }

        public int GetUncheckBillIDByTableID (int id)
        {
            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM Bill WHERE idTable = " + id + " AND status = 0");
            
            if (data.Rows.Count > 0)
            {
                Bill bill = new Bill(data.Rows[0]);
                return bill.ID;
            }

            return -1;
        }

        public DataTable GetListBillByDate(DateTime checkIn, DateTime checkOut)
        {
            return DataProvider.Instance.ExecuteQuery("EXEC GetListBillByDate @checkIn , @checkOut", new object[] { checkIn , checkOut });
        }

        public DataTable GetListBillAll()
        {
            return DataProvider.Instance.ExecuteQuery("EXEC GetListBillAll");
        }
        public void InsertBill(int id)
        {
            DataProvider.Instance.ExecuteNonQuery("EXEC USP_InsertBill @idTable", new object[]{id});
        }


       //Lấy ra ID bill lớn nhất hiện tại để thêm vô.
       public int GetMaxIDBill()
        {
            try 
            { 
                return (int)DataProvider.Instance.ExecuteScalar("SELECT max(id) FROM Bill"); 
            }
            catch
            {
                return 1;
            }

        }

       public void CheckOut(int id, int discount, float totalPrice) //Lấy ra Bill checkout cho 1 bill bằng cách truyền vào ID và giá trị discount
        {
            string query = "UPDATE Bill SET DateCheckOut=GETDATE(), status = 1, " +  "discount = " + discount + ", totalPrice=" + totalPrice + " WHERE id = " + id;
            DataProvider.Instance.ExecuteNonQuery(query);
        }


    }
}
