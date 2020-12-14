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
    public class GeorreferenciasController : ControllerBase
    {
        private readonly AppDbContext context;

        public GeorreferenciasController(AppDbContext context) 
        {
            this.context = context;
        }

        // GET: api/<GeorreferenciasController>
        [HttpGet]
        public IEnumerable<Georreferencias> Get()
        {
            
            return context.Georreferencias.ToList();
        }

        // GET api/<GeorreferenciasController>/5
        [HttpGet("{id}")]
        public Georreferencias Get(int id)
        {
            var georreferencia = context.Georreferencias.FirstOrDefault(g => g.IdGeorreferencia == id);

            return georreferencia;
        }

        // POST api/<GeorreferenciasController>
        [HttpPost]
        public ActionResult Post([FromBody] Georreferencias georreferencia)
        {
            try
            {
                context.Georreferencias.Add(georreferencia);
                context.SaveChanges();
                return Ok();
            }
            catch (Exception ex)
            {
                return BadRequest();
            }

        }

        // PUT api/<GeorreferenciasController>/5
        [HttpPut("{id}")]
        public ActionResult Put(int id, [FromBody] Georreferencias georreferencia)
        {
            if (georreferencia.IdGeorreferencia == id)
            {
                context.Entry(georreferencia).State = EntityState.Modified;
                context.SaveChanges();
                return Ok();
            }
            else
            {
                return BadRequest();
            }
        }

        // DELETE api/<GeorreferenciasController>/5
        [HttpDelete("{id}")]
        public ActionResult Delete(int id)
        {
            var georreferencia = context.Georreferencias.FirstOrDefault(g => g.IdGeorreferencia == id);
            if (georreferencia != null)
            {
                context.Georreferencias.Remove(georreferencia);
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
