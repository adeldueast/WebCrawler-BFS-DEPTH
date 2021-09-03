using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
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


        static Page page_initiale = new Page("https://departement-info-cem.github.io/3N5-Prog3/testbot/index.html", 1);

      

        static void Main(string[] args)
        {

          

            if (args.Length != 3)
            {
                Console.WriteLine("Veuillez entrer 3 arguments");
                Console.WriteLine("- Une profondeur d'exploration qui doit être un nombre entier positif.");
                Console.WriteLine("- Un URL de départ qui est la première page à explorer. Il doit s'agir d'une adresse valide (le format est correct et il y a une page qui y correspond).");
                Console.WriteLine("- Un répertoire où écrire les copies locales des fichiers explorés..");

            }
            else
            {
                if (!firstValidation(args[0]))
                {
                    Console.WriteLine("Veuillez entrer un nombre entier valide en premier paramètre !");
                  
                    
                    
                }
                else if (!secondValidation(args[1]))
                {
                    Console.WriteLine("Veuillez entrer un url valide !");

                }
                else if (!thirdValidation(args[2]))
                {
                    Console.WriteLine("Le répertoire où écrire les copies locales des fichiers explorés n'existe pas ! Veuillez le créer svp.");

                }
                else
                {
                    Page page_init = new Page(args[1], Int32.Parse(args[0]));
                    discoverWeb(page_initiale);

                }

            }

           



            Console.ReadKey();
        }



        private static bool firstValidation(string depth)
        {

            if (int.TryParse(depth, out _))
            {
                return true;
            }
            return false;

        }


        private static bool secondValidation(string link)
        {

            if (Uri.IsWellFormedUriString(link, UriKind.Absolute)) return true;


            return false;

        }

        private static bool thirdValidation(string path)
        {
          

            if (Directory.Exists(path))
            {
                return true;
            }

            return false;

        }

        private static void MessageAfterValidation()
        {

            Console.WriteLine("Bonjour Adel Kouaou");
            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine("Tout va bien, explorons ");
            Console.WriteLine();
        }

        private static void discoverWeb(Page root)
        {

            MessageAfterValidation();

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
                    if (pageCourante.depth != 0)
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


        private static string GetAbsoluteUrlString(string baseUrl, string url)
        {
            var uri = new Uri(url, UriKind.RelativeOrAbsolute);
            if (!uri.IsAbsoluteUri)
                uri = new Uri(new Uri(baseUrl), uri);
            return uri.ToString();
        }
    }
}
