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


public partial class ADMIN_Stock : System.Web.UI.Page
{
    OleDbConnection cn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\Jwellery shop website\\jwellery.mdb");
    OleDbDataReader dr;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    OleDbCommand cmd = new OleDbCommand();
    String cat,subcat;
    protected void Page_Load(object sender, EventArgs e)
    {
         //Gold Ring
        cat="Gold";
        subcat="Ring";
        cn.Open();
        cmd.CommandText = "select count(pid) from Product where pcategorey='" + cat + "'and psubcat='"+subcat+"'";
        cmd.Connection = cn;
        dr = cmd.ExecuteReader();
        dr.Read();
        lblgoldring.Text  = dr[0].ToString();
        cn.Close();


        //Gold Earring
        cat = "Gold";
        subcat = "Earrings";
        cn.Open();
        cmd.CommandText = "select count(pid) from Product where pcategorey='" + cat + "'and psubcat='" + subcat + "'";
        cmd.Connection = cn;
        dr = cmd.ExecuteReader();
        dr.Read();
        lblgoldearing.Text  = dr[0].ToString();
        cn.Close();


        //Gold Bangles
        cat = "Gold";
        subcat = "Bangles";
        cn.Open();
        cmd.CommandText = "select count(pid) from Product where pcategorey='" + cat + "'and psubcat='" + subcat + "'";
        cmd.Connection = cn;
        dr = cmd.ExecuteReader();
        dr.Read();
        lblgoldbanles.Text = dr[0].ToString();
        cn.Close();


        //Gold Mangalsutra
        cat = "Gold";
        subcat = "Mangalsutra";
        cn.Open();
        cmd.CommandText = "select count(pid) from Product where pcategorey='" + cat + "'and psubcat='" + subcat + "'";
        cmd.Connection = cn;
        dr = cmd.ExecuteReader();
        dr.Read();
        lblgoldmangalsutra.Text = dr[0].ToString();
        cn.Close();



        //Gold Necklace
        cat = "Gold";
        subcat = "Necklace";
        cn.Open();
        cmd.CommandText = "select count(pid) from Product where pcategorey='" + cat + "'and psubcat='" + subcat + "'";
        cmd.Connection = cn;
        dr = cmd.ExecuteReader();
        dr.Read();
        lblgoldnecklace.Text = dr[0].ToString();
        cn.Close();




        //Gold Coins
        cat = "Gold";
        subcat = "Coins";
        cn.Open();
        cmd.CommandText = "select count(pid) from Product where pcategorey='" + cat + "'and psubcat='" + subcat + "'";
        cmd.Connection = cn;
        dr = cmd.ExecuteReader();
        dr.Read();
        lblgoldcoins.Text = dr[0].ToString();
        cn.Close();

        //Diamond
        cat = "Diamond";
        subcat = "Ring";
        cn.Open();
        cmd.CommandText = "select count(pid) from Product where pcategorey='" + cat + "'and psubcat='" + subcat + "'";
        cmd.Connection = cn;
        dr = cmd.ExecuteReader();
        dr.Read();
        lbldiamondring.Text = dr[0].ToString();
        cn.Close();



        //Diamond
        cat = "Diamond";
        subcat = "Earrings";
        cn.Open();
        cmd.CommandText = "select count(pid) from Product where pcategorey='" + cat + "'and psubcat='" + subcat + "'";
        cmd.Connection = cn;
        dr = cmd.ExecuteReader();
        dr.Read();
        lbldiamondearrings.Text = dr[0].ToString();
        cn.Close();



        //Diamond
        cat = "Diamond";
        subcat = "Mangalsutra";
        cn.Open();
        cmd.CommandText = "select count(pid) from Product where pcategorey='" + cat + "'and psubcat='" + subcat + "'";
        cmd.Connection = cn;
        dr = cmd.ExecuteReader();
        dr.Read();
        lbldiamondmangalsutra.Text = dr[0].ToString();
        cn.Close();


        //Diamond
        cat = "Diamond";
        subcat = "Necklace";
        cn.Open();
        cmd.CommandText = "select count(pid) from Product where pcategorey='" + cat + "'and psubcat='" + subcat + "'";
        cmd.Connection = cn;
        dr = cmd.ExecuteReader();
        dr.Read();
        lbldiamondnecklace.Text = dr[0].ToString();
        cn.Close();




        //Diamond
        cat = "Diamond";
        subcat = "Bracelet";
        cn.Open();
        cmd.CommandText = "select count(pid) from Product where pcategorey='" + cat + "'and psubcat='" + subcat + "'";
        cmd.Connection = cn;
        dr = cmd.ExecuteReader();
        dr.Read();
        lbldiamondbracelet.Text = dr[0].ToString();
        cn.Close();




        //Platinum
        cat = "Platinum";
        subcat = "Ring";
        cn.Open();
        cmd.CommandText = "select count(pid) from Product where pcategorey='" + cat + "'and psubcat='" + subcat + "'";
        cmd.Connection = cn;
        dr = cmd.ExecuteReader();
        dr.Read();
        lblplatinumring.Text = dr[0].ToString();
        cn.Close();


        //Platinum
        cat = "Platinum";
        subcat = "Earrings";
        cn.Open();
        cmd.CommandText = "select count(pid) from Product where pcategorey='" + cat + "'and psubcat='" + subcat + "'";
        cmd.Connection = cn;
        dr = cmd.ExecuteReader();
        dr.Read();
        lblplatinumearrings.Text = dr[0].ToString();
        cn.Close();



        //Platinum
        cat = "Platinum";
        subcat = "Bracelet";
        cn.Open();
        cmd.CommandText = "select count(pid) from Product where pcategorey='" + cat + "'and psubcat='" + subcat + "'";
        cmd.Connection = cn;
        dr = cmd.ExecuteReader();
        dr.Read();
        lblplatinumbracelet.Text = dr[0].ToString();
        cn.Close();



        //Platinum
        cat = "Platinum";
        subcat = "Necklace";
        cn.Open();
        cmd.CommandText = "select count(pid) from Product where pcategorey='" + cat + "'and psubcat='" + subcat + "'";
        cmd.Connection = cn;
        dr = cmd.ExecuteReader();
        dr.Read();
        lblplatinumnecklace.Text = dr[0].ToString();
        cn.Close();



        //Platinum
        cat = "Platinum";
        subcat = "Mangalsutra";
        cn.Open();
        cmd.CommandText = "select count(pid) from Product where pcategorey='" + cat + "'and psubcat='" + subcat + "'";
        cmd.Connection = cn;
        dr = cmd.ExecuteReader();
        dr.Read();
        lblplatinummangalsutra.Text = dr[0].ToString();
        cn.Close();




























    }
}
