//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace wfVentas
{
    using System;
    using System.Collections.Generic;
    
    public partial class ingreso
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ingreso()
        {
            this.detalle_ingreso = new HashSet<detalle_ingreso>();
        }
    
        public int idingreso { get; set; }
        public int idproveedor { get; set; }
        public int idusuario { get; set; }
        public string tipo_comprobante { get; set; }
        public string serie_comprobante { get; set; }
        public string num_comprobante { get; set; }
        public System.DateTime fecha { get; set; }
        public decimal impuesto { get; set; }
        public decimal total { get; set; }
        public string estado { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<detalle_ingreso> detalle_ingreso { get; set; }
        public virtual persona persona { get; set; }
        public virtual usuario usuario { get; set; }
    }
}
