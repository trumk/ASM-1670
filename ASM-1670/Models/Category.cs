﻿namespace ASM_1670.Models
{
    public class Category
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public virtual ICollection<Book>? Books { get; set; }
    }
}
