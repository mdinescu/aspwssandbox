using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspwssandbox
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public String userFullName{
            get {
                return firstName.Text + " " + lastName.Text;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            Server.Transfer("ThankYouRegistration.aspx", true); 
        }

        protected void backBtn_Click(object sender, EventArgs e)
        {

        }
    }
}