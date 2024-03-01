using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteBanHang.Context;
using WebsiteBanHang.Models;

namespace WebsiteBanHang.Controllers
{
    public class PaymentController : Controller
    {
        WebsiteBanQuanAoEntities2 objWebsiteBanHangEntities = new WebsiteBanQuanAoEntities2();
        // GET: Payment
        public ActionResult Index()
        {
            if (Session["idUser"] == null)
            {
                return RedirectToAction("Login", "Home");
            }
            else
            {
                //lay thong tin gio hang tu bien session
                var lstCart = (List<CartModel>)Session["cart"];
                //gan du lieu cho order
                Orders objorder = new Orders();
                objorder.order_id = 3;
                objorder.user_id = 1;
                objorder.order_name = "DonHang-" + DateTime.Now.ToString("yyyyMMddHHmmss");
                objorder.product_id = 1;
                objorder.price=50000;
                objorder.status = 1;
                objorder.created = DateTime.Now;
              
                objWebsiteBanHangEntities.Orders.Add(objorder);
                //luu thong tin vao bang order
                objWebsiteBanHangEntities.SaveChanges();
                Product product1 = new Product();
                product1.soluong -= 1;
                //lay orderId vua moi tao de luu vao bang OrderDetail
                //int intOrderId = objorder.order_id;
                //List<OrderDetail> lstOrderDetail = new List<OrderDetail>();
                //foreach (var item in lstCart)
                //{
                //    OrderDetail obj = new OrderDetail();
                //    obj.Quantity = item.Quantity;
                //    obj.OrderId = intOrderId;
                //    obj.ProductId = item.Product.Id;
                //    lstOrderDetail.Add(obj);

                //}

                objWebsiteBanHangEntities.SaveChanges();
            }
            return View();
        }
    }
}