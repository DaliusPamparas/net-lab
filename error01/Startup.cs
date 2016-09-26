using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(error01.Startup))]
namespace error01
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
