using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wfVentas {
    public partial class wfDatosPersonales : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            usuario usu = (usuario)Session["usuario"];
            if (usu == null) {
                Response.Redirect("/wfLogin.aspx");
                return;
            }
            txtNombre.Text = usu.nombre;
            txtTipoDocumento.Text = usu.tipo_documento;
            txtNumDocumento.Text = usu.num_documento;
            txtDireccion.Text = usu.direccion;
            txtTelefono.Text = usu.telefono;
            txtEmail.Text = usu.email;
            txtIdUsuario.Text = usu.idusuario.ToString();

        }
    }
}