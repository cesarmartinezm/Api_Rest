using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Api_Rest.Entities
{
    public class Usuarios
    {
        [Key]
       public int idUsuario { get; set; }
       public string contrasenia { get; set; }
       public string nombre { get; set; }
       public DateTime fechaNacimiento { get; set; }
       public string rfc { get; set; }

    }
}
