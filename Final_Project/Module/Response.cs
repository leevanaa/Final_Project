using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Final_Project.Modules
{
    public class Response<T>
    {
        public T Payload { get; set; }
        public string Message { get; set; }
        public Boolean IsSuccess { get; set; }
    }
}