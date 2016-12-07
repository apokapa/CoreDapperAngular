using AutoMapper;
using apoxCrmApi.Data;
using apoxCrmApi.Models;
using apoxCrmApi.Repositories;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CoreDapperApi.Models;

namespace apoxCrmApi.Controllers
{
    public class customersController : Controller

    {
  
        private IcustomersRepository _repository;

        public customersController(IcustomersRepository CustomersRepository)
        {
            _repository = CustomersRepository;
        }

    
        [Route("api/customers/GetAll")]
        public IActionResult GetAll()
        {
            List<CustomersViewModel> customersView;
            try
            {
                var customers = _repository.GetAllCustomers();
                customersView = Mapper.Map<List<CustomersViewModel>>(customers);

            }
            catch(Exception ex)
            {
                return BadRequest(ex);
            }
            return Ok(customersView);

        }

        [Route("api/customers/GetFull/{id}")]
        public IActionResult GetFull(int id)
        {
            customersModel customer;

            try
            {
                customer = _repository.GetFullCustomer(id);

            }
            catch (Exception ex)
            {
                return BadRequest(ex);
            }
            return Ok(customer);

        }


        [Route("api/customers/GetDropdowns")]
        public IActionResult GetDropdowns()
        {
            CustomerDropdownsModel CustomerDropdowns;
            try
            {
                CustomerDropdowns = _repository.GetCustomerDropdowns();

            }
            catch (Exception ex)
            {
                return BadRequest(ex);
            }
            return Ok(CustomerDropdowns);

        }

        [HttpPost, Route("api/Customers/CreateCustomer")]
        public IActionResult CreateCustomer([FromBody]customersModel customer)
        {
            try
            {
                _repository.InsertCustomer(customer);
            }
            catch (Exception ex)
            {
                return BadRequest(ex);
            }
            return Ok(customer);
        }


        [HttpPut, Route("api/Customers/UpdateCustomer")]
        public IActionResult UpdateCustomer([FromBody]customersModel customer)
        {
            try
            {
                _repository.UpdateCustomer(customer);
            }
            catch (Exception ex)
            {
                return BadRequest(ex);
            }
            return Ok(customer);
        }

        [HttpDelete, Route("api/Customers/DeleteCustomer/{id}")]
        public IActionResult DeleteCustomer(int id)
        {
            try
            {
                _repository.DeleteCustomer(id);
            }
            catch (Exception ex)
            {
                return BadRequest(ex);
            }
            return Ok("Deleted");
        }




    }
}
