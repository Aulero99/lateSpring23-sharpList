using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace sharpList.Models
{
    public class Car
    {
         public int Id { get; set; }
         public string make { get; set; }
         public string model { get; set; }
         public int? year { get; set; }
         public string imgUrl { get; set; }
         public string description { get; set; }
         public double? price { get; set; }
         public DateTime CreatedAt { get; set; }
         public DateTime UpdatedAt { get; set; }
        
    }
}