using Final_Project.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Final_Project.Factory
{
    public class TransactionFactory
    {
        public static TransactionHeader CreateTransaction(DateTime transactionDate, string status)
        {
            return new TransactionHeader
            {
                TransactionDate = transactionDate,
                Status = status
            };
        }
    }
}