using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using MovieTheater1.Models;

namespace DataQueryTesting
{
	class main
	{
		static void Main()
		{
			//Console.OutputEncoding = Encoding.UTF8;
			//var db = DataAccess.getEntities();
			//var now = DateTime.Now;
			//var result2 = db.PHIMs.SqlQuery("SELECT top 6 * FROM PHIM Where CURRENT_TIMESTAMP <= THOIGIANKT ORDER BY  CURRENT_TIMESTAMP - THOIGIANBD").ToList();
			//foreach (var item in result2 )
			//{
			//	Console.Write(item.TENPHIM + " " + item.MAPHIM + " " + item.QUOCGIA.TENQUOCGIA + "\n");
			//}

			//Console.Read();
			Console.WriteLine("Enter a string having '&', '<', '>' or '\"' in it: ");
			string myString = Console.ReadLine();

			// Encode the string.
			string myEncodedString = HttpUtility.HtmlEncode(myString);

			Console.WriteLine($"HTML Encoded string is: {myEncodedString}");
			StringWriter myWriter = new StringWriter();

			// Decode the encoded string.
			HttpUtility.HtmlDecode(myEncodedString, myWriter);

			string myDecodedString = myWriter.ToString();
			Console.Write($"Decoded string of the above encoded string is: {myDecodedString}");

			Console.Read();
		}
	}
}
