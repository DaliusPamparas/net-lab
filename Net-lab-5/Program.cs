using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Net_lab_5
{
    class Program
    {
        static void Main(string[] args)
        {
            //create random and dictionary
            Random rndNumber = new Random();
            Dictionary<int, int> diceSpel = new Dictionary<int, int>();
            diceSpel.Add(1, 0);
            diceSpel.Add(2, 0);
            diceSpel.Add(3, 0);
            diceSpel.Add(4, 0);
            diceSpel.Add(5, 0);
            diceSpel.Add(6, 0);

            int rnd;
            for(int i=1; i<1000; i++)
            {
                rnd = rndNumber.Next(1, 7);
               diceSpel[rnd] = diceSpel[rnd] + rnd;
              

            }
            foreach (KeyValuePair<int, int> item in diceSpel)
            {
                Console.WriteLine(item.Key + "                " + item.Value);
            }
            Console.ReadKey();
        }
    }
}
