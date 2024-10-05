using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data;
using System.Data.OleDb;

public partial class USER_Homemaster : System.Web.UI.MasterPage
{
    OleDbConnection cn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\Jwellery shop website\\jwellery.mdb");
    OleDbDataReader dr;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    OleDbCommand cmd = new OleDbCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        lbldate.Text = System.DateTime.Now.ToString("d-MMM-yyyy");
        //string n="Gold", p = "22 Carat";
        //String r;
        //cn.Open();
        //cmd.CommandText = "select rate from [rate] where category='" + n + "'and subcat='"+ p +"'";
        //cmd.Connection = cn;
        //dr = cmd.ExecuteReader();
        //if (dr.HasRows)
        //{
        //    while (dr.Read())
        //    {
        //        r = dr.GetString(0);
        //        //p = dr.GetString(1);

        //    }
        //}
        //lbl22rate.Text = r.ToString ();

        //cn.Close();



        cn.Open();
        dt.Clear();
        String s1, s; string n = "Gold", p = "22 Carat";
        //s1 = "Ethnic wear";
        cmd.CommandText = "Select rate from rate Where category= '" + n + "'and subcat='"+p+"'";
        cmd.Connection = cn;
        dr = cmd.ExecuteReader();
        dr.Read();
        lbl22rate.Text  = dr[0].ToString();
        cn.Close();


        cn.Open();
        dt.Clear();
         string m = "Gold", q = "18 Carat";
        //s1 = "Ethnic wear";
        cmd.CommandText = "Select rate from rate Where category= '" + m + "'and subcat='" + q + "'";
        cmd.Connection = cn;
        dr = cmd.ExecuteReader();
        dr.Read();
        lbl18rate.Text  = dr[0].ToString();
        cn.Close();

       
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}
