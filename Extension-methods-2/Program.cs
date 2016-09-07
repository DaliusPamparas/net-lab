using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Reflection;
using System.Collections;

namespace Extension_methods_2
{
    class Program
    {
        static void Main(string[] args)
        {

            List<Person> personList = new List<Person>()
            {
                new Person("Jonas", "Johanson", 33, "33 Gatan Helsingborg"),
                new Person("Anders", "Johanson", 33, "33 Gatan Helsingborg"),
                new Person("Janet", "Johanson", 33, "33 Gatan Helsingborg"),
                new Person("Anton", "Johanson", 33, "33 Gatan Helsingborg"),
                new Person("Anders", "Johanson", 33, "33 Gatan Helsingborg"),


            };

            Console.WriteLine("Write name:");
            string personName = Console.ReadLine();

            Person result = personList.SearchPerson(personName);
            if(result == null)
            {
                Console.WriteLine("Hittade inte person");
            }
            else
            {
                Console.WriteLine($"{result.fName}      {result.lName}");
            }
              Console.WriteLine();
            Console.ReadKey();

        }
    }
    class Person
    {
        public string fName;
        public string lName;
        public int old;
        public string address;

        public Person( string fName, string lName, int old, string address)
        {
            this.fName = fName;
            this.lName = lName;
            this.old = old;
            this.address = address;

        }
    }

    static class ExtentionPerson
    {
        public static Person SearchPerson(this List<Person> personList, string personName)
        {
            
            for(int i=0; personList.Count > i; i++)
            {
                if (personList[i].fName == personName)
                {

                    return personList[i];
                 }
            }
            return null;
           
            
        }
    }
}
