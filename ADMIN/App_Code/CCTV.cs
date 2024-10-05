using System;
using System.Data;
using System.Configuration;
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

/// <summary>
/// Summary description for CCTV
/// </summary>
public class CCTV
{
    public
        OleDbConnection cn =new OleDbConnection ("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\CCTV\\cctv1.mdb");
    OleDbDataReader dr;
    OleDbDataAdapter da=new OleDbDataAdapter ();
    DataSet ds=new DataSet();
    DataTable dt=new DataTable();
    OleDbCommand cmd=new OleDbCommand ();

        
	public CCTV()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}
