using System;
using System.Data.SqlClient;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KursovaRabota
{
    public partial class Dnevnik_results : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\School.mdf;Integrated Security=True;");
            con.Open();
            string klas = Session["klas"].ToString();
            string predmet = Session["predmet"].ToString();
            string query = "SELECT DISTINCT Ime AS ime, Klas AS klas, Predmet AS predmet, Ocenka as ocenka FROM Grades WHERE Klas='" + klas + "' AND Predmet='" + predmet + "'";
            SqlDataAdapter cmd = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            cmd.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dnevnik.aspx");
        }
    }
}