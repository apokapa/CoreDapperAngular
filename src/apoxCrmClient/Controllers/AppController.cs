using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;

namespace InsDxgridClient.Controllers
{
    public class AppController : Controller
    {

        public IActionResult Index()
        {
            return View();
        }




    }
}
