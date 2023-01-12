using System.ComponentModel.DataAnnotations;

namespace DemoHospital.Models
{
    public class Hospital
    {
        [Key, MaxLength(6)]
        public string HospitalId { get; set; }
        [MaxLength(150)]
        public string HospitalName { get; set; }
        [MaxLength(8)]
        public string Postcode { get; set; }
        [MaxLength(50)]
        public string Area { get; set; }
    }
}
