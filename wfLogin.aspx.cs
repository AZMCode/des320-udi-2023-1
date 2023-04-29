using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using wfVentas.clases_ctrl;

namespace wfVentas {
    public partial class wfLogin : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void btnLogin_Click(object sender, EventArgs e) {
            var usuario = ctrlUsuario.existeUsuario(txtEmail.Text, txtPassword.Text);
            if (usuario != null) {
                Session.Clear();
                Session.Add("usuario", usuario);
                Response.Redirect("/wfPrincipal.aspx");
            } else {
                txtValidacion.Text = "El correo o contraseña es incorrecto";
                txtValidacion.Visible = true;
            }
        }
    }
}