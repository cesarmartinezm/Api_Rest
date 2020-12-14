using Api_Rest.Contexts;
using Api_Rest.Entities;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Api_Rest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PermisosController : ControllerBase
    {
        private readonly AppDbContext context;

        public PermisosController(AppDbContext context)
        {
            this.context = context;
        }

        // GET: api/<PermisosController>
        [HttpGet]
        public IEnumerable<Permisos> Get()
        {

            return context.Permisos.ToList();
        }

        // GET api/<PermisosController>/5
        [HttpGet("{id}")]
        public Permisos Get(int id)
        {
            var permisos = context.Permisos.FirstOrDefault(p => p.idPermiso == id);

            return permisos;
        }

        // POST api/<PermisosController>
        [HttpPost]
        public ActionResult Post([FromBody] Permisos permisos)
        {
            try
            {
                context.Permisos.Add(permisos);
                context.SaveChanges();
                return Ok();
            }
            catch (Exception ex)
            {
                return BadRequest();
            }
        }

        // PUT api/<PermisosController>/5
        [HttpPut("{id}")]
        public ActionResult Put(int id, [FromBody] Permisos permisos)
        {
            if (permisos.idPermiso == id)
            {
                context.Entry(permisos).State = EntityState.Modified;
                context.SaveChanges();
                return Ok();
            }
            else
            {
                return BadRequest();
            }
        }

        // DELETE api/<PermisosController>/5
        [HttpDelete("{id}")]
        public ActionResult Delete(int id)
        {
            var permisos = context.Permisos.FirstOrDefault(p => p.idPermiso == id);
            if (permisos != null)
            {
                context.Permisos.Remove(permisos);
                context.SaveChanges();
                return Ok();
            }
            else
            {
                return BadRequest();
            }
        }
    }
}
