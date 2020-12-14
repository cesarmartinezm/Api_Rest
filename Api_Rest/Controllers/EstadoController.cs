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
    public class EstadoController : ControllerBase
    {
        private readonly AppDbContext context;

        public EstadoController(AppDbContext context) 
        {
            this.context = context;
        }

        // GET: api/<EstadosController>
        [HttpGet]
        public IEnumerable<Estados> Get()
        {

            return context.Estados.ToList();
        }

        // GET api/<EstadosController>/5
        [HttpGet("{id}")]
        public Estados Get(int id)
        {
            var estado = context.Estados.FirstOrDefault(e => e.idEstado == id);

            return estado;
        }

        // POST api/<EstadosController>
        [HttpPost]
        public ActionResult Post([FromBody] Estados estado)
        {
            try
            {
                context.Estados.Add(estado);
                context.SaveChanges();
                return Ok();
            }
            catch (Exception ex)
            {
                return BadRequest();
            }
        }

        // PUT api/<EstadosController>/5
        [HttpPut("{id}")]
        public ActionResult Put(int id, [FromBody] Estados estado)
        {
            if (estado.idEstado == id)
            {
                context.Entry(estado).State = EntityState.Modified;
                context.SaveChanges();
                return Ok();
            }
            else
            {
                return BadRequest();
            }
        }

        // DELETE api/<EstadosController>/5
        [HttpDelete("{id}")]
        public ActionResult Delete(int id)
        {
            var estado = context.Estados.FirstOrDefault(e => e.idEstado == id);
            if (estado != null)
            {
                context.Estados.Remove(estado);
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
