using Api_Rest.Entities;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace ConsumoApi.Controllers
{
    public class HomeController : Controller
    {
        public async Task<ActionResult> Mapa() {
        http://localhost:8081/api/usuario

            var httpClient = new HttpClient();
            var json = await httpClient.GetStringAsync("http://192.168.0.7:8081/api/georreferencias");
            var geoList = JsonConvert.DeserializeObject<List<Georreferencias>>(json);
            
                return View(geoList);
            
        }

        /*
        public ActionResult Index()
        {
            return View();
        }*/

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}