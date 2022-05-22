using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Techie.Models
{
    public class UserModel
    {
        public int UserId { get; set; }
        public String UserName { get; set; }
        public String UserEmail { get; set; }
        public String UserPassword { get; set; }
        public String UserGender { get; set; }
        public String UserBirthDate { get; set; }
        public String UserProfilePicture { get; set; }
        public String UserPhoneNumber { get; set; }
        public String UserAddress { get; set; }
        public String UserRole { get; set; }
        public String UserCity { get; set; }
        public String UserCountry { get; set; }
        public String UserState { get; set; }
        public String PostCode { get; set; }
    }
}