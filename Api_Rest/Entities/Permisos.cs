using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Api_Rest.Entities
{
    public class Permisos
    {
        [Key]
        public int idPermiso { get; set; }
        public int idUsuario { get; set; }
        public int idEstado { get; set; }
    }
}
