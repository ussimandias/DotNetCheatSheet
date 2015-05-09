using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MyshopCS.Models;//Add a 'using' directive at the top of the file.

namespace MyshopCS.Controllers
{
    public class CustomerController : Controller
    {
        //
        // GET: /Customer/
        
        public ActionResult Index()
        {
            var customers = new CustomerRepository()
                .GetCustomers();
                
            return View(customers);
        }

        //
        // GET: /Customer/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Customer/Create

        public ActionResult Create()
        {
            Customer cust = new Customer
            {
                Birthday = new DateTime(1980, 1, 1)
            };
          
            return View(cust);
        } 

        //
        // POST: /Customer/Create

        
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(Customer cust)
        {
            try
            {
                // TODO: Add insert logic here
                if (string.IsNullOrEmpty(cust.Name))
                {
                    ModelState.AddModelError("Name", "Name is required");
                    return View();
                }

                new CustomerRepository().InsertCustomer(cust);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        
        //
        // GET: /Customer/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Customer/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Customer/Delete/5
 
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Customer/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
