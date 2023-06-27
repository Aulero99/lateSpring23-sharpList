using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace sharpList.Repositories
{
    public class CarsRepository
    {
        private readonly IDbConnection _db;
        
        public CarsRepository(IDbConnection db)
        {
            _db = db;
        }

        internal List<Car> GetAllCars()
        {
            string sql = "SELECT * FROM cars LIMIT 100;";
            List<Car> cars = _db.Query<Car>(sql).ToList();
            return cars;
        }
    }
}