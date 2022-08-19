<p align="center"><b>WARNING:</b> This pages is using the global variables.php file. All 240 course websites after Fall 2018 should use a relative path to a variables.php file in the semester's root directory instead!</p><!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>Class Schedule - CS 240 - Fall 2018</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- styles -->
    <link href="https://students.cs.byu.edu/~cs240ta/fall2018/include/bootstrap/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <link href="https://students.cs.byu.edu/~cs240ta/fall2018/include/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="https://students.cs.byu.edu/~cs240ta/fall2018/include/style.css" rel="stylesheet">

  </head>

  <body>


    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="https://students.cs.byu.edu/~cs240ta/fall2018/">CS 240</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li><a href="https://students.cs.byu.edu/~cs240ta/fall2018/projects/">Projects</a></li>
              <li class="dropdown active">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Schedule <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="https://students.cs.byu.edu/~cs240ta/fall2018/info/schedule.php">Class Schedule</a></li>
                  <li><a href="https://students.cs.byu.edu/~cs240ta/fall2018/TA/">TA Schedule</a></li>
                </ul>
              </li>

              <!-- You can use this example for how to make drop-down menus or to add
              		 additional pages to an existing drop-down menu. -->

              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Policies <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="https://students.cs.byu.edu/~cs240ta/fall2018/info/policies.php">Class Policies</a></li>
                  <li><a href="https://students.cs.byu.edu/~cs240ta/fall2018/info/TA_help_policies.php">TA Help Policies</a></li>

                  <!-- Below is an example of how to add an item to an existing
                  	  drop-down menu.  Just create a list-item tag and a
                  	  reference tag and you're good to go...
                  	 <li><a href="http://www.websiteaddress.com/path/to/your/domain">LINK ONE</a></li>
                  	 		or
                  	 <li><a href="path/from/our/directory/system">LINK TWO</a></li> -->

                </ul>
              </li>

		<li><a href="https://students.cs.byu.edu/~cs240ta/fall2018/download/">Download</a></li>

              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Lecture Files <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="https://students.cs.byu.edu/~cs240ta/fall2018/rodham_files/">Dr. Rodham</a></li>
                  <li><a href="https://students.cs.byu.edu/~cs240ta/fall2018/powerpoints/">Dr. Woodfield</a></li>
                  <li><a href="https://students.cs.byu.edu/~cs240ta/fall2018/jones_files/">Dr. Jones</a></li>
                  <li><a href="https://faculty.cs.byu.edu/~barker/cs240/notes/">Dr. Barker</a></li>
                  <!--<li><a href="https://students.cs.byu.edu/~cs240ta/fall2018/tyler_monson_files/">Tyler Monson</a></li>-->
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Help <b class="caret"></b></a>
                <ul class="dropdown-menu">
				  <li><a href="https://students.cs.byu.edu/~cs240ta/fall2018/faqs/">FAQs</a></li>
                  <li><a href="https://students.cs.byu.edu/~cs240ta/fall2018/help/">Project Tips</a></li>
                  <li><a href="https://students.cs.byu.edu/~cs240ta/fall2018/tutorials/">Tutorials</a></li>
                  <li><a href="http://docs.oracle.com/javase/8/docs/api/">Java API</a></li>
                  <!--<li><a href="http://docs.oracle.com/javase/8/docs/">Java Documentation</a></li>-->
				  <li><a href="https://docs.oracle.com/javase/8/docs/jre/api/net/httpserver/spec/com/sun/net/httpserver/package-summary.html">HttpServer Documentation</a></li>
                  <li><a href="http://www.sqlite.org/lang.html">SQL Support in SQLite</a></li>
                </ul>
              </li>
		<li><a href="https://students.cs.byu.edu/~cs240ta/fall2018/contact/">Contact</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container maincontainer">

			<div class="box">
		<h1>Class Schedule</h1>
		</div>

		<div class="main">
	
    <!--End header.  Close div, body, and html in footer -->

	<style scoped>
		table.scheduleTable {
			empty-cells: show;
		}
		table.scheduleTable {
			border-spacing:5px;
			width: 100%;
		}
		table.scheduleTable tr th {
			width: 33%;
		}
		table.scheduleTable tr td {
			width: 33%;
		}
		@media (min-width: 1000px) {
			table.scheduleTable {
				width: 900px;
			}
		}
        .holiday {
            color: red;
        }
	</style>

    <div class="center">
      <h2>Schedule - Fall 2018</h2>
    </div>

	<h3>Week 1: Sep. 3 - Sep. 7</h3>
    <table class="scheduleTable" border="1">
      <tbody>
        <tr>
          <th>Topic</th>

          <th>Reading</th>

          <th>Due Dates and Exams</th>
        </tr>

        <tr>
          <td>Course/Java Intro</td>

          <td></td>

          <td>
            <a href="../tutorials/linux/">Linux Tutorial</a><br/>
          </td>
        </tr>

        <tr>
          <td>Java Fundamentals</td>

          <td>Java:Ch. 1 &amp; 9.1-9.2</td>

          <td></td>
        </tr>
      </tbody>
    </table>

	<h3>Week 2: Sep. 10 - Sep. 14</h3>
    <table class="scheduleTable" border="1">
      <tbody>
        <tr>
          <th>Topic</th>

          <th>Reading</th>

          <th>Due Dates and Exams</th>
        </tr>

		<tr>
          <td>Objects &amp; Classes</td>

          <td>Java:Ch. 2</td>

          <td>Image Editor due Wednesday, Sep. 12</td>
        </tr>

        <tr>
          <td>Interfaces &amp; Exceptions</td>

          <td>Java:Ch. 3.1-3.3 &amp; 5.1</td>

          <td></td>
        </tr>
      </tbody>
    </table>

	<h3>Week 3: Sep. 17 - Sep. 21</h3>
    <table class="scheduleTable" border="1">
      <tbody>
        <tr>
          <th>Topic</th>

          <th>Reading</th>

          <th>Due Dates and Exams</th>
        </tr>
        
        <tr>
          <td>Collections &amp; Copying Objects</td>

          <td>Java:Ch. 7</td>

          <td>Spelling Corrector due Wednesday, Sep. 19</td>
        </tr>

        <tr>
          <td>Inheritance &amp; Java I/O (Streams/Files)</td>

          <td>Java:Ch. 4.1-4.3</td>

          <td></td>
        </tr>
      </tbody>
    </table>

	<h3>Week 4: Sep. 24 - Sep. 28</h3>
    <table class="scheduleTable" border="1">
      <tbody>
        <tr>
          <th>Topic</th>

          <th>Reading</th>

          <th>Due Dates and Exams</th>
        </tr>

        <tr>
          <td>Databases</td>

          <td><a href="http://www.sqlitetutorial.net/sqlite-java/">SQLite in Java Tutorial</a>,
				<a href="https://www.tutorialspoint.com/sqlite/sqlite_java.htm">Another Tutorial</a></td>

          <td>Evil Hangman due Wednesday, Sep. 26</td>
        </tr>

        <tr>
          <td>Databases (cont.) &amp; XML/JSON</td>

          <td><a href="https://www.tutorialspoint.com/gson/">GSON Tutorial</a>
          </td>

          <td>Programming Exam<br>Thursday, Sep. 27 - Wednesday, Oct. 3</td>
        </tr>

      </tbody>
    </table>

	<h3>Week 5: Oct. 1 - Oct. 5</h3>
    <table class="scheduleTable" border="1">
      <tbody>
        <tr>
          <th>Topic</th>

          <th>Reading</th>

          <th>Due Dates and Exams</th>
        </tr>

        <tr>
          <td>Family Map Server Overview &amp; Design Principles</td>

          <td>
            <a href="../projects/family-map-server/FamilyMapServerSpecification.pdf">Family Map Server Specification</a>
          </td>

          <td>Programming Exam Retake<br>Thursday, Oct. 4 - Friday, Oct. 5</td>
        </tr>

        <tr>
          <td>Family Map Server Design &amp; Object Serialization (GSON)</td>

          <td>
			Java:Ch. 9.5<br/>
            <a href="../tutorials/javadoctutorial.php">Javadoc Tutorial</a>
          </td>

          <td></td>
        </tr>
      </tbody>
    </table>

	<h3>Week 6: Oct. 8 - Oct. 12</h3>
    <table class="scheduleTable" border="1">
      <tbody>
        <tr>
          <th>Topic</th>

          <th>Reading</th>

          <th>Due Dates and Exams</th>
        </tr>

        <tr>
          <td>Unit Testing &amp; Writing Quality Code</td>

          <td><a href="https://www.tutorialspoint.com/junit/">JUnit Tutorial</a></td>

          <td></td>
        </tr>

        <tr>
          <td>Defensive Programming / Catch Up</td>

          <td>Java:Ch. 5.2</td>

          <td>Family Map Server Design due Friday, Oct. 12 (submit by 11:59 PM) - <a href="https://docs.cs.byu.edu/doku.php?id=website-setup-and-configuration">Follow this tutorial for help setting up your website</a></td>
       </tr>
      </tbody>
    </table>

	<h3>Week 7: Oct. 15 - Oct. 19</h3>
    <table class="scheduleTable" border="1">
      <tbody>
        <tr>
          <th>Topic</th>

          <th>Reading</th>

          <th>Due Dates and Exams</th>
        </tr>

        <tr>
          <td>HTTP &amp; Java Web Server</td>

          <td></td>

          <td></td>
       </tr>

        <tr>
          <td>Family Map Server Design</td>

          <td></td>

          <td></td>
        </tr>

      </tbody>
    </table>

	<h3>Week 8: Oct. 22 - Oct. 26</h3>
    <table class="scheduleTable" border="1">
      <tbody>
        <tr>
          <th>Topic</th>

          <th>Reading</th>

          <th>Due Dates and Exams</th>
        </tr>

        <tr>
          <td>Logging &amp; Debugging</td>

          <td>
            Java:Ch. 5.3
          </td>

          <td></td>
        </tr>

        <tr>
          <td>Client-side HTTP (URL Connections) / Catch Up</td>

          <td>Java:Ch. 9.3</td>

          <td></td>
        </tr>

      </tbody>
    </table>

    <h3>Week 9: Oct. 29 - Nov. 2</h3>
    <table class="scheduleTable" border="1">
      <tbody>
        <tr>
          <th>Topic</th>

          <th>Reading</th>

          <th>Due Dates and Exams</th>
        </tr>
		
       <tr>
          <td>Java Nested Classes &amp; Android Introduction</td>

          <td>Android:Preface, Ch. 1 &amp; 2</td>

          <td></td>
        </tr>

        <tr>
          <td>Android User Interface Basics</td>

          <td>Android:Ch. 3 &amp; 4</td>

          <td>Family Map Server due, Thursday, Nov. 1</td>
        </tr>

		</tbody>
    </table>

    <h3>Week 10: Nov. 5 - Nov. 9</h3>
    <table class="scheduleTable" border="1">
      <tbody>
        <tr>
          <th>Topic</th>

          <th>Reading</th>

          <th>Due Dates and Exams</th>
        </tr>

        <tr>
          <td>Family Map Client Overview &amp; Design</td>

          <td>
            Android:Ch. 5 &amp; 6<br/>
            <a href="../projects/family-map-client/FamilyMapClientSpecification.pdf">Family Map Client Specification</a>
          </td>

          <td></td>
        </tr>

        <tr>
          <td>Android Activities &amp; Fragments</td>

          <td>Android:Ch. 7 &amp; 10</td>

          <td></td>
        </tr>

		</tbody>
    </table>

    <h3>Week 11: Nov. 12 - Nov. 16</h3>
    <table class="scheduleTable" border="1">
      <tbody>
        <tr>
          <th>Topic</th>

          <th>Reading</th>

          <th>Due Dates and Exams</th>
        </tr>

        <tr>
          <td>Client Web Access &amp; AsyncTask</td>

          <td>Android:Ch. 25</td>

          <td></td>
        </tr>

       <tr>
          <td>Widgets &amp; Layouts</td>

          <td>Android:Ch. 9</td>

			<td></td>
        </tr>

		</tbody>
    </table>

    <h3>Week 12: Nov. 19 - Nov. 23</h3>
    <table class="scheduleTable" border="1">
      <tbody>
        <tr>
          <th>Topic</th>

          <th>Reading</th>

          <th>Due Dates and Exams</th>
        </tr>
		
        <tr>
          <td>Catch Up / Friday Instruction on Tuesday</td>

          <td></td>

          <td>Family Map Login due Monday, Nov. 19</td>
        </tr>

        <tr>
          <td>No Class Wednesday, Nov. 21 - Friday, Nov. 23)</td>

          <td></td>

          <td></td>
        </tr>

     </tbody>
    </table>

    <h3>Week 13: Nov. 26 - Nov. 30</h3>
    <table class="scheduleTable" border="1">
      <tbody>
        <tr>
          <th>Topic</th>

          <th>Reading</th>

          <th>Due Dates and Exams</th>
        </tr>

        <tr>
          <td>Advanced Widgets</td>

          <td>Android:Chs. 8, 11, &amp; 34</td>

          <td></td>
        </tr>

        <tr>
          <td>Dialogs, Menus, Toolbar, Navigation</td>

          <td>Android:Chs. 12 &amp; 13</td>

          <td></td>
        </tr>

      </tbody>
    </table>

    <h3>Week 14: Dec. 3 - Dec. 7</h3>
    <table class="scheduleTable" border="1">
      <tbody>
        <tr>
          <th>Topic</th>

          <th>Reading</th>

          <th>Due Dates and Exams</th>
        </tr>

        <tr>
          <td>Software Testing Principles</td>

          <td></td>

          <td></td>
        </tr>

        <tr>
          <td>Black Box Testing</td>

          <td></td>

          <td></td>
        </tr>

      </tbody>
    </table>

    <h3>Week 15: Dec. 10 - Dec. 14</h3>
    <table class="scheduleTable" border="1">
      <tbody>
        <tr>
          <th>Topic</th>

          <th>Reading</th>

          <th>Due Dates and Exams</th>
        </tr>

        <tr>
          <td>White Box Testing</td>

          <td></td>

          <td></td>
        </tr>

        <tr>
          <td>Final Exam Review</td>

          <td></td>

          <td>Family Map Client due Thursday, Dec. 13</td>
        </tr>

      </tbody>
    </table>

	<h3>Final Exam</h3>
	All final exams will be in 130 MARB at the 
	time scheduled by the university, as indicated below.
	<ul>
	<li>Section 1 (Barker MWF 10:00am)<br>
	Thursday, December 20<br>
	7:00 a.m. - 10:00 a.m.</li>
	<li>Section 2 (Barker MWF 11:00am)<br>
	Tuesday, December 18<br>
	11:00 a.m. - 2:00 p.m.</li>
	<li>Section 3 (Rodham TTh 1:35pm)<br>
	Monday, December 17<br>
	11:00 a.m. - 2:00 p.m.</li>
	<li>Section 4 (Rodham TTh 3:00pm)<br>
	Wednesday, December 19<br>
	3:00 p.m. - 6:00 p.m.</li>
	</ul>
<hr>
			</div>
	
     <footer>
        <p>&copy; BYU 2018</p>
      </footer>

    </div> <!-- /container -->

    <!-- ================================================== -->
    <!-- Javascript - Placed at the end of the document so the page appears to load faster -->
    <script src="https://students.cs.byu.edu/~cs240ta/fall2018/include/jquery/jquery-1.10.2.min.js"></script>
    <script src="https://students.cs.byu.edu/~cs240ta/fall2018/include/bootstrap/js/bootstrap.js"></script>
  </body>
</html>
