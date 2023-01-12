using DemoHospital.Models;
using Microsoft.EntityFrameworkCore;

namespace DemoHospital.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
        }

        public DbSet<Hospital> Hospital { get; set; }
        public DbSet<Patient> Patient { get; set; }
    }
}
