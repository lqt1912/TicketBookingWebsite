using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace MovieTheater1.Models
{
	public class MaHoa
	{
		public static string EncryptMD5(string str)
		{
			MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();

			byte[] bHash = System.Text.Encoding.UTF8.GetBytes(str);
			bHash = md5.ComputeHash(bHash);

			StringBuilder sbHash = new StringBuilder();

			foreach (byte b in bHash)
			{

				sbHash.Append(b.ToString("x").ToLower());

			}
			return sbHash.ToString();

		}

		public static string Base64Encode(string plainText)
		{
			var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(plainText);
			return System.Convert.ToBase64String(plainTextBytes);
		}


		public static string Base64Decode(string base64EncodedData)
		{
			var base64EncodedBytes = System.Convert.FromBase64String(base64EncodedData);
			return System.Text.Encoding.UTF8.GetString(base64EncodedBytes);
		}
	}
}