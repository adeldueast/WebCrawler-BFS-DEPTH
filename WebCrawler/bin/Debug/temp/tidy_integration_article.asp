<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- #BeginTemplate "../../article.dwt" -->
<head>
  <meta http-equiv="Content-Language" content="en-us" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

  <!-- #BeginEditable "Pagetitle" -->
  <title>Article: Integrating HTML Tidy into Microsoft FrontPage</title>
  <!-- #EndEditable -->

  <!-- #BeginEditable "Metatags" -->
  <meta name="author" content="Michael Suodenjoki" />
  <meta name="description" content="This article describes how you can integrate HTML Tidy into FrontPage thus improving the quality of the generated HTML code." />
  <meta name="keywords"  content="programming,article,HTML,XHTML,XML,HTML Tidy,tidy,clean,tidying,cleaning,FrontPage,editor,VBA,validator,validation" />
  <meta name="robots" content="index,follow" />
  <!-- #EndEditable -->

  <!--webbot bot="Include" U-Include="../../../includes/styles.html"  tag="head" startspan-->
  <link rel="stylesheet" type="text/css" title="Default" media="all"    href="../../../styles/new2011.css" />
  <link rel="stylesheet" type="text/css"                 media="screen" href="../../../styles/slimbox.css" />
  <!--[if lte IE 8.0]>
  <link rel="stylesheet" type="text/css" title="Default" media="all"    href="../../../styles/ie8.css" />
  <![endif]-->
<!--webbot bot="Include" endspan i-checksum="57929" --><!-- #BeginEditable "Extrastyle" --><!-- Extra styles goes here --><!-- #EndEditable --><!--webbot bot="Include" U-Include="../../../includes/scripts.html" tag="head" startspan-->
  <script type="text/javascript" src="../../../includes/jquery/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" src="../../../includes/jquery/jquery.lazyload.min.js"></script>
  <script type="text/javascript" src="../../../includes/jquery/lite-youtube-min.js"></script>
  <script type="text/javascript" src="../../../includes/imgcaption.js"></script>
  <script type="text/javascript" src="../../../includes/sorttable.js"></script>
  <script type="text/javascript" src="../../../includes/slimbox2/slimbox2.js"></script>
  <script type="text/javascript" src="../../../includes/binaryajax.js"></script>
  <script type="text/javascript" src="../../../includes/exif.js"></script>
  <script type="text/javascript" src="../../../includes/beautyofcode/jquery.beautyOfCode.js"></script>
  <script type="text/javascript" src="../../../includes/onload.js"></script>
  <script type="text/javascript" src="../../../includes/fixvideo.js"></script>
 
<!--webbot bot="Include" endspan i-checksum="8989" --><!-- #BeginEditable "Scripts" --><!-- Extra script goes here --><!-- #EndEditable --></head><body><!--webbot bot="Include" U-Include="../../includes/header.htm" startspan -->
  <div id="maincontents">

    <div id="submain">
      <div id="logo">
        <div id="bottomleft"><img id="logoimg" src="../../../images/logoimg.jpg" title="suodenjoki.dk" alt="suodenjoki.dk - website logo" width="62" height="130"/>
          <div id="sitename">Suodenjoki</div>
          <div id="sitetag"><span id="quote">â</span>Just Do It</div>
        </div>
        <a href="../../index.htm"></a>
      </div>
  
      
  <div id="infobar">
    <div id="infobar_top">
      <a href="../../information/about_michael_suodenjoki.htm" title="About Michael Suodenjoki (Webmaster)">about</a> | 
      <a href="../../information/about_suodenjoki.htm" title="About the family name suodenjoki">suodenjoki</a> | 
      <a href="../../contact.htm" title="Contact Michael Suodenjoki">contact</a>
    </div>
    <form id="search" action="http://www.google.com/custom" method="get">
      <div id="infobar_bottom">
        <input id="search-text" type="text" name="q" size="21" maxlength="255" value="Search..."/>
        <!--<input type="submit" value="Search" name="sa"/>-->
        <input type="hidden" name="ie" value="UTF-8"/>
        <input type="hidden" name="oe" value="UTF-8"/>
        <input type="hidden" name="cof" value="AH:left;S:http://www.suodenjoki.dk;AWFID:4f0bf0c012e057e7;"/>
        <input type="hidden" name="domains" value="suodenjoki.dk"/>
        <input type="hidden" name="sitesearch" value="suodenjoki.dk"/>
      </div>  
    </form>
  </div>

  
      <div id="sitedesc">
        <p>I'm <a href="../../information/about_michael_suodenjoki.htm">Michael Suodenjoki</a> - a software engineer living in Kgs. Lyngby, north of Copenhagen, Denmark. 
           This is my personal site containing my blog, photos, articles and main interests.</p>
      </div>

      <div class="menu">
        <ul class="noprint">
    
          <li><a href="../../blog.htm">Blog</a></li>
          
          <li><a href="../../interests/digitalcamera.htm">Photo</a><ul>
            <li><a href="../photogallery/photogalleries.htm">Gallery</a></li>
            <li><a href="../../interests/digitalcamera.htm">My Equipment</a></li>
            <li><a href="photo_gallery.htm">Article: Photo Gallery</a></li>
            <li><a href="addcaption.htm">Article: Auto Caption</a></li>
            <li><a href="raw_thumbnail.htm">Article: Camera Raw Preview</a></li>
          </ul></li>
          
          <li><a href="#" title="My articles">Articles</a><ul>
            <li><a href="word2pdf.htm">Word to PDF in VBScript</a></li>
            <li><a href="xp_folder_icon.htm">Creating Windows XP Icons</a></li>
            <li><a href="cmdprompt.htm">Command Prompt in Explorer</a></li>
            <li><a href="vbashellexecute.htm">Using ShellExecute</a></li>
            <li><a href="dragdroptab.htm">Drag &#39;n Drop Tab Order</a></li>
            <li><a href="validation_article.htm">Validation in FrontPage</a></li>
            <li><a href="tidy_integration_article.htm">HTML Tidy in FrontPage</a></li>
            <li><a href="../../productions.htm">... all articles</a></li>
          </ul></li>
          
          <li><a href="#">Other</a><ul>
            <li><a href="../../interests/puzzles.htm">Puzzles</a></li>
            <!--<li><a href="../interests/pcgames.htm">PC-games</a></li>-->
            <li><a href="../../interests/gourmet.htm">Gourmet (recipes)</a></li>
            <li><a href="localization.htm">Internationalization</a></li>
            <li><a href="../../backpage/oxymorons.htm">Oxymyrons</a></li>
          </ul></li>
          
          <li><a href="../../archive/overview.htm" title="Archived news">Archive</a><ul>
            <li><a href="../../archive/overview.htm">Overview</a></li>
            <li><a href="../../archive/archive2013.htm">Archive 2013</a></li>
            <li><a href="../../archive/archive2012.htm">Archive 2012</a></li>
            <li><a href="../../archive/archive2011.htm">Archive 2011</a></li>
            <li><a href="../../archive/archive2010.htm">Archive 2010</a></li>
            <li><a href="../../archive/archive2009.htm">Archive 2009</a></li>
            <li><a href="../../archive/archive2008.htm">Archive 2008</a></li>
            <li><a href="../../archive/archive2007.htm">Archive 2007</a></li>
            <li><a href="../../archive/archive2006.htm">Archive 2006</a></li>
            <li><a href="../../archive/archive2005.htm">Archive 2005</a></li>
            <li><a href="../../archive/archive2004.htm">Archive 2004</a></li>
            <li><a href="../../archive/archive2003.htm">Archive 2003</a></li>
            <li><a href="../../archive/archive2002.htm">Archive 2001-2002</a></li>
            <li><a href="../../archive/archive2000.htm">Archive 2000</a></li>
            <li><a href="../../archive/archive1999.htm">Archive 1999</a></li>
          </ul></li>
  
          <li><a href="../../information/about_michael_suodenjoki.htm" title="About">About</a><ul>
            <li><a href="../../information/about_michael_suodenjoki.htm" title="About Michael Suodenjoki">About Michael Suodenjoki</a></li>
            <li><a href="../../information/cv.htm" title="My Curriculum vitae (Resume)">My Curriculum vitae</a></li>
            <li><a href="../../information/about_suodenjoki.htm" title="About the familyname">About the family name</a></li>
          </ul></li>
          
          <li><a href="../../../index.html" title="Vis Dansk webside" class="flag flag-dk"></a></li>
        </ul>
      </div>
    </div>
  </div>
  
<!--webbot bot="Include" endspan i-checksum="62761" -->

  <div id="page">
    <div id="documenttype"><!-- #BeginEditable "ArticleType" -->Article<!-- #EndEditable --></div>
    <h1 class="title"><!-- #BeginEditable "Title" -->Integrating HTML Tidy into Microsoft FrontPage<span class="subhead">
  Improving standard compliance with Frontpage</span><!-- #EndEditable --></h1>
  
    <div id="bul">
      <p class="breadcrumb"><a href="../../index.htm">Start</a> &gt; <!-- #BeginEditable "Breadcrumb" --><a href="../../productions.htm">Productions</a> &gt;
  <a href="../../productions.htm#Articles">Articles</a> &gt; Tidy 
  Integration<!-- #EndEditable --> |&nbsp;</p>
      <p class="updated">Updated <!--webbot bot="Timestamp" S-Type="EDITED" S-Format="%Y.%m.%d %H:%M %Z" startspan -->2011.01.23 17:22 +0100<!--webbot bot="Timestamp" endspan i-checksum="28044" --> |&nbsp;</p>
      <p class="language"><!-- #BeginEditable "Language" -->Ikke tilgÃ¦ngelig pÃ¥ Dansk<!-- #EndEditable --></p>
    </div>
  
    <!-- #BeginEditable "Content" -->

    <p class="author">By Michael Suodenjoki, <a href="mailto:%20michael&#64;suodenjoki.dk">michael&#64;suodenjoki.dk</a>.</p>
    <p class="version">Version 1.8 May 2003.</p>

    <p> 
    <!--webbot bot="PurpleText" PREVIEW="Version 1.8 - 5. May 2003 (Added appendix B. Thomas Price asked to be removed. Previous text has been put into comments. Added FrontPage 2003)
Version 1.7 - 12. August 2002 (after review from AnyFrontPage Bytes magazine)
Version 1.6 - 3. August 2002
Version 1.5 - 2. August 2002
Version 1.4 July 2002
Original version from March 2002." --></p>

    <h2>Abstract</h2>

    <p>This article describes how you can improve the quality of your HTML/XHTML pages by integrating <a href="http://tidy.sourceforge.net/">HTML Tidy</a> into Microsoft FrontPage 2000, 
    2002 (Office XP) or 2003
    (Beta 2 will do).</p>

    <p>Related Article: <a href="validation_article.htm">Integrating Validation into Microsoft FrontPage</a>.</p>
    <p>In this new version 1.8 I&#39;ve added <a href="#Using_TidyATL_DLL">appendix B</a>, containing a preliminary explanation of how to use TidyATL.dll.</p>
    <h2>Feedback</h2>
<dl class="feedback">
  <dt>Thanks for the help to integrate HTML tidy into FrontPage.</dt>
  <dd>Barak Naveh, 2003.12.24</dd>
  <dt>Integrated HTML Tidy (âHTâ) into FP 2003 
  beta 2 this morning and I must first thank you (and your colleagues) for providing such a useful â and free! â utility.</dt>
  <dd>Brian Smith, 2003.11.06</dd>
</dl>

    <div class="requirements">
      <h2>Requirements</h2>

      <p>The code in this article requires:</p>

      <ul>
        <li>Microsoft FrontPage 2000 or newer.</li>

        <li>A copy of HTML Tidy (Win32 executable). Can be downloaded at <a
        href="http://tidy.sourceforge.net/">http://tidy.sourceforge.net/</a>.</li>

        <li>An understanding of HTML, XHTML and Visual Basic for Applications (VBA).</li>
      </ul>
    </div>

    <div class="download">
      <h2>Download Source</h2>

      <p><a href="tidy/tidy_fp.zip">Download the tidy_fp.zip source file for this article</a>.</p>

      <p>The tidy_fp.zip file contains:</p>

      <ul>
        <li>tidy.bas - VBA code.</li>

        <li>form_output.frm - VBA form</li>

        <li>form_output.frx - VBA form</li>

        <li>executecmd.bas - VBA code.</li>

        <li>tidy.cfg - HTML Tidy config file.</li>
      </ul>
    </div>

    <h2>Contents</h2>

    <p><b>1 <a href="#Introduction">Introduction</a></b><br />
     Â Â Â  1.1 <a href="#HTML_Tidy">HTML Tidy</a><br />
     <b>2 <a href="#Lets_tweaking_the_cleaning">Let's tweak the cleaning</a></b><br />
     <b>3 <a href="#Integration_with_FrontPage">Integration with FrontPage</a></b><br />
     Â Â Â  3.1 <a href="#Customizing_the_VBA_code">Customizing the VBA code</a><br />
     Â Â Â  3.2 <a href="#Customizing_the_FrontPage_menu">Customizing the FrontPage menu</a><br />
     <b>4 <a href="#Conclusion">Conclusion</a></b></p>

    <p><b>Appendix A: <a href="#Known_problems">Known problems</a></b><br/>
    <b>Appendix B: <a href="#Using_TidyATL_DLL">Using TidyATL.dll</a></b></p>

    <h2>1 <a id="Introduction" name="Introduction">Introduction</a></h2>

    <p>How often have you written web documents in editors or text processors that simply couldn't produce the underlying web language correctly? You
    may not be aware of it, but most of today&#39;s HTML editors are not very good at producing valid HTML. As a author of web documents, you have an
    interest in authoring your documents so that most of your readers actually can read it in one of the browsers available.</p>

    <p>Most of my pages in my personal homepage are written as XHTML documents. This is the emerging standard for web documents (see <a
    href="http://www.w3.org">www.w3.org</a>). It's an XML-based version of the HTML standard, with some important differences such as:</p>

    <ul>
      <li>Tag and attribute names should be written with lower case letters.</li>

      <li>Tags should be closed, e.g. &lt;br&gt; should be written as &lt;br/&gt; or &lt;br&gt;&lt;/br&gt;.</li>

      <li>All attributes must be quoted, e.g. &lt;a href=""&gt;&lt;/a&gt;.</li>
    </ul>

    <p>For me it is most important that the code is "pretty", commented, and valid with respect to the right standards. This should be true
    whether you have written the code by hand in a regular text editor (like notepad), or generated it via a WYSIWYG editor (like FrontPage).</p>

    <p>This article describes how you can improve the web documents written with the Microsoft FrontPage editor. I will mainly focus on the XHTML
    part. Microsoft FrontPage is just one out of many editors in which you can create web documents or manage/edit entire webs (collections of web
    documents). FrontPage is a fairly decent editor that produces good quality XHTML code, however it's not perfect.</p>

    <h3>1.1 <a id="HTML_Tidy" name="HTML_Tidy">HTML Tidy</a></h3>

    <p>HTML Tidy is a tool that can clean up the underlying code (tags) of your web document. Tidy is an <a href="http://tidy.sourceforge.net/">open
    source project</a> originally written by <a href="http://www.w3.org/People/Raggett/tidy/">Dave Ragget</a>. It's basically a command line tool
    that takes a HTML file and generates a new HTML file with cleaner code. The new HTML file is generated with code based upon a large set of rule 
    and layout preferences that you specify either on the command line or in a configuration file (the preferred method).</p>

    <p>You can download HTML tidy from <a href="http://tidy.sourceforge.net/">http://tidy.sourceforge.net/</a>.</p>

    <h2>2 <a id="Lets_tweaking_the_cleaning" name="Lets_tweaking_the_cleaning">Let's tweak the cleaning</a></h2>

    <p>When you have downloaded HTML Tidy you should take your time to familiarize yourself with it. Try to give it some HTML files as arguments and 
    see what happens. For example you may try the following command line, e.g. giving HTML Tidy the -indent option and your file as argument:</p>

     <pre class="syntax">C:\<i>&lt;path to HTML Tidy&gt;</i>\tidy.exe -indent <i>&lt;your file&gt;</i>.htm</pre>
     <p>You probably already have some preferences how the layout should look like and you may want to try tweaking the many different
    options via an configuration file.</p>

    <p>At the HTML Tidy project page, a <a href="http://tidy.sourceforge.net/docs/quickref.html">quick reference of the options</a> can be found.</p>

    <p>The configuration file is a simple text based file that you can write in e.g. Notepad. My configuration file (tidy.cfg) looks like the
    following:</p>
<pre class="syntax">// Config file for HTML tidy
output-xhtml: yes 
doctype: strict
char-encoding: raw 
tidy-mark: no

markup: yes 
indent: auto
indent-spaces: 2
tab-size: 2
wrap: 120

break-before-br: no
drop-empty-paras: yes

word-2000: yes
clean: no

write-back: yes 
keep-time: yes
</pre>

    <h2>3 <a id="Integration_with_FrontPage" name="Integration_with_FrontPage">Integration with FrontPage</a></h2>

    <p>Microsoft FrontPage, version 2000 or newer, supports Visual Basic<sup>Â®</sup> for Applications that we can utilize for integrating HTML Tidy into the
    menu system. A simple menu activation will clean/tidy your web document.</p>

    <p>First <a href="tidy/tidy_fp.zip">download the zip file</a> with the source code files and unzip it to a folder e.g. to  C:\Program 
    Files\Validator.</p>

    <p>I have made two Visual Basic files available that  wrap the call to HTML Tidy within VBA. The code is based on code originally
    written by Christoph Schneegans. See <a
    href="http://www.schneegans.de/frontpage-vba/tidy.html">http://www.schneegans.de/frontpage-vba/tidy.html</a> for details (in German though).</p>

    <ul>
      <li><i>ExecuteCmd.bas</i>, which wraps calls to the CreateProcess Windows API function. This is used to execute a command line (like calling
      HTML Tidy).</li>

      <li><i>Tidy.bas</i>, which wraps the call to HTML Tidy with appropriate parameters and ensures that the active document of FrontPage is
      updated.</li>

      <li><i>Form_output</i>, which contains a specification of a simple form dialog that is used to present (error) information from the execution of
      Tidy to the user.</li>    <!--webbot bot="PurpleText" PREVIEW="The code for this form output handling is courtesy of Thomas Price, correc@ti.con.
" -->
    </ul>
     <p>To incorporate these into FrontPage VBA see <a href="#Customizing_the_FrontPage_menu">section 3.2</a> below.<br />
    </p>

    <h3>3.1 <a id="Customizing_the_VBA_code" name="Customizing_the_VBA_code">Customizing the VBA code</a></h3>

    <p>The VBA code cannot be used directly but must be customized to the specified location of HTML Tidy. Four string constants should
    be defined:</p>

    <table border="0" cellpadding="2px" cellspacing="2px" style="border-collapse: collapse">
      <col valign="top" style="font-weight: bold" />
      <col valign="top" />

      <tr>
        <td>TIDY_PROGRAM_FILE</td>

        <td>Should specify the full path and file name to the HTML Tidy executable e.g. as in C:\Program Files\Validator\Tidy.exe.</td>
      </tr>

      <tr>
        <td>TIDY_CONFIG_FILE</td>

        <td>Should specify the full path and file name to the HTML Tidy configuration file.</td>
      </tr>

      <tr>
        <td>TIDY_ERROR</td>

        <td>Should specify the full path and file name to the HTML Tidy error log file.</td>
      </tr>

      <tr>
        <td>TIDY_TEMP_FILE</td>

        <td>Should specify the full path and file name to a temporary file name.</td>
      </tr>
    </table>
<pre class="syntax"><span class="keyword">Attribute</span> VB_Name = "Tidy"
<i><span class="comment">'
' Tidy.bas - Integration with Tidy in FrontPage 2000 or newer
'
' Based on code by Christoph Schneegans &lt;mailto:correc@ti.con&gt;
' See &lt;http://www.schneegans.de/frontpage-vba/tidy.html&gt;
'
</span></i>
<span class="keyword">Option Explicit</span>

<i><span class="comment">' Specifies Path to Tidy executable...</span>
</i><span class="keyword">Const</span> TIDY_PROGRAM_FILE = "C:\Program Files\Validator\Tidy.exe"

<i><span class="comment">' Specifies path to Tidy configuration file...
</span></i><span class="keyword">Const</span> TIDY_CONFIG_FILE = "C:\Program Files\Validator\tidy.cfg"

<span class="comment"><i>' Specifies path to Tidy error files....
</i></span><span class="keyword">Const</span> TIDY_ERROR_FILE = "C:\Program Files\Validator\tidy_errors.txt"

<span class="comment"><i>' Specifies path to Tidy temporary file...
</i></span><span class="keyword">Const</span> TIDY_TEMP_FILE = "C:\Program Files\Validator\tidy.tmp"

<span class="comment"><i>'************************************
' TIDY_FILE
'
'
</i></span><span class="keyword">Sub</span> Tidy_File()

  <span class="keyword">Dim</span> bFlipToHTMLSource <span class="keyword">As Boolean</span>
  bFlipToHTMLSource = <span class="keyword">False</span>

  <span class="keyword">If</span> ActivePageWindow <span class="keyword">Is Nothing Then</span>
    <span class="keyword">MsgBox</span> "Please open a file in the Frontpage Editor.", vbOKOnly <span class="keyword">Or</span> vbCritical
    <span class="keyword">Exit Sub</span>
  <span class="keyword">End If</span>

  <span class="keyword">If Not</span> ActivePageWindow.ViewMode = fpPageViewNormal <span class="keyword">Then</span>
    bFlipToHTMLSource = <span class="keyword">True</span>
    ActivePageWindow.ViewMode = fpPageViewNormal
  <span class="keyword">End If</span>

  <span class="keyword">Dim</span> doc <span class="keyword">As</span> FPHTMLDocument
  <span class="keyword">Set</span> doc = ActivePageWindow.Document

  <span class="keyword">Dim</span> fs
  <span class="keyword">Set</span> fs = CreateObject("Scripting.FileSystemObject")
  <span class="keyword">Dim</span> ts
  <span class="keyword">Set</span> ts = fs.CreateTextFile(TIDY_TEMP_FILE)

  <i><span class="comment">' Write the current active FrontPage document into the temporary file...</span></i>
  ts.Write doc.DocumentHTML
  ts.Close

  <span class="keyword">Dim</span> strCmd <span class="keyword">As String</span>
  strCmd = Chr(34) &amp; TIDY_PROGRAM_FILE &amp; Chr(34) &amp; _
           " -f " &amp; Chr(34) &amp; TIDY_ERROR_FILE &amp; Chr(34) &amp; _
           " -config " &amp; Chr(34) &amp; TIDY_CONFIG_FILE &amp; Chr(34) &amp; _
           " " &amp; Chr(34) &amp; TIDY_TEMP_FILE &amp; Chr(34)

  <i><span class="comment">' Execute the command line</span></i>
  <span class="keyword">If</span> ExecCmd(strCmd) &gt; 1 <span class="keyword">Then</span>
    Err.Raise vbObjectError + 513 <span class="comment">&#39; Raise a user-defined error</span>
    <span class="keyword">Exit Sub</span>
  <span class="keyword">End If</span>

  <span class="comment"><i>' Open the result file (the temporary file)...</i></span>
  <span class="keyword">Set</span> ts = fs.OpenTextFile(TIDY_TEMP_FILE, 1) <span class="comment">' 1=ForReading</span>

  <span class="comment"><i>' Load it into the active document of FrontPage</i></span>
  <span class="keyword">On Error GoTo</span> TidyError
  doc.DocumentHTML = ts.ReadAll
  <span class="keyword">On Error GoTo</span> 0

  <span class="keyword">If</span> bFlipToHTMLSource <span class="keyword">Then</span>
    ActivePageWindow.ViewMode = fpPageViewHtml
  <span class="keyword">End If</span>

  <span class="keyword">Dim</span> es
  <span class="comment"><i>' Read the TIDY_ERROR_FILE</i></span> 
  <span class="keyword">Set</span> es = fs.OpenTextFile(TIDY_ERROR_FILE, 1) <span class="comment"><i>' 1=ForReading

  ' Copy the content into the output form...</i></span>
  Form_output.TextBox_output.Text = es.ReadAll
  Form_output.Caption = TIDY_ERROR_FILE
  Form_output.Show

  <span class="keyword">Exit Sub</span>

TidyError:
  MsgBox "Tidy could not execute correctly. No changes have been carried out." &amp; Chr(10) &amp; _
         "Error # " &amp; CStr(Err.Number) &amp; " " &amp; Err.Description, vbOKOnly Or vbCritical

<span class="keyword">End Sub</span>

</pre>

    <p>You may add extra error level check after an execution of ExecCmd. ExecCmd() returns the error level from the executed file. For Tidy, &quot;0&quot; 
    means &quot;OK&quot;, &quot;1&quot; means &quot;There are warnings&quot;, &quot;2&quot; means &quot;There are errors&quot;. When errors occur, Tidy can&#39;t continue.</p>

    <h3>3.2 <a id="Customizing_the_FrontPage_menu" name="Customizing_the_FrontPage_menu">Customizing the FrontPage menu</a></h3>

    <p>This section shows you how to customize an extra FrontPage menu with the call to the Tidy VBA sub procedure.</p>

    <p>How to guide:</p>

    <ol>
      <li>Open FrontPage.</li>

      <li>Activate the '<b>Tools|Macro|Visual Basic Editor</b>' menu item. This should open up the VBA editor of FrontPage.</li>

      <li>Right click the Modules folder and select '<b>Import File...</b>' and import the ExecuteCmd.bas file. Activate import file again and select
      the Tidy.bas file. See figure below. You should now have at least two modules in the Modules folder - one named ExecuteCmd and one named Tidy.</li>

      <li>If there is an empty Module1 module you can safely delete it.</li>

      <li>Import the form file Form_tidy_output.frm which defines the dialog that will be used to display the (output) result from tidy.</li>

      <li>
        Go into the Tidy module and define the 4 constants as described earlier in <a href="#Customizing_the_VBA_code">section 3.1</a>. 

        <p style="text-align: center"><img src="tidy/tidy_i1.jpg" alt="Figure illustrating the import file feature of VBA." width="504" height="489" /><br />
         <span class="caption">Â» Figure illustrating the import file feature of VBA.</span></p>
      </li>

      <li>Close the VBA editor by activating '<b>File|Close</b>' or press <b>Alt+Q</b>. You're now back in FrontPage.</li>

      <li>Select '<b>Tools|Customize...</b>" to open up the Customize dialog.</li>

      <li>
        Select the <b>Commands tab</b> in the Customize dialog (see figure below). 

        <p style="text-align: center"><img src="tidy/customize_dlg.jpg" alt="The Tools|Customize dialog." width="385" height="380" /><br />
         <span class="caption">Â» The Tools|Customize dialog.</span></p>
      </li>

      <li>Select New Menu in the categories list box. The right hand side list box should contain at least one command available named "New
      Menu".</li>

      <li>Click and drag the "New Menu" command up to the main menu of FrontPage at a preferred location e.g. after the Format menu item. The
      location where you insert should be marked by a vertical insertion bar.</li>

      <li><b>Right click</b> at your newly inserted menu item to open a special customize context menu.</li>

      <li>The context menu contains a menu item called <b>New Name</b> where you can specify a name for your menu item. I've used the "E&amp;xtras"
      name, where the ampersand indicates which letter that acts as shortcut - and therefore will be underlined.</li>

      <li>In the Customize dialog select the <b>Macro</b> item from the categories list box. Two new commands should now be available at the right
      hand side. Select the "<b>Custom Menu Item</b>" and drag it to your new Extras menu.</li>

      <li>Again select the context menu by <b>right clicking</b> and give the new menu item a name e.g. "&amp;Tidy Document".</li>

      <li>Within the opened context menu, use the "<b>Assign macro</b>" item to specify which macro to execute when the menu item is activated by the
      end-user. Select the Tidy macro (the one coming from the Tidy VBA sub procedure).</li>

      <li>Close the Customize dialog.</li>

      <li>You should now be up and running. Test that everything works.</li>
    </ol>

    <h2>4 <a id="Conclusion" name="Conclusion">Conclusion</a></h2>

    <p>I have shown you how you can integrate HTML Tidy into FrontPage and thereby improve the overall quality of your web documents in an easy
    manner.</p>

    <p>The next obvious thing to implement would be an offline validator that can be executed from within FrontPage. That would really be something
    that would increase the quality of the web documents. I suggest reading my accompanying article &quot;<a href="validation_article.htm">Integrating Validation into Microsoft FrontPage</a>&quot; 
    which explains how you can add offline validation to your web page. It&#39;s as good as the validator available from <a href="http://validator.w3.org/">http://validator.w3.org/</a>.</p>

    <p>Nice coding.</p>

    <h2><b>Appendix A: <a id="Known_problems" name="Known_problems">Known problems</a></b></h2>

    <h3>A.1 DOCTYPE problem in FrontPage 2000</h3>

    <p>Within FrontPage 2000, a document containing the !DOCTYPE specification (typically the first line) may not be preserved after an execution of
    the Tidy macro.</p>

    <p>This problem does not occur in FrontPage 2002.</p>

    <p><b>Cause</b>: Tidy is run on the ActiveDocument.DocumentHTML string which does not contain the DOCTYPE specification.</p>

    <p><b>Resolution</b>: Change to FrontPage 2002.</p>

    <p><b>Comments</b>: The ActiveDocument.DocumentHTML string may not contain all code from the web page, which may lead to other problems. One
    example is the text of the shared borders, which may contain HTML code. This HTML code will not be repaired by Tidy.</p>

    <h3>A.2 Possible XML declaration problem in FrontPage 2000</h3>

    <p>Recent HTML Tidy builds creates an XML declaration when 'output-xhtml' is set to 'yes'. This is, in fact, good. Older builds forgot the XML
    declaration, even when using other encodings than UTF-8 or UTF-16. I'm afraid this could cause big problems. Since FrontPage 2000 doesn't like XML
    declarations, it moves them into the body element.</p>

    <h3>A.3 Long file name handling</h3>

    <p>In case of long file names, e.g. if you have installed HTML Tidy in a folder with long file names (e.g. under C:\Program Files), the VB code
    should be changed to quote the file names.</p>

    <p>In tidy.bas the following should be modified from:</p>
<pre class="syntax">Dim strCmd As String
strCmd = TIDY_PROGRAM_FILE &amp; " -f " &amp; TIDY_ERROR_FILE &amp; _
" -config " &amp; TIDY_CONFIG_FILE &amp; " " &amp; TIDY_TEMP_FILE
</pre>

    <p>To:</p>
<pre class="syntax">Dim strQuote As String
Dim strCmd As String
strQuote = Chr$(34)
strCmd = strQuote &amp; TIDY_PROGRAM_FILE &amp; strQuote &amp; " -f " &amp; strQuote &amp; TIDY_ERROR_FILE &amp; strQuote &amp; _
" -config " &amp; strQuote &amp; TIDY_CONFIG_FILE &amp; strQuote &amp; " " &amp; strQuote &amp; TIDY_TEMP_FILE &amp; strQuote
</pre>

    <p><a href="mailto:Comment:%20Courtesy%20of%20Thomas%20Price,%correc@ti.con.">
    <!--webbot bot="PurpleText" PREVIEW="Courtesy of Thomas Price, correc@ti.con." --></a></p>
        <h2>Appendix B: <a name="Using_TidyATL_DLL">Using TidyATL DLL</a></h2>
        <p>This appendix contains a preliminary description of how to use the HTML Tidy ATL/COM Wrapper DLL as implemented by Charles Reitzel (see
        <a href="http://users.rcn.com/creitzel/tidy.html#comatl">http://users.rcn.com/creitzel/tidy.html#comatl</a>). One of the advantages of using this is 
        that you potentially can avoid all the temporary files.</p>
        <h3>Preliminary How To</h3>
        <ol>
          <li>Download the <a href="http://users.rcn.com/creitzel/tidy/TidyATL.zip">TidyATL.zip</a>, unzip it and save the TidyATL.dll somewhere e.g. in 
          &quot;C:\Program Files\Validator&quot;.</li>
          <li>Register the dll using the &quot;regsvr32 TidyATL.dll&quot; (from command prompt)</li>
          <li>Start FrontPage and open the VBA editor by activating Tools|Macros|Visual Basic Editor.</li>
          <li>In the VBA editor open the References Dialog by activating Tools|References.</li>
          <li>In the references dialog activate the &quot;Tidy 1.0 Type Library&quot; in the listbox by clicking the checkbox in the list of available objects/type 
          libraries. This will inform VBA that you would like to use the TidyDocument in your VBA project.</li>
          <li>Create a new module (named it Tidy or, if that is already existing, give it a unique name of your choice).</li>
          <li>Enter the code as seen in the &#39;<i>VB Module Code - Tidy&#39;</i> section below into the newly created module.</li>
          <li>Create a new class module and name it TidyDocEventClass (I guess you do not have this already?).</li>
          <li>Enter the code as seen in the &#39;<i>VB Class Module Code - Tidy Doc Event Class</i>&#39; section below into the newly created class module.</li>
          <li>Now you can create a menu item (as previously explained in section 3.2 above) containing a macro call to the DoTidy procedure.</li>
        </ol>
        <p>I still need to figure out to provide better message feedback. I would prefer a solution where all messages are outputted to a modeless window 
        (dialog) visible to the FrontPage user and in which the user could click on the (error) line jumping directly into the source code on the position where 
        the (error) problem were located. </p>
        <h3>VB Module Code - Tidy</h3>
        <pre class="syntax">Option Explicit

&#39; Specifies path to Tidy configuration file...
Const TIDY_CONFIG_FILE = &quot;C:\Program Files\Validator\tidy.cfg&quot;

&#39; *************************************************
&#39; DoTidy
&#39;   Tidy&#39; the current active page in FrontPage
&#39;   accordingly to the HTML Tidy configuation
&#39;   specified in the configuration file defined
&#39;   in the TIDY_CONFIG_FILE constant.
&#39;
&#39; Note: Tidy (error) message are captured in
&#39;       the OnMessage event handler in the
&#39;       projects TidyDocEventClass.
&#39;
Sub DoTidy()

  Dim bFlipToHTMLSource As Boolean
  bFlipToHTMLSource = False

  If ActivePageWindow Is Nothing Then
    MsgBox &quot;Please open a file in the Frontpage Editor.&quot;, vbOKOnly Or vbCritical
    Exit Sub
  End If

  If Not ActivePageWindow.ViewMode = fpPageViewNormal Then
    bFlipToHTMLSource = True
    ActivePageWindow.ViewMode = fpPageViewNormal
  End If

  Dim oFPdoc As FPHTMLDocument &#39; The FrontPage document (e.g. in HTML)
  Set oFPdoc = ActivePageWindow.Document

  Dim oTidyDoc As TidyDocument
  Set oTidyDoc = New TidyDocument

  &#39; Setup class to handle events (OnMessage) from the Tidy document
  Dim oEvtClass As TidyDocEventClass
  Set oEvtClass = New TidyDocEventClass
  Set oEvtClass.TidyDoc = oTidyDoc

  Dim nStat As Long

  On Error GoTo TidyError
  nStat = 0
  &#39;If Len(sErrorFile) &gt; 0 Then
  &#39; nStat = oTidyDoc.SetErrorFile(sErrorFile)
  &#39;End If
  If nStat &gt;= 0 Then
    nStat = oTidyDoc.LoadConfig(TIDY_CONFIG_FILE)
  End If
  If nStat &gt;= 0 Then
    nStat = oTidyDoc.ParseString(oFPdoc.DocumentHTML)
  End If
  If nStat &gt;= 0 Then
    nStat = oTidyDoc.CleanAndRepair()
  End If
  If nStat &gt;= 0 Then
    nStat = oTidyDoc.RunDiagnostics()
  End If
  If nStat &gt;= 0 Then
    oFPdoc.DocumentHTML = oTidyDoc.SaveString()
  End If

  If bFlipToHTMLSource Then
    ActivePageWindow.ViewMode = fpPageViewHtml
  End If

  Exit Sub

TidyError:
  MsgBox &quot;Tidy could not execute correctly. No changes have been carried out.&quot; &amp; _
          Chr(10) &amp; &quot;Error # &quot; &amp; CStr(Err.Number) &amp; &quot; &quot; &amp; Err.Description, vbOKOnly Or vbCritical
End Sub</pre>
        <h3>VB Class Module - Tidy Doc Event Class</h3>
        <pre class="syntax">Option Explicit

Public WithEvents TidyDoc As TidyDocument

&#39; *************************************************
&#39; TidyDoc_OnMessage
&#39;   Event handler (OnMessage) for TidyDocument.
&#39;
Private Sub TidyDoc_OnMessage(ByVal level As TidyReportLevel, ByVal nLine As Long, _
  ByVal nCol As Long, ByVal sMsg As String)

  Dim sLevel As String, sLine As String

  If level = TidyInfo Then
    sLevel = &quot;Info: &quot;
  ElseIf level = TidyAccess Then
    sLevel = &quot;Access: &quot;
  ElseIf level = TidyWarning Then
    sLevel = &quot;Warning: &quot;
  ElseIf level = TidyConfig Then
    sLevel = &quot;Config: &quot;
  ElseIf level = TidyError Then
    sLevel = &quot;Error: &quot;
  ElseIf level = TidyBadDocument Then
    sLevel = &quot;Doc: &quot;
  ElseIf level = TidyFatal Then
    sLevel = &quot;Fatal: &quot;
  Else
    sLevel = &quot;???: &quot;
  End If

  If nLine &gt; 0 Then
    sLine = sLevel &amp; &quot;Line &quot; &amp; nLine &amp; &quot;Col &quot; &amp; nCol &amp; &quot;, &quot; &amp; sMsg
  Else
    sLine = sLevel &amp; sMsg
  End If

  MsgBox sLine
End Sub
</pre>
        <p><a href="http://validator.w3.org/check/referer"><img src="../../../images/valid-xhtml10.png" style="border-width: 0px" alt="Valid XHTML 1.0!"
    height="31" width="88" /></a></p>
    <!-- #EndEditable -->
  </div>

  <!--webbot bot="Include" U-Include="../../includes/footer.htm" startspan -->
  <footer>Â© 1998-2016 <a style="color: black" href="mailto:%20michael&#64;suodenjoki.dk">Michael Suodenjoki</a></footer>
<!--webbot bot="Include" endspan i-checksum="55323" -->
</body>
<!-- #EndTemplate -->
</html>