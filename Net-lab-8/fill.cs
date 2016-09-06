using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Net_lab_8
{
    class Fill
    {
        //private static int i;
        public static void FillCollection(List<int> myCollection)
        {
            Random ran = new Random();
            for( int i=0; i < 200; i++)
            {
                int tal = ran.Next(1, 1000);
                while(myCollection.Contains(tal))
                {
                    tal = ran.Next(1, 1000);

                }
                myCollection.Add(tal);
            }
        } 
    }
}
