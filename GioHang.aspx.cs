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
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web;
using System.Web.Security;
public partial class GioHang : System.Web.UI.Page
{
    SqlConnection cn1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["DacSanBenTre"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Cart"] != null)
            {
                int id = int.Parse(Request.QueryString["ID"].ToString());//lấy id truyền qua từ sanpham.aspx
                //Tao cmd
                //lấy thông tin của sản phẩm đã chọn để chuẩn bị thêm vào giỏ hàng
                String strcmd = "select * from Products where ProductID='" + id.ToString() + "'";
                SqlDataAdapter da1 = new SqlDataAdapter(strcmd, cn1);
                DataSet d = new DataSet();
                da1.Fill(d);

                if (d.Tables[0].Rows.Count > 0)
                {
                    string name = d.Tables[0].Rows[0][1].ToString();
                    int gia = int.Parse(d.Tables[0].Rows[0][2].ToString());
                    string hinh = d.Tables[0].Rows[0][3].ToString();
                    int sl = 1;
                    Xaydung cart = new Xaydung();
                    cart = (Xaydung)Session["Cart"];
                    cart.InsertProduct(id, name, hinh, gia, sl);
                    Session["Cart"] = cart;
                }
            }
            else
            {
                // Response.Redirect("Default2.aspx");
            }
        }
        //Hiển thị giỏ hàng lên gridview
        Xaydung cart1 = (Xaydung)Session["Cart"];
        DataTable t = cart1.giohang; 
        GridView1.DataSource = t;
        GridView1.DataBind();
        Label1.Text = cart1.TongThanhTien().ToString();
    }

    //protected void btnXoa_Click(object sender, EventArgs e)
    //{
    //    //GioHang giohang = db.HoaDonNhaps.SingleOrDefault(p => p.ProductID.ToString() == txt.Text);
    //    if (GioHang == null)
    //    {
    //        CustomValidator1.ErrorMessage = "Bạn hãy chọn 1 hóa đon để xóa";
    //        CustomValidator1.IsValid = false;
    //    }
    //    else
    //    {
    //        db.HoaDonNhaps.DeleteOnSubmit(hoadon);
    //        db.SubmitChanges();
    //    }
    //    load();
    //    btnNhap.Enabled = true;
    //    txtSoHD.Text = "";
    //}
    protected void btnHuyHD_Click(object sender, EventArgs e)
    {
        Response.Redirect("GioHang.aspx");
    }
}