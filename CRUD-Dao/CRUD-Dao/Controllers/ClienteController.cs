using CRUD_Dao.Dao;
using CRUD_Dao.Models;
using CRUD_Dao.Services;
using CRUD_Dao.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace CRUD_Dao.Controllers
{
    public class ClienteController : Controller
    {
        private IClienteDao clientedao = new ClienteService();

        public ActionResult Index(ClienteModel oCliente)
        {
            OperationResponse response = clientedao.GetClientesPorFiltro(oCliente);

            if (response.Code == 1)
            {
                return View(response.Data);
            }
            else
            {
                return View();
            }
        }

        public ActionResult Add()
        {
            return View();
        }

        [HttpPost]
        public async Task<ActionResult> Add(ClienteModel oClienteModel)
        {

            if (!ModelState.IsValid)
            {
                return View(oClienteModel);
            }
            else
            {
                OperationResponse response = await clientedao.Save(oClienteModel);
            }

            return RedirectToAction("Index");
        }


        public ActionResult Edit(int Id)
        {
            OperationResponse response = clientedao.GetById(Id);

            if (response.Code == 1)
            {
                return View(response.Data);
            }
            else
            {
                return View();
            }
        }

        [HttpPost]
        public async Task<ActionResult> Edit(ClienteModel oCliente)
        {
            if (!ModelState.IsValid)
            {
                return View(oCliente);
            }

            int IdCliente = oCliente.IdCliente;
            OperationResponse response = await clientedao.Update(IdCliente, oCliente);

            if (response.Code == 1)
            {
                return RedirectToAction("Index");
            }
            else
            {
                return RedirectToAction("Index");
            }
        }

        public async Task<ActionResult> Delete(int id)
        {
            OperationResponse response = await clientedao.Delete(id);
            if (response.Code == 1)
            {
                return RedirectToAction("Index");
            }
            else
            {
                return RedirectToAction("Index");
            }
        }
    }
}