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

                People man1 = new People();
                man1.Age = 32;
                man1.FirstName = "Pol";
                man1.LastName = "Robson";

                People man2 = new People() { Age = 24, LastName = "Nickson", FirstName = "Jack", Details = new Details() { City = "Yervan", Phone = "077 345 678"}};

                db.PeopleSet.Add(man1);
                db.PeopleSet.Add(man2);


            }


        }
    }
}
