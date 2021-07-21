﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;

/// <summary>
/// Summary description for XayDung
/// </summary>
namespace App_Code
{
    public class Xaydung
    {
        //Khởi tạo giỏ hàng
        public DataTable giohang = new DataTable();
        public void CreateItem()
        {
            giohang.Columns.Add("ProductID");
            giohang.Columns.Add("Name");
            giohang.Columns.Add("Picture");
            giohang.Columns.Add("Price");
            giohang.Columns.Add("NumberhaveSale");
        }
        public Boolean InsertProduct(int IDProduct, string name, string hinh, int gia, int NumberhaveSale)
        {
            Boolean flag = false;
            foreach (DataRow d in giohang.Rows)
            {
                if (int.Parse(d[0].ToString()) == IDProduct)
                {
                    d[4] = int.Parse(d[4].ToString()) + NumberhaveSale;
                    flag = true;
                }
            }
            if (flag == false)
            {
                DataRow dong = giohang.NewRow();
                dong[0] = IDProduct;
                dong[1] = name;
                dong[2] = hinh;
                dong[3] = gia;
                dong[4] = NumberhaveSale;
                giohang.Rows.Add(dong);
                return true;
            }
            return false;
        }
        public int TongThanhTien()
        {
            int a = 0;
            foreach (DataRow d in giohang.Rows)
            {
                a = a + int.Parse(d[3].ToString()) * int.Parse(d[4].ToString());
            }
            return a;
        }

    }
}