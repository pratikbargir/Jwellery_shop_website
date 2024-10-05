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


public partial class ADMIN_Create_account : System.Web.UI.Page
{
    public
      OleDbConnection cn = new OleDbConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    OleDbDataReader dr;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    OleDbCommand cmd = new OleDbCommand();


    void clear()
    {
        txtusername.Text = " ";
        txtpass.Text = " ";
        txtconpass.Text = " ";
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Admin values ('" + txtusername.Text + "','" + txtpass.Text + "') ";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Create accountr", "<Script language='javascript'>alert('Account Create Successfully')</script>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        clear();
    }
}
