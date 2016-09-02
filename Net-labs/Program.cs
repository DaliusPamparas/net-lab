
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
            List<int> minList = new List<int>();
            minList.Add(7);
            minList.Add(15);
            minList.Add(25);
            List<int> andraList = new List<int>() { 1, 2, 3, 4, 5, 6 };
            minList.AddRange(andraList);
            var i = 0;
            foreach (int number in minList)
            {

                Console.WriteLine(i + "   " + number.ToString());
                i++;
            }
            if (minList.Contains(7))
            {
                Console.WriteLine("List har värde 7");
            }



            Console.ReadKey();

        }
    }
}

