using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Api_Rest.Entities
{
    public class Estados
    {
        [Key]
        public int idEstado { get; set; }
        public string nombre { get; set; }
        public string abreviacion { get; set; }

    }
}
