using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace eForms.Data
{
    public class UserClass
    {
        public Boolean checkUser(String UserName, String PassWord)
        { 
            using (var context= new SIMPLICITY_eFORMSEntities())
            {
                var query = from c in context.Users where ((c.Email== UserName) && (c.Password == PassWord)) select c;
                if (query.Any())
                {
                    return true;
                }
                else {
                    return false;
                }
            }
        }
        public Boolean UserExist(String UserName)
        {
            using (var context = new SIMPLICITY_eFORMSEntities())
            {
                var query = from c in context.Users where (c.Email == UserName) select c;
                if (query.Any())
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
        public Boolean CreateAccount(String nEmail,String nPassword,String nType)
        {
            if (!this.UserExist(nEmail))
            {
                using (var context = new SIMPLICITY_eFORMSEntities())
                {
                    var user = new User { UserUID=Guid.NewGuid().ToString(),ReceiveEmails=false,Deleted=false,OnHold=false ,Email = nEmail,Password=nPassword,Verified=false, Enabled=false, Locked=false, CreationDate=DateTime.Now,Type=nType };
                    context.AddToUsers(user);
                    context.SaveChanges();
                }
                return true;
            }
            else {

                return false;
            }
        }

    }
}
