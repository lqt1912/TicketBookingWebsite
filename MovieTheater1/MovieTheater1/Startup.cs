using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(MovieTheater1.Startup))]
namespace MovieTheater1
{
	public partial class Startup
	{
		public void Configuration(IAppBuilder app)
		{
			ConfigureAuth(app);
		}
	}
}