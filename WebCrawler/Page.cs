using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebCrawler
{
    class Page : IEquatable<Page>
    {
        public string url { get; set; }
        public int depth { get; set; }



        public Page(string url, int depth)
        {
            this.url = url;
            this.depth = depth;
        }

      

        public bool Equals(Page other)
        {
            return other != null &&
                   url == other.url;
        }



        public override int GetHashCode()
        {
            return 1227826894 + EqualityComparer<string>.Default.GetHashCode(url);
        }
    }
}
