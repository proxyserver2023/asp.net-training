#Bundling And Minification

In Currnet Browser Most Number of simultaneous connections per each hostname to six.

additional requests for assets on a host will be queued by the browser. 

```

using System.Web;
using System.Web.Optimization;

namespace MyCustomNamespace
{
	public class BundleConfig
	{
		bundles
		.Add(new ScriptBundle("~/bundles/jquery").Include(~/Scripts/jquery-{version}.js));

		bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include("~/Scripts/jquery.validate*"));

	}
}

```

```
public static void RegisterBundles(BundleCollection bundles)
{
	bundles.Add(new ScriptBundle("~/bundles/jquery").Include("~/Scripts/jquery-{version}.js"));
}

```

The Preceeding Code creates a new JavaScript Bundle named ~/bundles/jquery that includes all the Appropriate that is debug or minified but not .vsdoc files in the **Scripts** folder that match the the String **"~/Scripts/jquery-{version}.js"**

his means with a  debug configuration, the file jquery-1.7.1.js will be added to the bundle. In a release configuration,  jquery-1.7.1.min.js will be added. The bundling framework follows several common conventions such as:

Selecting “.min” file for release when “FileX.min.js” and “FileX.js” exist.
Selecting the non “.min” version for debug.
Ignoring “-vsdoc” files (such as jquery-1.7.1-vsdoc.js), which are used only by IntelliSense.

# BundleCollection Class

#### Syntax

```
public class BundleCollection : IEnumerable<Bundle>, IEnumerable
```


# Use A CDN 

```
public static void RegisterBundles(BundleCollection bundles)
{
	// bundles.Add(new ScriptBundle("~bundles/jquery").Include("~/Scripts/jquery-{version}.js"));
	//

	bundles.UseCdn = true; // enable cdn Support

	// add link to jquery on the CDN
	var jqueryCDNpath = "...";

	bundles.Add(new ScriptBundle("~/bundles/jquery", jqueryCDNPath).Include("~/Scripts/jquery-{version}.js"));

	// Code Removed for clarity.

}


```
In the code above

- Jquery will be requested from the CDN while in release mode 
- the Debug Version of Jquery will be fetched locally in debug mode. 
- When Using CDN you should use a **fallback** Mechanism in case CDN request fails.


** The following markup fragment from the end of the layout file shows script added to request jQuery should the CDN fail

```
@Scripts.Render("~/bundles/jquery")

<script type = "text/javascript">
	if(typeof jQuery == 'undefined')
	{
		var e = document.createElement('script');
		e.src = '@Url.Content("~/Scripts/jquery-1.7.1.js")';
		e.type = "text/javascript";
		document.getElementsByTagName("head")[0].appendChild(e);
			}
</script>

@RenderSection("scripts", required : false)
```
