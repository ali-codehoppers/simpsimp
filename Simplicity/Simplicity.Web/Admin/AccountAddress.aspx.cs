using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Utilities;
using Simplicity.Data;

namespace Simplicity.Web.Admin
{
    public partial class AccountAddress : AdminAuthenticatedPage
    {
        private void SetAddresses(ref Address accountAddress, ref Address billingAddress, ref Address shippingAddress)
        {
            int UserId = Int32.Parse(Session["subscribeID"].ToString());
            var query = from c in DatabaseContext.Addresses where c.UserId == UserId select c;
            foreach (var n in query)
            {
                if (n.MultiAddressType.Equals(Enum.GetName(typeof(Enums.ADDRESS_TYPE), Enums.ADDRESS_TYPE.PERSONAL)))
                {
                    accountAddress = n;
                }
                else if (n.MultiAddressType.Equals(Enum.GetName(typeof(Enums.ADDRESS_TYPE), Enums.ADDRESS_TYPE.BILLING)))
                {
                    billingAddress = n;
                }
                else if (n.MultiAddressType.Equals(Enum.GetName(typeof(Enums.ADDRESS_TYPE), Enums.ADDRESS_TYPE.SHIPPING)))
                {
                    shippingAddress = n;
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((IsPostBack == false) && (Session["subscribeID"] != null))
            {
                Address accountAddress = null;
                Address billingAddress = null;
                Address shippingAddress = null;

                SetAddresses(ref accountAddress, ref billingAddress, ref shippingAddress);

                if (billingAddress != null && billingAddress.SameAsCustomer == false)
                {

                    EnableBillingFields(true);
                    txtBillingAddressLine1.Text = billingAddress.AddressLine1;
                    txtBillingAddressLine2.Text = billingAddress.AddressLine2;
                    txtBillingAddressLine3.Text = billingAddress.AddressLine3;
                    txtBillingAddressLine4.Text = billingAddress.AddressLine4;
                    txtBillingAddressLine5.Text = billingAddress.AddressLine5;
                    txtBillingAddressNo.Text = billingAddress.AddressNo;
                    txtBillingCountry.Text = billingAddress.Country;
                    txtBillingCounty.Text = billingAddress.County;
                    txtBillingFax.Text = billingAddress.Fax;
                    txtBillingMobile.Text = billingAddress.Mobile;
                    txtBillingPostCode.Text = billingAddress.PostalCode;
                    txtBillingTele1.Text = billingAddress.Telephone1;
                    txtBillingTele2.Text = billingAddress.Telephone2;
                    txtBillingTown.Text = billingAddress.Town;
                }
                else
                {

                    EnableBillingFields(false);
                    txtBillingAddressLine1.Text = accountAddress.AddressLine1;
                    txtBillingAddressLine2.Text = accountAddress.AddressLine2;
                    txtBillingAddressLine3.Text = accountAddress.AddressLine3;
                    txtBillingAddressLine4.Text = accountAddress.AddressLine4;
                    txtBillingAddressLine5.Text = accountAddress.AddressLine5;
                    txtBillingAddressNo.Text = accountAddress.AddressNo;
                    txtBillingCountry.Text = accountAddress.Country;
                    txtBillingCounty.Text = accountAddress.County;
                    txtBillingFax.Text = accountAddress.Fax;
                    txtBillingMobile.Text = accountAddress.Mobile;
                    txtBillingPostCode.Text = accountAddress.PostalCode;
                    txtBillingTele1.Text = accountAddress.Telephone1;
                    txtBillingTele2.Text = accountAddress.Telephone2;
                    txtBillingTown.Text = accountAddress.Town;
                }

                if (shippingAddress != null && shippingAddress.SameAsCustomer == false)
                {

                    EnableShippingFields(true);
                    txtShippingAddressLine1.Text = shippingAddress.AddressLine1;
                    txtShippingAddressLine2.Text = shippingAddress.AddressLine2;
                    txtShippingAddressLine3.Text = shippingAddress.AddressLine3;
                    txtShippingAddressLine4.Text = shippingAddress.AddressLine4;
                    txtShippingAddressLine5.Text = shippingAddress.AddressLine5;
                    txtShippingAddressNo.Text = shippingAddress.AddressNo;
                    txtShippingCountry.Text = shippingAddress.Country;
                    txtShippingCounty.Text = shippingAddress.County;
                    txtShippingFax.Text = shippingAddress.Fax;
                    txtShippingMobile.Text = shippingAddress.Mobile;
                    txtShippingPostCode.Text = shippingAddress.PostalCode;
                    txtShippingTele1.Text = shippingAddress.Telephone1;
                    txtShippingTele2.Text = shippingAddress.Telephone2;
                    txtShippingTown.Text = shippingAddress.Town;
                }
                else
                {

                    EnableShippingFields(false);
                    txtShippingAddressLine1.Text = accountAddress.AddressLine1;
                    txtShippingAddressLine2.Text = accountAddress.AddressLine2;
                    txtShippingAddressLine3.Text = accountAddress.AddressLine3;
                    txtShippingAddressLine4.Text = accountAddress.AddressLine4;
                    txtShippingAddressLine5.Text = accountAddress.AddressLine5;
                    txtShippingAddressNo.Text = accountAddress.AddressNo;
                    txtShippingCountry.Text = accountAddress.Country;
                    txtShippingCounty.Text = accountAddress.County;
                    txtShippingFax.Text = accountAddress.Fax;
                    txtShippingMobile.Text = accountAddress.Mobile;
                    txtShippingPostCode.Text = accountAddress.PostalCode;
                    txtShippingTele1.Text = accountAddress.Telephone1;
                    txtShippingTele2.Text = accountAddress.Telephone2;
                    txtShippingTown.Text = accountAddress.Town;
                }
            }
        }
        private void EnableBillingFields(bool enable)
        {
            txtBillingAddressLine1.Enabled = enable;
            txtBillingAddressLine2.Enabled = enable;
            txtBillingAddressLine3.Enabled = enable;
            txtBillingAddressLine3.Enabled = enable;
            txtBillingAddressLine4.Enabled = enable;
            txtBillingAddressLine5.Enabled = enable;
            txtBillingAddressNo.Enabled = enable;
            txtBillingCountry.Enabled = enable;
            txtBillingCounty.Enabled = enable;
            txtBillingFax.Enabled = enable;
            txtBillingMobile.Enabled = enable;
            txtBillingPostCode.Enabled = enable;
            txtBillingTele1.Enabled = enable;
            txtBillingTele2.Enabled = enable;
            txtBillingTown.Enabled = enable;
        }
        private void EnableShippingFields(bool enable)
        {
            txtShippingAddressLine1.Enabled = enable;
            txtShippingAddressLine2.Enabled = enable;
            txtShippingAddressLine3.Enabled = enable;
            txtShippingAddressLine3.Enabled = enable;
            txtShippingAddressLine4.Enabled = enable;
            txtShippingAddressLine5.Enabled = enable;
            txtShippingAddressNo.Enabled = enable;
            txtShippingCountry.Enabled = enable;
            txtShippingCounty.Enabled = enable;
            txtShippingFax.Enabled = enable;
            txtShippingMobile.Enabled = enable;
            txtShippingPostCode.Enabled = enable;
            txtShippingTele1.Enabled = enable;
            txtShippingTele2.Enabled = enable;
            txtShippingTown.Enabled = enable;
        }

        protected void BillingCheck_CheckedChanged(object sender, EventArgs e)
        {
            if (BillingCheck.Checked)
            {
                EnableBillingFields(false);
            }
            else
            {
                EnableBillingFields(true);

            }
        }

        protected void ShippingCheck_CheckedChanged(object sender, EventArgs e)
        {
            if (ShippingCheck.Checked)
            {
                EnableShippingFields(false);
            }
            else
            {
                EnableShippingFields(true);

            }
        }

        protected void btnSave_Click(object sender, ImageClickEventArgs e)
        {
            Address accountAddress = null;
            Address billingAddress = null;
            Address shippingAddress = null;

            SetAddresses(ref accountAddress, ref billingAddress, ref shippingAddress);
            int UserId = Int32.Parse(Session["subscribeID"].ToString());
            if (BillingCheck.Checked)
            {
                
                if (billingAddress != null)
                {
                    
                    billingAddress.Deleted = false;
                    billingAddress.UserId = UserId;
                    billingAddress.SameAsCustomer = true;
                    billingAddress.SameAsBilling = false;
                    billingAddress.MultiAddressType = Enum.GetName(typeof(Enums.ADDRESS_TYPE), Enums.ADDRESS_TYPE.BILLING);
                    billingAddress.AddressName = null;
                    billingAddress.AddressNo = null;
                    billingAddress.AddressLine1 = null;
                    billingAddress.AddressLine2 = null;
                    billingAddress.AddressLine3 = null;
                    billingAddress.AddressLine4 = null;
                    billingAddress.AddressLine5 = null;
                    billingAddress.PostalCode = null;
                    billingAddress.AddressFull = null;
                    billingAddress.Telephone1 = null;
                    billingAddress.Telephone2 = null;
                    billingAddress.Fax = null;
                    billingAddress.Mobile = null;
                    //billingAddress.CreatedBy = LoggedIsAdmin.UserID;
                    billingAddress.CreationDate = DateTime.Now;
                    billingAddress.LastAmendedBy = LoggedIsAdmin.UserID;
                    billingAddress.LastAmendmentDate = DateTime.Now;
                    billingAddress.Town = null;
                    billingAddress.County = null;
                    billingAddress.Country = null;
                    billingAddress.AddressID = billingAddress.AddressID;
                    DatabaseContext.SaveChanges();
                }
                else
                {
                    billingAddress = new Address();
                    billingAddress.Deleted = false;
                    billingAddress.UserId = UserId;
                    billingAddress.SameAsCustomer = true;
                    billingAddress.SameAsBilling = false;
                    billingAddress.MultiAddressType = Enum.GetName(typeof(Enums.ADDRESS_TYPE), Enums.ADDRESS_TYPE.BILLING);
                    billingAddress.AddressName = null;
                    billingAddress.AddressNo = null;
                    billingAddress.AddressLine1 = null;
                    billingAddress.AddressLine2 = null;
                    billingAddress.AddressLine3 = null;
                    billingAddress.AddressLine4 = null;
                    billingAddress.AddressLine5 = null;
                    billingAddress.PostalCode = null;
                    billingAddress.AddressFull = null;
                    billingAddress.Telephone1 = null;
                    billingAddress.Telephone2 = null;
                    billingAddress.Fax = null;
                    billingAddress.Mobile = null;
                    billingAddress.CreatedBy = LoggedIsAdmin.UserID;
                    billingAddress.CreationDate = DateTime.Now;
                    billingAddress.LastAmendedBy = LoggedIsAdmin.UserID;
                    billingAddress.LastAmendmentDate = DateTime.Now;
                    billingAddress.Town = null;
                    billingAddress.County = null;
                    billingAddress.Country = null;
                    DatabaseContext.AddToAddresses(billingAddress);
                    DatabaseContext.SaveChanges();
                }
            }
            else
            {
                if (billingAddress != null)
                {
                    billingAddress.Deleted = false;
                    billingAddress.UserId = UserId;
                    billingAddress.SameAsCustomer = true;
                    billingAddress.SameAsBilling = false;
                    billingAddress.MultiAddressType = Enum.GetName(typeof(Enums.ADDRESS_TYPE), Enums.ADDRESS_TYPE.BILLING);
                    billingAddress.AddressName = null;
                    billingAddress.AddressNo = txtBillingAddressNo.Text;
                    billingAddress.AddressLine1 = txtBillingAddressLine1.Text;
                    billingAddress.AddressLine2 = txtBillingAddressLine2.Text;
                    billingAddress.AddressLine3 = txtBillingAddressLine3.Text;
                    billingAddress.AddressLine4 = txtBillingAddressLine4.Text;
                    billingAddress.AddressLine5 = txtBillingAddressLine5.Text;
                    billingAddress.PostalCode = txtBillingPostCode.Text;
                    billingAddress.AddressFull = null;
                    billingAddress.Telephone1 = txtBillingTele1.Text;
                    billingAddress.Telephone2 = txtBillingTele2.Text;
                    billingAddress.Fax = txtBillingFax.Text;
                    billingAddress.Mobile = txtBillingMobile.Text;
                    //billingAddress.CreatedBy = LoggedIsAdmin.UserID;
                    billingAddress.CreationDate = DateTime.Now;
                    billingAddress.LastAmendedBy = LoggedIsAdmin.UserID;
                    billingAddress.LastAmendmentDate = DateTime.Now;
                    billingAddress.Town = txtBillingTown.Text;
                    billingAddress.County = txtBillingCounty.Text;
                    billingAddress.Country = txtBillingCountry.Text;
                    billingAddress.AddressID = billingAddress.AddressID;
                    DatabaseContext.SaveChanges();
                }
                else
                {
                    billingAddress = new Address();
                    billingAddress.Deleted = false;
                    billingAddress.UserId = UserId;
                    billingAddress.SameAsCustomer = true;
                    billingAddress.SameAsBilling = false;
                    billingAddress.MultiAddressType = Enum.GetName(typeof(Enums.ADDRESS_TYPE), Enums.ADDRESS_TYPE.BILLING);
                    billingAddress.AddressName = null;
                    billingAddress.AddressNo = txtBillingAddressNo.Text;
                    billingAddress.AddressLine1 = txtBillingAddressLine1.Text;
                    billingAddress.AddressLine2 = txtBillingAddressLine2.Text;
                    billingAddress.AddressLine3 = txtBillingAddressLine3.Text;
                    billingAddress.AddressLine4 = txtBillingAddressLine4.Text;
                    billingAddress.AddressLine5 = txtBillingAddressLine5.Text;
                    billingAddress.PostalCode = txtBillingPostCode.Text;
                    billingAddress.AddressFull = null;
                    billingAddress.Telephone1 = txtBillingTele1.Text;
                    billingAddress.Telephone2 = txtBillingTele2.Text;
                    billingAddress.Fax = txtBillingFax.Text;
                    billingAddress.Mobile = txtBillingMobile.Text;
                    billingAddress.CreatedBy = LoggedIsAdmin.UserID;
                    billingAddress.CreationDate = DateTime.Now;
                    billingAddress.LastAmendedBy = LoggedIsAdmin.UserID;
                    billingAddress.LastAmendmentDate = DateTime.Now;
                    billingAddress.Town = txtBillingTown.Text;
                    billingAddress.County = txtBillingCounty.Text;
                    billingAddress.Country = txtBillingCountry.Text;
                    billingAddress.AddressID = billingAddress.AddressID;
                    DatabaseContext.AddToAddresses(billingAddress);
                    DatabaseContext.SaveChanges();
                }
            }
            if (ShippingCheck.Checked)
            {
                if (shippingAddress != null)
                {

                    shippingAddress.Deleted = false;
                    shippingAddress.UserId = UserId;
                    shippingAddress.SameAsCustomer = true;
                    shippingAddress.SameAsBilling = false;
                    shippingAddress.MultiAddressType = Enum.GetName(typeof(Enums.ADDRESS_TYPE), Enums.ADDRESS_TYPE.SHIPPING);
                    shippingAddress.AddressName = null;
                    shippingAddress.AddressNo = null;
                    shippingAddress.AddressLine1 = null;
                    shippingAddress.AddressLine2 = null;
                    shippingAddress.AddressLine3 = null;
                    shippingAddress.AddressLine4 = null;
                    shippingAddress.AddressLine5 = null;
                    shippingAddress.PostalCode = null;
                    shippingAddress.AddressFull = null;
                    shippingAddress.Telephone1 = null;
                    shippingAddress.Telephone2 = null;
                    shippingAddress.Fax = null;
                    shippingAddress.Mobile = null;
                    //shippingAddress.CreatedBy = LoggedIsAdmin.UserID;
                    shippingAddress.CreationDate = DateTime.Now;
                    shippingAddress.LastAmendedBy = LoggedIsAdmin.UserID;
                    shippingAddress.LastAmendmentDate = DateTime.Now;
                    shippingAddress.Town = null;
                    shippingAddress.County = null;
                    shippingAddress.Country = null;
                    shippingAddress.AddressID = shippingAddress.AddressID;
                    DatabaseContext.SaveChanges();

                }
                else
                {

                    shippingAddress = new Address();
                    shippingAddress.Deleted = false;
                    shippingAddress.UserId = UserId;
                    shippingAddress.SameAsCustomer = true;
                    shippingAddress.SameAsBilling = false;
                    shippingAddress.MultiAddressType = Enum.GetName(typeof(Enums.ADDRESS_TYPE), Enums.ADDRESS_TYPE.SHIPPING);
                    shippingAddress.AddressName = null;
                    shippingAddress.AddressNo = null;
                    shippingAddress.AddressLine1 = null;
                    shippingAddress.AddressLine2 = null;
                    shippingAddress.AddressLine3 = null;
                    shippingAddress.AddressLine4 = null;
                    shippingAddress.AddressLine5 = null;
                    shippingAddress.PostalCode = null;
                    shippingAddress.AddressFull = null;
                    shippingAddress.Telephone1 = null;
                    shippingAddress.Telephone2 = null;
                    shippingAddress.Fax = null;
                    shippingAddress.Mobile = null;
                    shippingAddress.CreatedBy = LoggedIsAdmin.UserID;
                    shippingAddress.CreationDate = DateTime.Now;
                    shippingAddress.LastAmendedBy = LoggedIsAdmin.UserID;
                    shippingAddress.LastAmendmentDate = DateTime.Now;
                    shippingAddress.Town = null;
                    shippingAddress.County = null;
                    shippingAddress.Country = null;
                    DatabaseContext.AddToAddresses(shippingAddress);
                    DatabaseContext.SaveChanges();
                }
            }
            else
            {
                if (shippingAddress != null)
                {

                    shippingAddress.Deleted = false;
                    shippingAddress.UserId = UserId;
                    shippingAddress.SameAsCustomer = true;
                    shippingAddress.SameAsBilling = false;
                    shippingAddress.MultiAddressType = Enum.GetName(typeof(Enums.ADDRESS_TYPE), Enums.ADDRESS_TYPE.SHIPPING);
                    shippingAddress.AddressName = null;
                    shippingAddress.AddressNo = txtShippingAddressNo.Text;
                    shippingAddress.AddressLine1 = txtShippingAddressLine1.Text;
                    shippingAddress.AddressLine2 = txtShippingAddressLine2.Text;
                    shippingAddress.AddressLine3 = txtShippingAddressLine3.Text;
                    shippingAddress.AddressLine4 = txtShippingAddressLine4.Text;
                    shippingAddress.AddressLine5 = txtShippingAddressLine5.Text;
                    shippingAddress.PostalCode = txtShippingPostCode.Text;
                    shippingAddress.AddressFull = null;
                    shippingAddress.Telephone1 = txtShippingTele1.Text;
                    shippingAddress.Telephone2 = txtShippingTele2.Text;
                    shippingAddress.Fax = txtShippingFax.Text;
                    shippingAddress.Mobile = txtShippingMobile.Text;
                    //shippingAddress.CreatedBy = LoggedIsAdmin.UserID;
                    shippingAddress.CreationDate = DateTime.Now;
                    shippingAddress.LastAmendedBy = LoggedIsAdmin.UserID;
                    shippingAddress.LastAmendmentDate = DateTime.Now;
                    shippingAddress.Town = txtShippingTown.Text;
                    shippingAddress.County = txtShippingCounty.Text;
                    shippingAddress.Country = txtShippingCountry.Text;
                    shippingAddress.AddressID = shippingAddress.AddressID;
                    DatabaseContext.SaveChanges();
                }
                else
                {
                    shippingAddress = new Address();
                    shippingAddress.Deleted = false;
                    shippingAddress.UserId = UserId;
                    shippingAddress.SameAsCustomer = true;
                    shippingAddress.SameAsBilling = false;
                    shippingAddress.MultiAddressType = Enum.GetName(typeof(Enums.ADDRESS_TYPE), Enums.ADDRESS_TYPE.SHIPPING);
                    shippingAddress.AddressName = null;
                    shippingAddress.AddressNo = txtShippingAddressNo.Text;
                    shippingAddress.AddressLine1 = txtShippingAddressLine1.Text;
                    shippingAddress.AddressLine2 = txtShippingAddressLine2.Text;
                    shippingAddress.AddressLine3 = txtShippingAddressLine3.Text;
                    shippingAddress.AddressLine4 = txtShippingAddressLine4.Text;
                    shippingAddress.AddressLine5 = txtShippingAddressLine5.Text;
                    shippingAddress.PostalCode = txtShippingPostCode.Text;
                    shippingAddress.AddressFull = null;
                    shippingAddress.Telephone1 = txtShippingTele1.Text;
                    shippingAddress.Telephone2 = txtShippingTele2.Text;
                    shippingAddress.Fax = txtShippingFax.Text;
                    shippingAddress.Mobile = txtShippingMobile.Text;
                    shippingAddress.CreatedBy = LoggedIsAdmin.UserID;
                    shippingAddress.CreationDate = DateTime.Now;
                    shippingAddress.LastAmendedBy = LoggedIsAdmin.UserID;
                    shippingAddress.LastAmendmentDate = DateTime.Now;
                    shippingAddress.Town = txtShippingTown.Text;
                    shippingAddress.County = txtShippingCounty.Text;
                    shippingAddress.Country = txtShippingCountry.Text;
                    DatabaseContext.AddToAddresses(shippingAddress);
                    DatabaseContext.SaveChanges();
                }
            }
            Response.Redirect("~/Admin/ConfirmCheckout.aspx");

        }
    }
}