using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspwssandbox
{
    public partial class ThankYouRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            full_user_name.Text = PreviousPage.userFullName;
        }
    }
}