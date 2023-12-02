using ASM_1670.Data;
using ASM_1670.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System.Diagnostics;

namespace ASM_1670.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _db;
        public HomeController(ILogger<HomeController> logger, ApplicationDbContext db)
        {
            this._db = db;
            _logger = logger;
        }

        public IActionResult Index(string bookCategory, string searchString)
        {
            Debug.WriteLine($"bookCategory: {bookCategory}, searchString: {searchString}");
            IQueryable<string> catQuery = _db.Book.Select(b => b.Category.Name).Distinct();

            var books = from m in _db.Book select m;

            if (!String.IsNullOrEmpty(searchString))
            {
                books = books.Where(s => s.Title.Contains(searchString));
            }

            if (!String.IsNullOrEmpty(bookCategory))
            {
                books = books.Where(s => s.Category.Name == bookCategory);
            }

            ViewBag.Book = GetAllProducts();

            var categoryVM = new CategoryViewModel
            {
                Categories = new SelectList(catQuery.Distinct().ToList()),
                BookCategory = bookCategory,
                Books = books.ToList()
            };

            return View(categoryVM);
        }



        private List<Book> GetAllProducts()
        {
            return _db.Book.Include(b => b.Category).ToList(); 
        }

        public Book GetDetailProduct(int id)
        {
            var books = _db.Book.Find(id);
            return books;
        }
        [Authorize(Roles = "Admin, Customer")]
        public IActionResult AddCart(int id)
        {
            var cart = HttpContext.Session.GetString("cart");
            if (cart == null)
            {
                var book = GetDetailProduct(id);
                List<Cart> listCart = new List<Cart>()
                {
                    new Cart
                    {
                        Product = book,
                        Quantity = 1
                    }
                };
                HttpContext.Session.SetString("cart", JsonConvert.SerializeObject(listCart));
            }
            else
            {
                List<Cart> dataCart = JsonConvert.DeserializeObject<List<Cart>>(cart);
                bool check = true;
                for (int i = 0; i < dataCart.Count; i++)
                {
                    if (dataCart[i].Product.Id == id)
                    {
                        dataCart[i].Quantity++;
                        check = false;
                    }
                }
                if (check)
                {
                    dataCart.Add(new Cart
                    {
                        Product = GetDetailProduct(id),
                        Quantity = 1
                    });
                }
                HttpContext.Session.SetString("cart", JsonConvert.SerializeObject(dataCart));
            }
            return RedirectToAction("Index");

        }
        public IActionResult UpdateCart(int id, int quantity)
        {
            var cart = HttpContext.Session.GetString("cart");
            if (cart != null)
            {
                List<Cart> dataCart = JsonConvert.DeserializeObject<List<Cart>>(cart);
                if (quantity > 0)
                {
                    for (int i = 0; i < dataCart.Count; i++)
                    {
                        if (dataCart[i].Product.Id == id)
                        {
                            dataCart[i].Quantity = quantity;
                        }
                    }
                    HttpContext.Session.SetString("cart", JsonConvert.SerializeObject(dataCart));
                }
                return Ok(quantity);
            }
            return BadRequest();

        }

        public IActionResult DeleteCart(int id)
        {
            var cart = HttpContext.Session.GetString("cart");
            if (cart != null)
            {
                List<Cart> dataCart = JsonConvert.DeserializeObject<List<Cart>>(cart);

                for (int i = 0; i < dataCart.Count; i++)
                {
                    if (dataCart[i].Product.Id == id)
                    {
                        dataCart.RemoveAt(i);
                    }
                }
                HttpContext.Session.SetString("cart", JsonConvert.SerializeObject(dataCart));

                return RedirectToAction(nameof(ListCart));
            }
            return RedirectToAction(nameof(Index));
        }
        [Authorize(Roles = "Admin, Customer")]
        public IActionResult ListCart()
        {
            var cart = HttpContext.Session.GetString("cart");
            if (cart != null)
            {
                List<Cart> dataCart = JsonConvert.DeserializeObject<List<Cart>>(cart);

                if (dataCart.Count > 0)
                {
                    ViewBag.carts = dataCart;
                    return View();
                }
                else
                {
                    return RedirectToAction(nameof(NotFoundCart));
                }
            }

            return RedirectToAction(nameof(NotFoundCart));
        }

        public IActionResult Detail(int id)
        {
            var book = GetDetailProduct(id);

            if (book == null)
            {
                return RedirectToAction(nameof(NotFoundBook));
            }

            return View(book);
        }
        public IActionResult NotFoundBook()
        {
            return View();
        }
        public IActionResult NotFoundCart()
        {
            return View();
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