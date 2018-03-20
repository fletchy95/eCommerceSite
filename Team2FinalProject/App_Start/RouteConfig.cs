using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;
using Microsoft.AspNet.FriendlyUrls.Resolvers;

namespace Team2FinalProject
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Temporary;
            routes.EnableFriendlyUrls(settings);
            routes.MapPageRoute("", "Account", "~/Account.aspx");
            routes.MapPageRoute("", "Cart", "~/Cart.aspx");
            routes.MapPageRoute("", "ContactUs", "~/ContactUs.aspx");
            routes.MapPageRoute("", "Login", "~/Login.aspx");
            routes.MapPageRoute("", "Order", "~/Order.aspx");
            routes.MapPageRoute("", "Products", "~/Products.aspx");
            routes.MapPageRoute("", "Checkout", "~/Checkout.aspx");
        }
    }

    public class MyUrlResolver : WebFormsFriendlyUrlResolver
    {
        protected override bool TrySetMobileMasterPage(HttpContextBase ctx, System.Web.UI.Page page, string mobileSuffix)
        {
            return false;
        }
    }
}
