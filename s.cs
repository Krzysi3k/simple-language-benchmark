using System;
using System.Diagnostics;

namespace benchmarks
{
    class Program
    {
        static void Main(string[] args)
        {
            Stopwatch stopwatch = new Stopwatch();
            stopwatch.Start();
            for (int i = 1; i < 10001; i++)
            {
                Silnia(15);
                for (int x = 1; x < 10001; x++)
                {
                    if(x == 9876)
                        break;
                }
            }
            stopwatch.Stop();
            long elapsed = stopwatch.ElapsedMilliseconds;
            System.Console.WriteLine($"finished in: {elapsed} ms");
        }

        public static int Silnia(int n)
        {
            if (n > 1)
            {
                int result = Silnia(n-1);
                return result * n;
            }
            return 1;
        }
    }
}
