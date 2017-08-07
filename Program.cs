using System;

namespace dotnetcore_try
{
    class Program
    {
        static void Main(string[] args)
        {
            var a = 10;
            var b = a * 2;
            Console.WriteLine("Hello World! " + b.ToString());
            while (true) {
                Console.WriteLine(DateTime.Now);
                System.Threading.Thread.Sleep(3000);
            }
        }
    }
}
