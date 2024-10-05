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
public partial class ADMIN_Add_Product : System.Web.UI.Page
{
    public
        OleDbConnection cn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\Jwellery shop website\\jwellery.mdb");
    OleDbDataReader dr;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    OleDbCommand cmd = new OleDbCommand();


    public void clear()
    {
        //txtpid.Text = " ";
        txtpname.Text = " ";
   
        txtweight.Text = " ";
        txtpspeci.Text = " ";
        txtprise.Text = " ";
        image1.ImageUrl = " ";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        showgrid();
    }
    void showgrid()
   
    {
        cn.Open();
        dt.Clear();
        cmd.CommandText="Select * from Product order by pid";
        cmd.Connection=cn;
        dt.Load(cmd.ExecuteReader());
        GridView1.DataSource=dt;
        GridView1.DataBind();
        cn.Close();
    }



    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button7_Click(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
    protected void txtpprise_TextChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        GridViewRow row=GridView1.SelectedRow;
        txtpid.Text=row.Cells[1].Text;
        txtpname.Text=row.Cells[2].Text;
        drppcategoery.Text = row.Cells[3].Text;
        drppsubcategoery.Text = row.Cells[4].Text;
        txtweight.Text = row.Cells[5].Text;
        txtpspeci.Text = row.Cells[6].Text;
        drpcarat.Text = row.Cells[7].Text;
        txtprise.Text = row.Cells[8].Text;
        image1.ImageUrl = row.Cells[9].Text;

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Select count (pid) from Product ";
            cmd.Connection=cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        i++;
        txtpid.Text=i.ToString();
        clear();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (txtpname.Text == ""||txtpspeci.Text==""||txtprise.Text==""||txtweight.Text=="")
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Error", "<Script language='javascript'>alert('Field  must enter')</script>");
        }
        else
        {
            cn.Open();
           cmd.CommandText = "insert into Product values(" + txtpid.Text + ",'" + txtpname.Text + "','" + drppcategoery.Text + "','" + drppsubcategoery.Text  + "','" + txtweight.Text + "','" + txtpspeci.Text + "','" + drpcarat.Text + "','" + txtprise.Text + "','" + image1.ImageUrl + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            showgrid();
            txtpid.Text = "";
            txtpname.Text = "";
        }
    }



protected void  btnupdate_Click(object sender, EventArgs e)
{
    cn.Open();
   cmd.CommandText="update Product set pid=" + txtpid.Text +",pname='" + txtpname.Text +"',pcategorey='"+ drppcategoery.Text +"',psubcat='"+ drppsubcategoery.Text  +"',pweight='"+txtweight.Text+"',psize='"+txtpspeci.Text+"',pcarat='"+drpcarat.Text+"',pprise="+ txtprise.Text +",pphoto='"+image1.ImageUrl+"' where pid="+ txtpid.Text +"";
    cmd.Connection=cn;
    cmd.ExecuteNonQuery();
    cn.Close();
    ClientScript.RegisterStartupScript(Page.GetType(), "Update", "<Script language='javascript'>alert('Update successfully')</script>");
    showgrid();
    txtpid.Text="";
    txtpname.Text="";
}
protected void  btndelete_Click(object sender, EventArgs e)
{
    cn.Open();
    cmd.CommandText="delete from Product where pid=" + txtpid.Text +"";
    cmd.Connection=cn;
    cmd.ExecuteNonQuery();
    cn.Close();
    showgrid();
    txtpid.Text="";
    txtpname.Text="";
}
protected void btnuplode_Click(object sender, EventArgs e)
{
    if (FileUpload1.HasFile == true)
    {
        FileUpload1.SaveAs(Server.MapPath("~\\images\\" + FileUpload1.FileName));
        image1.ImageUrl = "~\\images\\" + FileUpload1.FileName;

    }
}
protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
{
    GridView1.PageIndex = e.NewPageIndex;
    showgrid();
}
}
