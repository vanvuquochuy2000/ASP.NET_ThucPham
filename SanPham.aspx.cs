using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using App_Code;

public partial class SanPham : System.Web.UI.Page
{
    SqlConnection cn1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["DacSanBenTre"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        cn1.Open();
        // Kiễm Tra Xem Đã Kết Nối Thành Công Chưa
        if (cn1.State == ConnectionState.Open)
            Response.Write("");
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Products", cn1);
        DataSet ds = new DataSet();
        da.Fill(ds, "Products");

        DataList1.DataSource = ds.Tables["Products"];
        DataList1.DataBind();

        if (!IsPostBack)
        {
            //Tạo biến có kiểu lớp xây dựng
            Xaydung cart = new Xaydung();
            cart.CreateItem();
            Session["Cart"] = cart;

        }
    }


  
}