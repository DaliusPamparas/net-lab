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

            int rnd;
            for(int i=1; i<1000; i++)
            {
                rnd = rndNumber.Next(1, 6);
                if( diceSpel.ContainsValue(rnd))
                    {
                      
                   }

            }

        }
    }
}
