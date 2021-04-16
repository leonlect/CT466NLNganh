﻿using QuanLyQuanCafe.DTO;
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

        /// <summary>
        /// Thành công: bill ID
        /// thất bại: - 1
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>

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

       public void CheckOut(int id, int discount) //Lấy ra Bill checkout cho 1 bill bằng cách truyền vào ID và giá trị discount
        {
            string query = "UPDATE Bill SET DateCheckOut=GETDATE(), status = 1, " +  "discount = " + discount + " WHERE id = " + id;
            DataProvider.Instance.ExecuteNonQuery(query);
        }


    }
}