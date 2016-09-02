
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace net_labs
{
    class Program
    {
        static void Main(string[] args)
        {
            //creating list
            //adding values
            List<int> minList = new List<int>();
            minList.Add(7);
            minList.Add(15);
            minList.Add(25);
            //creating other list
            //adding other list to first via .AddRange
            List<int> andraList = new List<int>() { 1, 2, 3, 4, 5, 6 };
            minList.AddRange(andraList);

            //print list
            var i = 0;
            foreach (int number in minList)
            {

                Console.WriteLine(i + "   " + number.ToString());
                i++;
            }

            //check does values included to list and print resusltat
            if (minList.Contains(7))
            {
                Console.WriteLine("List har värde 7");
            }

           

            Console.WriteLine(minList.Contains(33) ?"list contains number 33 " : "list does not contains number 33");


            Console.ReadKey();

        }
    }
}

