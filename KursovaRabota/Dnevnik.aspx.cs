using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KursovaRabota
{
    public partial class Dnevnik : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["klas"] = DropDownList1.SelectedValue;
            Session["predmet"] = DropDownList2.SelectedValue;
            Response.Redirect("Dnevnik_results.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\School.mdf;Integrated Security=True;");
            con.Open();
            string query = "INSERT INTO Grades (Ime, Klas, Predmet, Ocenka) VALUES ('" + TextBox1.Text + "', '" + DropDownList5.SelectedValue + "', '" + TextBox2.Text + "', '" + DropDownList6.SelectedValue + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            int OBJ = Convert.ToInt32(cmd.ExecuteNonQuery());
            if (OBJ > 0)
            {
                Label1.Text = "Оценката е въведена успешно.";
            }
            else
            {
                Label1.Text = "Грешка.";
            }

            con.Close();

            Response.Redirect("Dnevnik.aspx");
        }
    }
}