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
public partial class ADMIN_Admin_Login : System.Web.UI.Page
{
    public
       OleDbConnection cn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\Jwellery shop website\\jwellery.mdb");
    OleDbDataReader dr;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    OleDbCommand cmd = new OleDbCommand();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select * from Admin where aname='" + TextBox2.Text + "' and apassword='" + txtpwd.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();

        da.SelectCommand = cmd;
        da.Fill(ds);
        int count = ds.Tables[0].Rows.Count;
        if (count==1)
        {
            Response.Redirect("~/ADMIN/Adminhome.aspx");
           
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<Script language='javascript'>alert('Invalid Username and Password')</script>");
       


             }
        cn.Close();
       // Response.Redirect("~/Admin/Adminhome.aspx");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
    protected void Button1_Click2(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        
    }
    protected void txtname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       
        

        //    cn.Open();
        //    cmd.CommandText = "select aname,apassword from Admin where aname='" + txtname.Text + "'and apassword='" + txtpasswd.Text + "' ";
        //    cmd.Connection = cn;
        //    cmd.ExecuteNonQuery();
        //    da.SelectCommand = cmd;
        //    da.Fill(dt);
        //    String a = txtname.Text;
        //    if (dt.Rows.Count > 0)
        //    {
        //        Response.Redirect("~/ADMIN/Admin home.aspx?name="+a);
        //    }
        //    cn.Close();
        //    //ClientScript.RegisterStartupScript(Page.GetType(), "Login", "<Script language='javascript'>alert('Log in successfully')</script>");
        //txtname.Text=" ";
        //txtpasswd.Text=" ";

        
        
        
        
     
    }

    protected void Button1_Click3(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select * from Admin where aname='" + TextBox2.Text  + "' and apassword='" + txtpwd.Text  + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();

        da.SelectCommand = cmd;
        da.Fill(ds);
        int count = ds.Tables[0].Rows.Count;
        if (count == 1)
        {
            Response.Redirect("~/ADMIN/Adminhome.aspx");

        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<Script language='javascript'>alert('Invalid Username and Password')</script>");



        }
        cn.Close();
       
    }
}
