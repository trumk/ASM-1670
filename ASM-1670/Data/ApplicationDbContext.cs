using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using ASM_1670.Models;

namespace ASM_1670.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<ASM_1670.Models.Book> Book { get; set; } = default!;
        public DbSet<ASM_1670.Models.Category> Category { get; set; } = default!;
    }
}