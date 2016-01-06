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
#Creating A Bundle
The Bundle Class Include method takes an array of strings, where each string is a virtual path to its resource.

The following code from the RegisterBundles method in App_Start\BundleConfig.cs file shows how multiple files are added to a bundle

```
bundles.Add
(
	new StyleBundle
	(
		"~/Content/theme.base/css"
	)
	.Include
	(
		"~/Content/theme/base/jquery.ui.core.css",
		....,
		....,
	)
);
```

The BundleClass IncludeDirectory Method is provided to add all the files in a directory (and optionally all the subdirectories) which matches a search pattern.

The Bundle Class IncludeDirectory API is shown Below:

```
public Bundle IncludeDirectory
(
	string directoryVirtualPath, // the Virtual path for the Directory 

	string searchPattern ) //the Search pattern


public Bundle IncludeDirectory
(
	string directoryVirtualPath,
	string searchPattern,
	bool search SubDirectories
)

```

# Bundle Rendering

Bundles are referenced in views using the Render Method

`Styles.Render` for CSS
`Scripts.Render` for JavaScript

The Following Markup from the **Views\Shared\_Layout.cshtml** shows how the default ASP.NET internet project views reference CSS and JavaScript Bundles

```
<!DOCTYPE html>
<html>
	<head>
		@* Markup removed for Clarity *@
		@Styles.Render("~/Content/css", "~Content/theme/base/css");
		@Scripts.Render("~/bundles/modernizr");

	</head>

	<body>
		@*Markup removed for clarity*@

		@Scritps.Render("~/bundles/jquery")
		@RenderSection("scripts", required:false)

	</body>

</html>
```
