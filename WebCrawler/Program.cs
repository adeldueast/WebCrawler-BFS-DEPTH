using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HtmlAgilityPack;

namespace WebCrawler
{
    class Program
    {

        // exemple repose : https://departement-info-cem.github.io/3N5-Prog3/docs/Projet1_ResultatsAttendus.pdf
        // root link : https://departement-info-cem.github.io/3N5-Prog3/testbot/index.html


        private static Queue<Page> queue = new Queue<Page>();
        private static HashSet<Page> visitedWebsite = new HashSet<Page>();

      
        static Page page_initiale = new Page("https://departement-info-cem.github.io/3N5-Prog3/testbot/index.html" , 1  );

        static void Main(string[] args)
        {

            Console.WriteLine($"-------------------------------------------------------------------------");
            discoverWeb(page_initiale);
            Console.WriteLine($"-------------------------------------------------------------------------");

            Console.ReadKey();
        }


        private static void discoverWeb(Page root)
        {

            try
            {
                queue.Enqueue(root);
                visitedWebsite.Add(root);


                while (queue.Count > 0)
                {
                    Page pageCourante = queue.Dequeue();

                    // connect to url
                    HtmlWeb web = new HtmlWeb();
                    var htmlDoc = web.Load(pageCourante.url);

                    Console.WriteLine($"Exploration de  >>  {pageCourante.url}");


                    // exctract emails..
                    ////



                    // extract absolute links
                    if (pageCourante.depth!=0)
                    {
                        var htmlNodes = htmlDoc.DocumentNode.SelectNodes("//a[@href]");
                        foreach (var node in htmlNodes)
                        {

                            string href = node.Attributes["href"].Value;
                            string absURL = GetAbsoluteUrlString(pageCourante.url, href);
                            Page new_lien = new Page(absURL, pageCourante.depth - 1);


                            // only add if never visited
                            if (!visitedWebsite.Contains(new_lien))
                            {
                                visitedWebsite.Add(new_lien);
                                queue.Enqueue(new_lien);
                            }

                        }
                    }
                   


                }

            }
            catch (Exception e)
            {


                Console.WriteLine(e.Message);

            }


        }



        static string GetAbsoluteUrlString(string baseUrl, string url)
        {
            var uri = new Uri(url, UriKind.RelativeOrAbsolute);
            if (!uri.IsAbsoluteUri)
                uri = new Uri(new Uri(baseUrl), uri);
            return uri.ToString();
        }
    }
}
