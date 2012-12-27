using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Simplicity.Data;
using System.Data.SqlClient;
using System.Collections.Specialized;

namespace Simplicity.Web.Utilities
{
    public class DatabaseUtility
    {
        public static User GetLoggedInCustomer()
        {
            if (HttpContext.Current.Session[WebConstants.Session.USER_ID] != null)
            {
                int userId = (int)HttpContext.Current.Session[WebConstants.Session.USER_ID];
                var context = new SimplicityEntities();
                var query = from c in context.Users where c.UserID == userId select c;
                if (query.Any())
                {
                    return query.FirstOrDefault();
                }
            }
            return null;
        }

        public static EmailTemplate GetEmailTemplate(string name)
        {
            var context = new SimplicityEntities();
            var query = from c in context.EmailTemplates where c.Name == name select c;
            if (query.Any())
            {
                return query.FirstOrDefault();
            }
            return null;
        }

        public static void addCompanyToHS(User user)
        {
            NameValueCollection AppSettings = System.Configuration.ConfigurationManager.AppSettings;
            SqlConnection conn = new SqlConnection(AppSettings["HSDB"]);
            try
            {
                conn.Open();
                SqlCommand command = new SqlCommand(AppSettings["CopyDataToHSProcedure"], conn);
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@co_name_short", user.Company.Name.Length > 16 ? user.Company.Name.Substring(0, 16) : user.Company.Name);
                command.Parameters.AddWithValue("@co_name_long", user.Company.Name.Length > 60 ? user.Company.Name.Substring(0, 60) : user.Company.Name);
                command.Parameters.AddWithValue("@contact_forename", user.Forename);
                command.Parameters.AddWithValue("@contact_surname", user.Surname);
                command.Parameters.AddWithValue("@address_no", user.Company.Address.AddressNo == null ? "" : user.Company.Address.AddressNo);
                command.Parameters.AddWithValue("@address_line1", user.Company.Address.AddressLine1 == null ? "" : user.Company.Address.AddressLine1);
                command.Parameters.AddWithValue("@address_line2", user.Company.Address.AddressLine2 == null ? "" : user.Company.Address.AddressLine2);
                command.Parameters.AddWithValue("@address_line3", user.Company.Address.AddressLine3 == null ? "" : user.Company.Address.AddressLine3);
                command.Parameters.AddWithValue("@address_line4", user.Company.Address.AddressLine4 == null ? "" : user.Company.Address.AddressLine4);
                command.Parameters.AddWithValue("@address_line5", user.Company.Address.AddressLine5 == null ? "" : user.Company.Address.AddressLine5);
                command.Parameters.AddWithValue("@address_post_code", user.Company.Address.PostalCode == null ? "" : user.Company.Address.PostalCode);
                command.Parameters.AddWithValue("@address_full", user.Company.Address.AddressFull == null ? "" : user.Company.Address.AddressFull);
                command.Parameters.AddWithValue("@tel_1", user.Company.Address.Telephone1 == null ? "" : user.Company.Address.Telephone1);
                command.Parameters.AddWithValue("@tel_2", user.Company.Address.Telephone2 == null ? "" : user.Company.Address.Telephone2);
                command.Parameters.AddWithValue("@tel_fax", user.Company.Address.Fax == null ? "" : user.Company.Address.Fax);
                command.Parameters.AddWithValue("@created_by", user.UserID);
                command.Parameters.AddWithValue("@date_created", DateTime.Now);
                command.Parameters.AddWithValue("@simplicity_company_id", user.Company.CompanyID);
                command.Parameters.AddWithValue("@simplicity_user_id", user.UserID);
                command.Parameters.AddWithValue("@user_email", user.Email);
                command.Parameters.AddWithValue("@user_password", user.Password);
                command.ExecuteReader();
            }
            finally
            {
                if (conn != null) conn.Close();
            }
        }

    }
}