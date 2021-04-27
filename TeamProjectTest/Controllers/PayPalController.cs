//using Microsoft.AspNetCore.Http;
//using Microsoft.AspNetCore.Mvc;
//using PayPal.Api;
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Threading.Tasks;
//using System.IO;
//using System.Security;
//using TeamProjectTest.Services;

//namespace TeamProjectTest.Controllers
//{
//    namespace TeamProjectTest.Controllers
//    {
//        [Route("api/[controller]")]
//        [ApiController]
//        public class PayPalsController : ControllerBase
//        {
//            public IActionResult CreatePayment()
//            {
//                var payment = PayPalPaymentService.CreatePayment(GetBaseUrl(), "sale");

//                return Redirect(payment.GetApprovalUrl());
//            }

//            public IActionResult PaymentCancelled()
//            {
//                // TODO: Handle cancelled payment
//                return RedirectToAction("Error");
//            }

//            public IActionResult PaymentSuccessful(string paymentId, string token, string PayerID)
//            {
//                // Execute Payment
//                var payment = PayPalPaymentService.ExecutePayment(paymentId, PayerID);

//                return View(); //Κάτι άλλο πρέπει να βάλω εδώ
//            }
//        }
//    }
//}
