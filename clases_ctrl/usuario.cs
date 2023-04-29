using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace wfVentas.clases_ctrl {
    public static class ctrlUsuario {
        public static wfVentas.usuario existeUsuario(string email, string password) {
            var db = new wfVentas.bdVentasEntities();
            var contrasenaHasheada = hashPassword(password);

            var usuarios = db.usuarios.Where(usuario =>
                usuario.email == email &&
                usuario.password == contrasenaHasheada
            ).ToArray();

            if (usuarios.Length > 0) {
                return usuarios[0];
            } else { return null; }
        }

        public static void cambiarContraseña(string email, string password) {
            var db = new wfVentas.bdVentasEntities();
            var contrasenaHasheada = hashPassword(password);
            var usuarios = db.usuarios.Where(usuario =>
                           usuario.email == email
            ).ToArray();
            if (usuarios.Length > 0) {
                usuarios[0].password = contrasenaHasheada;
                db.SaveChanges();
            }
        }

        public static byte[] hashPassword(string password) {
            var hash = new System.Security.Cryptography.MD5Cng();
            var encoder = new System.Text.UTF8Encoding();
            var bytes = hash.ComputeHash(encoder.GetBytes(password.ToArray()));
            return bytes;
        }

    }
}