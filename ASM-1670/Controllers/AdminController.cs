using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace ASM_1670.Controllers
{
    public class AdminController : Controller
    {
        private readonly UserManager<IdentityUser> _userManager;

        public AdminController(UserManager<IdentityUser> userManager)
        {
            _userManager = userManager;
        }

        // Example action to update user phone number

        // Action to view user information
        public async Task<IActionResult> User(string userId)
        {
            var user = await _userManager.FindByIdAsync(userId);
            if (user == null)
            {
                // Handle the case where the user is not found
                return NotFound();
            }

            return View(user);
        }

    }

}
