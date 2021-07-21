using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class DKThanhVien : System.Web.UI.Page
{
    SqlConnection cn1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["DacSanBenTre"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        cn1.Open();
        // Kiễm Tra Xem Đã Kết Nối Thành Công Chưa
        if (cn1.State == ConnectionState.Open)
            Response.Write("ketn noi thanh cong");
        //,@DiaChi,@SDT,@GioiTinh
        //tạo cmd
        String strcmd = "insert into Thanhvien values(@MaTV, @TenTV)";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn1;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = strcmd;

        SqlParameter par = cmd.CreateParameter();
        par.ParameterName = "@MaTV";
        par.Value = txtID.Text;
        cmd.Parameters.Add(par);

        SqlParameter par2 = cmd.CreateParameter();
        par2.ParameterName = "@TenTV";
        par2.Value = txtName.Text;
        cmd.Parameters.Add(par2);

        //SqlParameter par3 = cmd.CreateParameter();
        //par3.ParameterName = "@DiaChi";
        //par3.Value = txtDiaChi.Text;
        //cmd.Parameters.Add(par3);

        //SqlParameter par4 = cmd.CreateParameter();
        //par4.ParameterName = "@DiaChi";
        //par4.Value = txtSĐT.Text;
        //cmd.Parameters.Add(par4);

        //SqlParameter par5 = cmd.CreateParameter();
        //par5.ParameterName = "@GioiTinh";
        //par5.Value = txtGioiTinh.Text;
        //cmd.Parameters.Add(par5);

        //thực thi cmd
        int rs = cmd.ExecuteNonQuery(); //thực thi câu truy vấn dạng insert, delete, update, kết quả trả về số dòng
        //kiểm tra đã thêm thành công
        if (rs == 1)
        {
            Response.Write("Bạn đã là thành viên");
            cn1.Close();
        }


        //Response.Redirect("thongtin.aspx");
    }
}