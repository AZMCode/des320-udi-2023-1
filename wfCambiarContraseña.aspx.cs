using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using wfVentas.clases_ctrl;

namespace wfVentas {
    public partial class wfCambiarContraseña : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }


        protected void cvValidarActual_ServerValidate(object source, ServerValidateEventArgs args) {
            usuario usu = (usuario)Session["usuario"];
            if (usu == null) {
                Response.Redirect("/wfLogin.aspx");
            } else {
                var passcifrado = ctrlUsuario.hashPassword(txtPasswActual.Text);
                if (passcifrado.SequenceEqual(usu.password)) {
                    args.IsValid = true;
                } else {
                    args.IsValid = false;
                    cvValidarActual.ErrorMessage = "La contraseña actual es incorrecta";
                }
            }
        }

        protected void btnCambiar_Click(object sender, EventArgs e) {
            if (IsValid) {
                usuario usu = (usuario)Session["usuario"];
                if (usu != null) {
                    ctrlUsuario.cambiarContraseña(usu.email, txtPasswNueva.Text);
                    Session.Clear();
                }
                Response.Redirect("/wfLogin.aspx");
            }
        }
    }
}