using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wfVentas {
    public partial class Site1 : System.Web.UI.MasterPage {
        protected void Page_Load(object sender, EventArgs e) {
            usuario usu = (usuario)Session["usuario"];
            if (usu == null) {
                Response.Redirect("/Login.aspx");
                return;
            }
            txtNombreUsuario.Text = usu.nombre;
        }
    }
}