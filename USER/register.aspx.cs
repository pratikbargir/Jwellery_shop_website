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
using System.Data;
using System.Data.OleDb;
public partial class USER_register : System.Web.UI.Page
{
    OleDbConnection cn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\Jwellery shop website\\jwellery.mdb");
    OleDbDataReader dr;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    OleDbCommand cmd = new OleDbCommand();
    public void clear()
    {
        txtname.Text = " ";
        txtaddress.Text = " ";
        txtcode.Text = " ";
        txtcity.Text = " ";
        txtmob.Text = " ";
        txttel.Text = " ";
        txtfax.Text = " ";
        txtemail.Text = " ";
        txtusername.Text = " ";
        txtpass.Text = " ";


    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click1(object sender, EventArgs e)
    {
       // string str;
        cn.Close();
        cn.Open();
        cmd.CommandText  = "select count(*)from Login where Username='" + txtname.Text  + "'";
        cmd.Connection = cn;
        int count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count > 0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='javascript'>alert('User Already Exist')</script>");
        }
        else
        {

            cn.Open();
            cmd.CommandText = "insert into Login values('" + txtname.Text + "',@p1,'" + txtaddress.Text + "'," + txtcode.Text + ",'" + txtcity.Text + "','" + txtstate.Text + "'," + txtmob.Text + "," + txttel.Text + "," + txtfax.Text + ",'" + txtemail.Text + "','" + txtusername.Text + "','" + txtpass.Text + "')";
            if (txtmale.Checked == true)
                cmd.Parameters.AddWithValue("@p1", txtmale.Text);
            else
                cmd.Parameters.AddWithValue("@p1", txtfemale.Text);
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            clear();
            ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Registered Successfully')</script>");
            Response.Redirect("~/User/UserLogin.aspx");
        }
    }
    protected void txtname_TextChanged(object sender, EventArgs e)
    {

    }
}
