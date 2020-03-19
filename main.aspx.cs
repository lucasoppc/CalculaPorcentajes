using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace calculadora_framework
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["total"] = 0;
            }
            else
            {         
                lblTotal.Text = "Total prueba actual: " + Session["total"].ToString() + "%";
            }
        }
        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            try
            {
                lblError.Text = "";
                int aciertos = Convert.ToInt32(txtAciertos.Text);
                int total = Convert.ToInt32(txtTotal.Text);
                int max = Convert.ToInt32(txtMaxPorcent.Text);

                lblResultado.Text = Convert.ToString((aciertos * max) / total) + "%";
                Session["total"] = (int)Session["total"] + ((aciertos * max) / total);
                lblTotal.Text = "Total prueba actual: " + Session["total"].ToString()+"%";
            }
            catch
            {
                lblError.Text = "Error, debe introducir numeros enteros en todos los campos.";
            }
        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            lblResultado.Text = "";
            txtAciertos.Text = "";
            txtMaxPorcent.Text = "";
            txtTotal.Text = "";
            lblError.Text = "";
        }

        protected void btnReiniciar_Click(object sender, EventArgs e)
        {
            lblResultado.Text = "";
            txtAciertos.Text = "";
            txtMaxPorcent.Text = "";
            txtTotal.Text = "";
            lblError.Text = "";
            Session["total"] = 0;
            lblTotal.Text = "";
        }
    }
}