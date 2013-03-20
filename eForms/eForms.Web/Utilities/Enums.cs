using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace eForms.Web.Utilities
{
    public class Enums
    {
        public enum ADDRESS_TYPE
        {
            PERSONAL,
            BILLING,
            SHIPPING,
            COMPANY
        }

        public enum ENTITY_TYPE
        {
            USER,
            ADMIN,
            COMPANY_ADMIN
        }
    }
}