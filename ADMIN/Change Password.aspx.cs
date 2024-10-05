using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;
using System.Data;

public partial class ADMIN_Change_Password : System.Web.UI.Page
{
    public
     OleDbConnection cn = new OleDbConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    OleDbDataReader dr;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    OleDbCommand cmd = new OleDbCommand();
         
    public void clear()
    {
        txtusernm.Text = " ";
        txtoldpass.Text = " ";
        txtnewpass.Text = " ";
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
protected void  ImageButton1_Click(object sender, ImageClickEventArgs e)
{
     }

protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
{
    string n, p;
    cn.Open();
    cmd.CommandText = "select aname,apassword from Admin where aname='" + txtusernm.Text + "'";
    cmd.Connection = cn;
    dr = cmd.ExecuteReader();
    if (dr.HasRows)
    {
        while (dr.Read())
        {
            n = dr.GetString(0);
            p = dr.GetString(1);

        }
    }
    cn.Close();
    cn.Open();
    cmd.CommandText = "update Admin set aname='" + txtusernm.Text + "',apassword='" + txtnewpass.Text + "'where aname='" + txtusernm.Text + "'";
    cmd.Connection = cn;
    cmd.ExecuteNonQuery();
    cn.Close();
    clear();
    ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Password changed ')</script>");
    
}
}

