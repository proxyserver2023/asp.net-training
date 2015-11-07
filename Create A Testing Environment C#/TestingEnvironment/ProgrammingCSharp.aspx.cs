using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestingEnvironment
{
    public partial class ProgrammingCSharp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void output(string s)
        {
            outputText.Text += s + Environment.NewLine;
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            output("Hello World of ASP.NET with CSharp");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            outputText.Text = "";
        }
    }
}