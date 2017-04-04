using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityFramework
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var db = new ModelContainer())
            {

                People man1 = new People() { Age = 24, FirstName = "Poll", LastName = "Nickson" };

                db.PeopleSet.RemoveRange(db.PeopleSet);
                Console.WriteLine(db.PeopleSet.Count<People>());

                db.PeopleSet.Add(man1);
                db.SaveChanges();

                Console.ReadKey();
            }


        }
    }
}
