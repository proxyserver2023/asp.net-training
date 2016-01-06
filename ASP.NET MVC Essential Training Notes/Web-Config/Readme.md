#ASP.NET Web Config 

Table of Contents
1. Web.config sections/settings
2. Reading Web.config
3. Writing or manipulating Web.config
4. Encrypting the Web.config 
5. Creating your own custom configuration Sections


##Web.Config 
Important Notes to be remembered\
- Web.config files are stored in XML format which makes us easier to work with
- you may have any number of web.config files for an application. 
- Each Web.config file applies settings to its own directory and all the child directories below it
- All the Web.config files inherit the root Web.config file available at the following location `systemroot\Microsoft.NET\Framework\versionNumber\CONFIG\Web.config`
- IIS is configured in such a way that it prevents the `Web.config` file access from the browser
- The Changes in `web.config` don't require the reboot of the Web Server

##Web Config Settings

```
<configuration>
  <configSections>
  </configSections>
  
  <system.web>
  </system.web>
  
  <connectionStrings>
  </connectionStrings>
  
  <appSettings>
  </appSettings>
  
  ..................................
  ..................................
  ..................................
  
</configuration>

```

## System.Web 
the most common is `system.web` 

###Compilation Settings

```
<system.web>
  <compilation
    debug = "true"
    strict = "true"
    explicit = "true"
    batch = "true"
    optimizeCompilations="true"
    batchTimeout="900"
    maxBatchSize="1000"
    maxBatchGeneratedFileSize="1000"
    numRecompilesBeforeRestart="15"
    defaultLanguage = "C#"
    targetFramework = "4.0"
    assemblyPostProcessorType=""
  >
    <assemblies>
      <add 
        assembly = "System, Version = 1.0.5000.0, Culture=neutral, PublicKeyToken=b77a5c561334e089"
      />
    </assemblies>
  </compilation>
</system.web>

```

In order to get the public key token of the assembly. follow the steps:

1. Go to Visual Studio open the vs command prompt
2. change the dir location to the location where the assembly or .dll exists
3. sn -T itextsharp.dll
4. it generates public key token of the assembly.
5. it is generated only for the assemblies which are strongly signed


### Page Settings

An ASP.NET application consists of several numbers of pages, we can set the general settings of a page like 
`sessionstate, viewstate,buffer` etc as shown below

```
<pages 

  buffer = "true" 
  stylesheetTheme = ""
  theme = "Aqua"
  masterPageFile="MasterPage.master"
  enableEventValidation = "true"
  
>            
```

### Custom Error Settings

```

<customErrors
  defaultRedirect = "Error.aspx"
  mode = "Off"
>
  <error 
    statusCode = "401"
    redirect = "Unauthorized.aspx"
  />
</customErrors>

```

The `CustomErrors` Section consists of `defaultRedirect` and `mode` attributes which specify the default redirect page and on/off mode respectively

The Subsection of customErrors section allows redirecting to specified page depending on the error status code

- 400 Bad Request
- 401 Unauthorized
- 404 Not Found
- 408 Request Timeout


