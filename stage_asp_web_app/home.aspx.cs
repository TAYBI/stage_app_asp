using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace stage_asp_web_app
{
    public partial class home : System.Web.UI.Page
    {
        string niveaFormation;
        string name_liste;
        Filiere filiere;

        public List<string> string_to_list(string str)
        {
            return str.Split(',').ToList();
        }

        public string visiteurs()
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-1GE9PP9;Initial Catalog=stage_app;Integrated Security=True");
            string selectSql = "SELECT COUNT(*) FROM users";
            SqlCommand cmd = new SqlCommand(selectSql, con);
            Int32 count;
            try
            {

                con.Open();
                count = (Int32)cmd.ExecuteScalar();
            }
            finally
            {
                if (con != null)
                    con.Close();
            } 

            if (count <= 1)
                return "visiteur:" + count;
            else
                return "visiteurs:" + count;
        }

        public string get_string(string row, string table, string name)
        {
            SqlDataReader rdr = null;
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-1GE9PP9;Initial Catalog=stage_app;Integrated Security=True");
            string selectSql = "SELECT " + row + " FROM " + table + " WHERE name = '" + name + "'";
            SqlCommand cmd = new SqlCommand(selectSql, con);
            try
            {
                con.Open();
                rdr = cmd.ExecuteReader();
                while (rdr.Read())
                    name_liste = (string)rdr[row];
            }
            finally
            {
                if (rdr != null)
                    rdr.Close();

                if (con != null)
                    con.Close();
            }
            return name_liste;
        }


        public Filiere get_filiere(string name)
        {
            SqlDataReader rdr = null;
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-1GE9PP9;Initial Catalog=stage_app;Integrated Security=True");
            string selectSql = "SELECT * from filieres WHERE name = '" + name + "'";
            SqlCommand cmd = new SqlCommand(selectSql, con);
            try
            {
                con.Open();
                rdr = cmd.ExecuteReader();
                while (rdr.Read())
                    filiere = new Filiere((string)rdr["name"],(string)rdr["num_module"],
                        (string)rdr["nom_module"],(string)rdr["nbr_horaire"],(string)rdr["details"],
                        (string)rdr["debouches"],(string)rdr["conditions"],(string)rdr["profile_de_formation"]);
            }
            finally
            {
                if (rdr != null)
                    rdr.Close();

                if (con != null)
                    con.Close();
            }
            return filiere;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            visit.Text = visiteurs();
            DDNScoilare.Items.Add("bac");
            DDNScoilare.Items.Add("niveau bac");
        }

        protected void DDNScoilare_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DDNScoilare.SelectedValue.ToString().Equals("bac"))
                niveaFormation = "Technicien Spécialisé,Technicien,Qualification,Spécialisation";
            else if (DDNScoilare.SelectedValue.ToString().Equals("niveau bac"))
                niveaFormation = "Technicien,Qualification,Spécialisation";

            DDNformation.DataSource = string_to_list(niveaFormation);
            DDNformation.DataBind();
        }

        protected void DDNformation_SelectedIndexChanged(object sender, EventArgs e)
        {
            string txt = get_string("secteurs", "niveaux", DDNformation.SelectedValue.ToString());
            DDSecteur.DataSource = string_to_list(txt);
            DDSecteur.DataBind();
        }

        protected void DDSecteur_SelectedIndexChanged(object sender, EventArgs e)
        {
            string txt = get_string("filieres", "secteurs", DDSecteur.SelectedValue.ToString());
            DDFiliere.DataSource = string_to_list(txt);
            DDFiliere.DataBind();
        }

        protected void valiider_Click(object sender, EventArgs e)
        {
            filiere = get_filiere(DDFiliere.SelectedValue.ToString());
            Session["Filiere"] = filiere;
            Response.Redirect("details.aspx");
        }
    }
}