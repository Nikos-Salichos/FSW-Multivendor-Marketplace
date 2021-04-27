using System.ComponentModel.DataAnnotations;

namespace TeamProjectTest.SavePassword
{
    public class ChangePassword
    {

        public string CurrentPassword { get; set; }

        public string NewPassword { get; set; }

        [Compare("NewPassword", ErrorMessage = "The password do not match")]
        public string ConfirmPassword { get; set; }
    }
}
