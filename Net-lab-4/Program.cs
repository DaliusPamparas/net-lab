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
            students.Add("Jonas", 40);
            students.Add("Emilija", 30);
            students.Add("Petra", 20);
            students.Add("EmilijaA", 30);
            students.Add("PetraV", 20);
            students.Add("EmilijaJ", 30);
            students.Add("Anna", 20);

            //create other dictionary and add to first
            //Dictionary<string, int> students2 = new Dictionary<string, int>();
            //students.Add("JonasA", 50);
            //students.Add("EmilijaB", 20);
            //students.Add("PetraC", 30);

            //print dictionary
            foreach (KeyValuePair<string,int> item in students)
            {
                Console.WriteLine(item.Key + "                " + item.Value);
            }



            Console.ReadLine();


        }
    }
}
