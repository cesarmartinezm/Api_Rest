using Api_Rest.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Api_Rest.Contexts
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options):base(options)
        {
        }

        public DbSet<Usuarios> Usuarios { get; set; }
        public DbSet<Georreferencias> Georreferencias { get; set; }
        public DbSet<Permisos> Permisos { get; set; }
        public DbSet<Estados> Estados { get; set; }
    }
}
