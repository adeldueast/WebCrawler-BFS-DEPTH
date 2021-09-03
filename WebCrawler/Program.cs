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
        private static Queue<string> queue = new Queue<string>();
        private static HashSet<String> visitedWebsite = new HashSet<String>();
        static string baseURL = "https://departement-info-cem.github.io/3N5-Prog3/testbot/index.html";



        static void Main(string[] args)
        {
            discoverWeb(baseURL);

        }


        private static void discoverWeb(String root)
        {

            try
            {
                queue.Enqueue(root);
                visitedWebsite.Add(root);


                while (queue.Count > 0)
                {
                    string v = queue.Dequeue();

                    // connect to url
                    HtmlWeb web = new HtmlWeb();
                    var htmlDoc = web.Load(v);

                    Debug.WriteLine($"Exploration de  >>  {v}");

                    // extract absolute links
                    var htmlNodes = htmlDoc.DocumentNode.SelectNodes("//a[@href]");
                    foreach (var n in htmlNodes)
                    {

                        string href = n.Attributes["href"].Value;
                        string absURL = GetAbsoluteUrlString(baseURL, href);

                        // only add if never visited
                        if (!visitedWebsite.Contains(absURL))
                        {
                            visitedWebsite.Add(absURL);
                            queue.Enqueue(absURL);
                        }

                    }


                }

            }
            catch (Exception e)
            {


                Debug.WriteLine(e.Message);

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
