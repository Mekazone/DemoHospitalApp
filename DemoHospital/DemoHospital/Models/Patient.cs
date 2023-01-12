using System.ComponentModel.DataAnnotations;

namespace DemoHospital.Models
{
    public class Patient
    {
        [Key, MaxLength(6)]
        public string PatientId { get; set; }
        public DateTime DateOfBirth { get; set;}
        [MaxLength(1)]
        public string Sex { get; set; }
        [MaxLength(6)]
        public string HospitalId { get; set; }
        [MaxLength(8)]
        public string? Postcode { get; set; }
        public DateTime? AdmitDate { get; set; }
        public DateTime? DischargeDate { get; set; }
    }
}
