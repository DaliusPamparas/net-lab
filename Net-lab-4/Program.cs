using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Net_lab_4
{
    class Program
    {
        static void Main(string[] args)
        {
            //lab4
            //create ditionary and add values
            Dictionary<string, int> students = new Dictionary<string, int>();
            students.Add("Jonas", 4);
            students.Add("Emilija", 3);
            students.Add("Petra", 2);

            //create other dictionary and add to first
            Dictionary<string, int> students2 = new Dictionary<string, int>();
            students.Add("JonasA", 5);
            students.Add("EmilijaB", 2);
            students.Add("PetraC", 3);


            //
          
            Console.ReadLine();


        }
    }
}
