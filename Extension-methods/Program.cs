using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Reflection;

namespace Extension_methods
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Extention methods");
           string myInt = "12345";
           
            Console.WriteLine( myInt.ReverseString());
            Console.ReadKey();
        }
        
    }
    static class MyExtentions
    {
        public static string ReverseString(this string i)
        {
            char[] digits = i.ToCharArray();
            Array.Reverse(digits);
            string newDigits = new string(digits);
            return newDigits;

        }
    }
}
