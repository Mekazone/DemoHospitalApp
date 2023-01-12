using DemoHospital.Data;
using DemoHospital.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using System.Diagnostics;
using System.Linq;

namespace DemoHospital.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _db;

        public HomeController(ILogger<HomeController> logger, ApplicationDbContext db)
        {
            _logger = logger;
            _db = db;
        }

        public IActionResult Index(string sortValue, string searchValue)
        {
            IEnumerable<Patient> patients;

            //check if sort is applied
            if (!String.IsNullOrEmpty(sortValue))
            {
                //get list of patients according to sort
                if (sortValue == "hospitalIdAsc")
                {
                    patients = _db.Patient.OrderBy(p => p.HospitalId);
                    return View(patients);
                }
                else if (sortValue == "hospitalIdDesc")
                {
                    patients = _db.Patient.OrderByDescending(p => p.HospitalId);
                    return View(patients);
                }
                else if (sortValue == "admitDateAsc")
                {
                    patients = _db.Patient.OrderBy(p => p.AdmitDate);
                    return View(patients);
                }
                else if (sortValue == "admitDateDesc")
                {
                    patients = _db.Patient.OrderByDescending(p => p.AdmitDate);
                    return View(patients);
                }
                else if (sortValue == "under16")
                {
                    patients = _db.Patient.AsEnumerable().
                        Where(p => (DateTime.Now - Convert.ToDateTime(p.DateOfBirth)).Days / 360 < 16);
                    return View(patients);
                }
            }
            else if (!String.IsNullOrEmpty(searchValue))
            {
                //get patient
                searchValue = searchValue.Trim();
                var patient = _db.Patient.Where(p => p.HospitalId == searchValue);
                return View(patient);
            }
            
            //get list of patients
            patients = _db.Patient.OrderBy(p => p.PatientId);
            return View(patients);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}