using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace sharpList.Services
{
    public class CarsService
    {
        private readonly CarsRepository _repo;
        public CarsService(CarsRepository repo)
        {
            _repo = repo;
        }

        internal List<Car> GetAllCars()
        {
            List<Car> cars = _repo.GetAllCars();
            return cars;
        }
    }
}