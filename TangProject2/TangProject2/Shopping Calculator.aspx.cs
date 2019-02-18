using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TangProject2
{
    public partial class Shopping_Calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            int unitPrice = Convert.ToInt16(txtUnitPrice.Text);
            int quantity = Convert.ToInt16(txtQuantity.Text);
            
            int totalPrice = unitPrice * quantity;

            lblTotalPrice.Text = "Hi " + txtName.Text + ", your total price is " + totalPrice.ToString() + " .";
          

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtUnitPrice.Text = string.Empty;
            txtQuantity.Text = string.Empty;
            txtName.Text = string.Empty;
            lblTotalPrice.Text = string.Empty;

        }

    }
}