
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
             minList.Add(25);
             minList.Add(7);
            minList.Add(25);
            minList.Add(15);
            minList.Add(15);
            minList.Add(2);
            minList.Add(9);

            //creating other list
            //adding other list to first via .AddRange
            List<int> andraList = new List<int>() { 1, 2, 3, 4, 5, 6 };
            minList.AddRange(andraList);

           

            //check does values included to list and print resultat
            if (minList.Contains(7))
            {
                Console.WriteLine("List have value 7");
            }

           //2way to doit

            Console.WriteLine(minList.Contains(33) ?"list contains number 33 " : "list does not contains number 33");

            //sort first and then remove dublicates values
            minList.Sort();
            for (int j=0; minList.Count > j; j++)
            {
                if (minList[j] == minList[j+1])
                {
                    minList.RemoveAt(j);
                }
            }
            //print sorted list
            for(int j=0; minList.Count > j; j++)
            {
                Console.WriteLine(j+"    "+ minList[j]);
            }

            //remove number at position 3
            minList.RemoveAt(2);

            Console.WriteLine("\n \n" );
            ////print sorted list to test
            //for (int j = 0; minList.Count > j; j++)
            //{
            //    Console.WriteLine(j + "    " + minList[j]);
            //}

            //print list with foreatch

          
            var i = 0;
            foreach (int number in minList)
            {

                Console.WriteLine(i + "     " + number.ToString());
                i++;
            }

            //reverse values in list
            minList.Reverse();

            //print biggest value
            Console.WriteLine("\n Biggest value - " + minList.Max());

            //print sum of list
            Console.WriteLine("\n Sum of list is - " + minList.Sum());
           

        

            Console.ReadKey();

        }
    }
}

