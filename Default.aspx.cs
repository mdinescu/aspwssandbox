using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspwssandbox
{
    public partial class Default 
        : System.Web.UI.Page
    {
        SimpleObject so;
        protected void Page_Load(object sender, EventArgs e)
        {
            so = new SimpleObject("Test Object");
            so.Number = 100;

            if (this.IsPostBack)
            {
                lblInfo.Text = "POSTBACK";
            }
            else
            {
                lblInfo.Text = "NORMAL REQUEST";
            }
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            // this event fires on page init (before load)
        }

        protected override void OnPreRender(EventArgs e)
        {
            base.OnPreRender(e);
            // this event fires before the page is rendered
        }

        protected void btnPressMe_Click(object sender, EventArgs e)
        {
            txtTestTextbox.Text = "Hello From " + so.Number;
        }
    }
}