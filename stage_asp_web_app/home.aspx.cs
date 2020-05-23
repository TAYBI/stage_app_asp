using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace stage_asp_web_app
{
    public partial class home : System.Web.UI.Page
    {
        string niveaFormation;

        public List<string> string_to_list(string str)
        {
            return str.Split(',').ToList();
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DDNScoilare.Items.Add("bac");
                DDNScoilare.Items.Add("niveau bac");
            }
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
    }
}