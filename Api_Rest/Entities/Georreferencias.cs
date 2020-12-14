using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Api_Rest.Entities
{
    public class Georreferencias
    {
        [Key]
        public int IdGeorreferencia { get; set; }
        public int IdEstado { get; set; }
        public double Latitud { get; set; }
        public double Longitud { get; set; }

    }
}
