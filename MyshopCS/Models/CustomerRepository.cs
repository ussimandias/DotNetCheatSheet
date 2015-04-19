using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyshopCS.Models
{
    public class CustomerRepository
    {
        //A repository for working with customer data

        private DataClasses1DataContext m_ctx = new DataClasses1DataContext();

        public int InsertCustomer(Customer cust)
        {
            m_ctx.Customers.InsertOnSubmit(cust); //Call the InserstOnSubmit method
            m_ctx.SubmitChanges(); //Remember to call the SubmitChanges button
            return cust.CustomerID;
        }

        public void UpdateCustomer(Customer cust)
        {
            var currentCust =
                (from currCust in m_ctx.Customers
                 where currCust.CustomerID == cust.CustomerID
                 select currCust)
                 .SingleOrDefault();

            if (currentCust != null)
            {
                currentCust.Age = cust.Age;
                currentCust.Birthday = cust.Birthday;
                currentCust.Income = cust.Income;
                currentCust.Name = cust.Name;

            }

            m_ctx.SubmitChanges();
        }

        public Customer GetCustomer(int custID) 
        {
            return
                (from cust in m_ctx.Customers
                 where cust.CustomerID == custID
                 select cust)
                    .SingleOrDefault();
        }

        public List<Customer> GetCustomers()
        {
            return
                (from cust in m_ctx.Customers
                 select cust)
                     .ToList();
        }

        public void DeleteCustomer(int custID)
        {
            var customer =
                (from cust in m_ctx.Customers
                 where cust.CustomerID == custID
                 select cust)
                     .SingleOrDefault();

            m_ctx.Customers.DeleteOnSubmit(customer);
            m_ctx.SubmitChanges();
        
        }
    }
}
















