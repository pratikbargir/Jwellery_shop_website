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


public partial class ADMIN_Manage_rates : System.Web.UI.Page
{
    OleDbConnection cn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\Jwellery shop website\\jwellery.mdb");
    OleDbDataReader dr;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    OleDbCommand cmd = new OleDbCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into rate values(" + txtid.Text  + ", '"+DropDownList1.Text +"','"+DropDownList2.Text +"','" + txtrate.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind(); 
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        txtid.Text = row.Cells[1].Text;
        DropDownList1.Text = row.Cells[2].Text;
        DropDownList2.Text = row.Cells[3].Text;
        txtrate.Text  = row.Cells[4].Text;

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Select max (rateid) from rate";
        cmd.Connection = cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        i++;
       txtid.Text  = i.ToString();

    }
    protected void Update_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update rate set rateid=" + txtid.Text  + ",category='" + DropDownList1.Text + "',subcat='" + DropDownList2.Text  + "',rate='"+txtrate.Text +"'where rateid=" + txtid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<Script language='javascript'>alert('Update successfully')</script>");
        GridView1.DataBind();
        txtid.Text = "";
        txtrate.Text = "";

    }
    protected void Delete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from rate where rateid=" + txtid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<Script language='javascript'>alert('Delete successfully')</script>");
        // showgrid();
        GridView1.DataBind();
        txtid.Text = "";
      txtrate.Text  = "";

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text  == "Gold")
        {
           // DropDownList2.Items.Clear();
            DropDownList2.Items.Add("16 Carat");
            DropDownList2.Items.Add("18 Carat");
            DropDownList2.Items.Add("22 Carat");
            DropDownList2.Items.Add("24 Carat");
        }
        if (DropDownList1.Text == "Diamond")
        {
           // DropDownList2.Items.Clear();
            DropDownList2.Items.Add("1 Carat");
            DropDownList2.Items.Add("1.5 Carat");
            DropDownList2.Items.Add("1.75 Carat");
            DropDownList2.Items.Add("2 Carat");
            DropDownList2.Items.Add("2.5 Carat");
            DropDownList2.Items.Add("3 Carat");
            DropDownList2.Items.Add("3.5 Carat");
        }
        if (DropDownList1.Text == "Platinum")
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("16 Carat");
            DropDownList2.Items.Add("18 Carat");
            DropDownList2.Items.Add("22 Carat");
            DropDownList2.Items.Add("24 Carat");
        }
        if (DropDownList1.Text == "Kundan")
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("16 Carat");
            DropDownList2.Items.Add("18 Carat");
            DropDownList2.Items.Add("22 Carat");
            DropDownList2.Items.Add("24 Carat");
        }
        if (DropDownList1.Text == "Solitaires")
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("16 Carat");
            DropDownList2.Items.Add("18 Carat");
            DropDownList2.Items.Add("22 Carat");
            DropDownList2.Items.Add("24 Carat");
        }
        if (DropDownList1.Text == "Gold Coins")
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("24 Carat");
        }



    }
}
