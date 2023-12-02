using Microsoft.AspNetCore.Mvc.Rendering;
using System.Net.Sockets;

namespace ASM_1670.Models
{
    public class CategoryViewModel
    {
        public List<Book>? Books { get; set; }
        public SelectList? Categories { get; set; }
        public string? BookCategory { get; set; }
        public string? SearchString { get; set; }
    }
}
