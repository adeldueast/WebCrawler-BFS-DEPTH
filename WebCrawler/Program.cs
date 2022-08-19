using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Text.RegularExpressions;
using HtmlAgilityPack;

namespace WebCrawler
{
    class Program
    {

        // exemple repose : https://departement-info-cem.github.io/3N5-Prog3/docs/Projet1_ResultatsAttendus.pdf
        // root link : https://departement-info-cem.github.io/3N5-Prog3/testbot/index.html


        private static Queue<Page> queue = new Queue<Page>();
        private static HashSet<Page> visitedWebsite = new HashSet<Page>();

        private static List<string> emails = new List<string>();
        private static HtmlWeb web = new HtmlWeb();

        static void Main(string[] args)
        {


            //TODO: Make a function to execute all follow verification to make the code cleaner.
            // Directory.CreateDirectory(args[2]);
            if (args.Length != 3)
            {
                Console.WriteLine("Veuillez entrer 3 arguments");
                MessageHelp();
            }
            else
            {
                if (!firstValidation(args[0]))
                {
                    Console.WriteLine("Veuillez entrer un nombre entier valide en premier paramètre !");
                    MessageHelp();



                }
                else if (!secondValidation(args[1]))
                {
                    Console.WriteLine("Veuillez entrer un url valide !");
                    MessageHelp();


                }
                else if (!thirdValidation(args[2]))
                {
                    Console.WriteLine("Le répertoire où écrire les copies locales des fichiers explorés n'existe pas ! Veuillez le créer svp.");
                    MessageHelp();


                }
                else
                {
                    MessageValidation();
                    Page intialPage = new Page(args[1], Int32.Parse(args[0]));
                    discoverWeb(intialPage, args[2]);

                }

            }



            Console.Read();
        }



        // Main functions
        private static void discoverWeb(Page rootURL, string Path)
        {
            Page currentePage = null;



            queue.Enqueue(rootURL);
            visitedWebsite.Add(rootURL);

            while (queue.Count > 0)
            {
                try
                {

                    currentePage = queue.Dequeue();

                    // get the name of the file in advance. ex  https://departement-info-cem.github.io/3N5-Prog3/testbot/index.html  ==>  index.html
                    string fileName = getNameOfFile(currentePage);



                    // connect to url
                    var htmlDoc = web.Load(currentePage.url);
                    Console.WriteLine($"Exploration de  >>  {currentePage.url}");


                    // exctract emails of given html body , replace all emails by correc@ti.con 
                    // and return that new modified html body text with email replaced by correc@ti.con
                    // to indcate that email was found at that place
                    var textModified = ExtractAndReplaceEmailsInText(htmlDoc.Text, emails);




                    //creer un fichier et ecrit le body du loaded seulement si le nom du fichier  n'est pas vide. 
                    //create a file and writes the loaded body only if name of the filename isnt empty ( could use stringIsNullOrEmpty(fileName)
                    string full_path = ($"{Path}/{fileName}");
                    if (!string.IsNullOrEmpty(fileName)) using (StreamWriter objFichierAEcrire = new StreamWriter(full_path)) objFichierAEcrire.Write(textModified);



                    // extract absolute links
                    if (currentePage.depth != 0)
                    {
                        var htmlNodes = htmlDoc.DocumentNode.SelectNodes("//a[@href]");
                        if (htmlNodes != null)
                        {
                            foreach (var node in htmlNodes)
                            {

                                string href = node.Attributes["href"].Value;
                                string absURL = GetAbsoluteUrlString(currentePage.url, href);
                                Page newPage = new Page(absURL, currentePage.depth - 1);


                                // only add if never visited
                                if (!visitedWebsite.Contains(newPage))
                                {
                                    visitedWebsite.Add(newPage);
                                    queue.Enqueue(newPage);
                                }

                            }
                        }

                    }



                }

                catch (Exception e)
                {

                    switch (e.GetType().Name)
                    {


                        case "WebException":
                            //Unaccessible page
                            Console.WriteLine($"Page inaccessible  {currentePage.url}");
                            visitedWebsite.Remove(currentePage);
                            break;
                        case "HtmlWebException":
                            //Mal formed URL
                            Console.WriteLine($"URL mal formé {currentePage.url}");
                            visitedWebsite.Remove(currentePage);
                            break;
                        default:
                            break;
                    }



                }

            }


            MessageResult();



        }

        public static string ExtractAndReplaceEmailsInText(string text, List<string> emails)
        {
            const string MatchEmailPattern =
              @"(([\w-]+\.)+[\w-]+|([a-zA-Z]{1}|[\w-]{2,}))@"
              + @"((([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\."
              + @"([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])){1}|"
              + @"([a-zA-Z]+[\w-]+\.)+[a-zA-Z]{2,4})";

            Regex rx = new Regex(
              MatchEmailPattern,
              RegexOptions.Compiled | RegexOptions.IgnoreCase);
            var newTEXT = Regex.Replace(text, MatchEmailPattern, "correc@ti.con");

            // Find matches.
            MatchCollection matches = rx.Matches(text);

            // Report the number of matches found.
            int noOfMatches = matches.Count;

            // Report on each match.
            foreach (Match match in matches)
            {
                if (!emails.Contains(match.Value))
                {
                    emails.Add(match.Value.ToString());
                }

            }
            return newTEXT;
        }


        private static string getNameOfFile(Page URL)
        {
            string name = URL.url.Split('/')[URL.url.Split('/').Length - 1];
            return name;


        }
        private static string GetAbsoluteUrlString(string baseUrl, string url)
        {
            var uri = new Uri(url, UriKind.RelativeOrAbsolute);
            if (!uri.IsAbsoluteUri)
                uri = new Uri(new Uri(baseUrl), uri);
            return uri.ToString();
        }

        // validation 
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

            Uri uriResult;
            if (Uri.TryCreate(link, UriKind.Absolute, out uriResult)
                && (uriResult.Scheme == Uri.UriSchemeHttp || uriResult.Scheme == Uri.UriSchemeHttps))
            {
                return true;
            }

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


        // Message
        private static void MessageHelp()
        {


            Console.WriteLine("- Une profondeur d'exploration qui doit être un nombre entier positif.");
            Console.WriteLine("- Un URL de départ qui est la première page à explorer. Il doit s'agir d'une adresse valide (le format est correct et il y a une page qui y correspond).");
            Console.WriteLine("- Un répertoire où écrire les copies locales des fichiers explorés..");
        }
        private static void MessageValidation()
        {

            Console.WriteLine("Bonjour Adel Kouaou");
            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine("Tout va bien, explorons ");
            Console.WriteLine();
        }

        private static void MessageResult()
        {
            emails.Sort();
            Console.WriteLine();
            Console.WriteLine();
            //Number of explored pages
            Console.WriteLine($"Nombre de pages explorées : {visitedWebsite.Count}");
            //Number of extracted emails (ordered asc)
            Console.WriteLine($"Nombre de courriels extraits (en ordre alphabétique) : {emails.Count}");
            foreach (var email in emails)
            {
                Console.WriteLine($"\t{email}");

            }



        }


    }
}
