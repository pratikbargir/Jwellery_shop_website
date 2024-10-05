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

public partial class USER_Login : System.Web.UI.Page
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

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
            }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       // cn.Open();
       // cmd.CommandText = "select Username,Password from Login where Username =' " + txtusern.Text + " ' and Password =' " + txtpass.Text + " ' ";
       // cmd.Connection = cn;
       // cmd.ExecuteNonQuery();
       // da.SelectCommand = cmd;
       // da.Fill(dt);
       // if (dt.Rows.Count > 0)
       // {
       //     ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Log in Successfully')</script>");
       
       //     //Response.Redirect("~/User/Signin.aspx");
       // }

       // cn.Close();
       //Session["cname"] = txtusern.Text;
       // Response.Redirect("~/USER/Order.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
        cn.Open();
        cmd.CommandText = "select Password,Username from Login where  Password='" + TextBox2.Text + "'and Username='" + TextBox1.Text  + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();

        da.SelectCommand = cmd;
        da.Fill(ds);
        int count = ds.Tables[0].Rows.Count;
        if (count == 1)
        {
            Session["cname"] = TextBox1.Text ;
            Response.Redirect("~/USER/Order.aspx");

           // Response.Redirect("~/ADMIN/Adminhome.aspx");

        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<Script language='javascript'>alert('Invalid Username and Password')</script>");



        }
        cn.Close();





        //cn.Open();
        //cmd.CommandText = "select Username,Password from Login where Username =' " + txtusern.Text + " ' and Password =' " + txtpass.Text + " ' ";
        //cmd.Connection = cn;
        //cmd.ExecuteNonQuery();
        //da.SelectCommand = cmd;
        //da.Fill(dt);
        //if (dt.Rows.Count > 0)
        //{
        //    ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<Script language='javascript'>alert('Log in Successfully')</script>");

        //    //Response.Redirect("~/User/Signin.aspx");
        //}

        //cn.Close();
        //Session["cname"] = txtusern.Text;
        //Response.Redirect("~/USER/Order.aspx");
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {

        cn.Open();
        cmd.CommandText = "select Password,Username from Login where  Password='" + TextBox2.Text  + "'and Username='" + TextBox1.Text  + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();

        da.SelectCommand = cmd;
        da.Fill(ds);
        int count = ds.Tables[0].Rows.Count;
        if (count == 1)
        {
            Session["cname"] =TextBox2.Text ;
            Response.Redirect("~/USER/Order.aspx");

            // Response.Redirect("~/ADMIN/Adminhome.aspx");

        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<Script language='javascript'>alert('Invalid Username and Password')</script>");



        }
        cn.Close();

        
        
        //cn.Open();
        //cmd.CommandText = "select [Password],[Username] from Login where  [Password]='" + TextBox2.Text + "'and [Username]='" + TextBox1.Text + "'";
        //cmd.Connection = cn;
        //cmd.ExecuteNonQuery();

        //da.SelectCommand = cmd;
        //da.Fill(ds);
        //int count = ds.Tables[0].Rows.Count;
        //if (count == 1)
        //{
        //    Session["cname"] = TextBox1.Text;
        //    Response.Redirect("~/USER/Order.aspx");

        //    // Response.Redirect("~/ADMIN/Adminhome.aspx");

        //}
        //else
        //{
        //    ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<Script language='javascript'>alert('Invalid Username and Password')</script>");



        //}
        //cn.Close();



    }
}
