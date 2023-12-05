using ASM_1670.Data;
using ASM_1670.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ASM_1670.Controllers
{
    public class OrdersController : Controller
    {
        private readonly ApplicationDbContext _dbContext;
        private readonly UserManager<IdentityUser> _userManager;

        public OrdersController(ApplicationDbContext dbContext, UserManager<IdentityUser> userManager)
        {
            _dbContext = dbContext;
            _userManager = userManager;
        }

        [HttpPost]
        public async Task<IActionResult> CreateOrder()
        {
            var cart = HttpContext.Session.GetString("cart");
            if (cart != null)
            {
                var user = await _userManager.GetUserAsync(User);

                if (user != null)
                {
                    var dataCart = JsonConvert.DeserializeObject<List<Cart>>(cart);

                    // Create a new order
                    Order order = new Order
                    {
                        UserId = user.Id,
                        OrderDate = DateTime.Now,
                        OrderItems = dataCart.Select(cartItem => new OrderItem
                        {
                            BookId = cartItem.Product.Id,
                            Quantity = cartItem.Quantity,
                            Price = cartItem.Product.Price
                        }).ToList()
                    };

                    // Save the new order to the database
                    _dbContext.Orders.Add(order);
                    _dbContext.SaveChanges();

                    // Clear the cart session
                    HttpContext.Session.Remove("cart");

                    return RedirectToAction("Index", "Home"); // Redirect to a confirmation page or another appropriate action
                }
                else
                {
                    // Handle the case where the user is not found (not logged in)
                    // You may redirect to a login page or take appropriate action
                    return RedirectToAction("Login", "Account");
                }
            }
            else
            {
                // Handle the case where the cart is empty
                // You may redirect to the cart page or take appropriate action
                return RedirectToAction("ListCart", "Products");
            }
        }
    }
}
