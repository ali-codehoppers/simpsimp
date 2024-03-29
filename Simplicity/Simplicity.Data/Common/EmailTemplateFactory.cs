﻿using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Xml.Linq;
using System.Collections.Generic;

namespace Simplicity.Data.Common
{
    class EmailTemplateFactory
    {
        private Dictionary<string, string> parameters;
        public EmailTemplateFactory()
        {
            Initialize();
        }

        public EmailTemplateFactory(User customer)
        {
            Initialize(customer);
        }

        private void Initialize()
        {
            Initialize(DatabaseUtility.GetLoggedInCustomer());
        }

        private void Initialize(User customer)
        {
            parameters = new Dictionary<string, string>();
            parameters.Add("##IMAGE_URL##", GetImagesUrl());
            if (customer != null)
            {
                parameters.Add("##CUSTOMER_NAME##", customer.Surname + ", " + customer.Forename);
                parameters.Add("##USER_NAME##", customer.Email);
                parameters.Add("##PASSWORD##", customer.Password);
            }
        }
        public Dictionary<string, string> Paramters
        {
            get { return parameters; }
        }
        public EmailTemplate GetEmailContents(string templateName)
        {
            EmailTemplate emailTemplate = DatabaseUtility.GetEmailTemplate(templateName);
            if (emailTemplate != null)
            {
                foreach (string key in this.parameters.Keys)
                {
                    emailTemplate.HTML = emailTemplate.HTML.Replace(key, this.parameters[key]);
                }
            }
            return emailTemplate;
        }
        private string GetImagesUrl()
        {
            string url = HttpContext.Current.Request.Url.ToString();
            string[] paths = url.Split('/');
            url = "";
            for (int i = 0; i < paths.Length; i++)
            {
                if (paths[i] == "pages")
                {
                    break;
                }
                url += paths[i] + "/";
            }
            url += "images";
            return url;
        }
    }
}
