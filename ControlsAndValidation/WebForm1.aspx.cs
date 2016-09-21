using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsAndValidation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void btn_Click(object sender, EventArgs e)
        {
            ltMesseage.Text = string.Format("{0}  {1} tack att du använder var kundservice vi ska svara så snabt som möjligt", name.Text, efternamn.Text);
        }
    }
}