<%-- 
    Document   : Home
    Created on : Jun 13, 2022, 2:57:59 PM
    Author     : SANT JI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>My Project</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" />
        <script src="js/js1.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Rubik:ital@0;1&display=swap" rel="stylesheet">
       <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    </head>
    <body >
        <!--coding area-->
       
        <%@include file="N_navbar.jsp" %>
        
        <!--header section start-->
        <header class="header " style="padding:0px;margin:0px">
            <div class="container h-100  ">
                <div class="row h-100 align-items-center ">
                    <div class="col-md-12 text-center ">

                        <h1 data-aos="fade-down">Welcome to Java Developer's</h1>
                        <p>An application that runs on the server side and creates a dynamic page is called a web application. Currently, Servlet, JSP, Struts, Spring, Hibernate, JSF, etc. technologies are used for creating web applications in Java.</p>
                        <a href="Register.jsp" class="btn btn-primary starts"data-aos="fade-right">Start Free join </a>
                    </div>
                </div>
            </div>
        </header>
        <!--header section end-->
        
        <!--message secion start-->
        <section class="message py-5">
            <div class="container text-center "data-aos="fade-up">
                <h1>We have got what you need!</h1>
                <p>What we need to get is the Java SE (Standard Edition). The latest update is Java SE9, but I would recommend Java SE 8, since that’s what I’m using, and I’m not sure what new features have been added. You can click “Java SE” under “Top Downloads”, or just go to “New Downloads and pick your choice.</p>
                <a href="#" class="btn btn-primary starts"data-aos="fade-right">Check Out</a>
            </div>
        </section>
        <!--message secion end-->
        
        <!--services section satrt -->
        <section class="services gradiant-colors-2">
            <div class="container text-center py-5">
                <h1>About Our Services</h1>
                <div class="row">
                    <div class="col-md-4">
                        <div class="card" data-aos="flip-right">
                            <div class="card-body">
                                <i class="fa fa-bar-chart" style="font-size:32px"></i>
                                <h2>Best Exaplaination</h1>
                                <p class="justify">Java is a class-based, object-oriented programming language and is designed to have as few implementation dependencies as possible. A general-purpose programming language made for developers to write once run anywhere that is compiled Java code can run on all platforms that support Java.</p>
                            </div>
                        </div>
                       
                    </div>
                    <div class="col-md-4">
                        <div class="card" data-aos="flip-right">
                            <div class="card-body">
                                 <i class="fa fa-calendar-plus-o" style="font-size:32px"></i>
                                <h2>Best Exaplaination</h2>
                                <p class="justify">Java is a class-based, object-oriented programming language and is designed to have as few implementation dependencies as possible. A general-purpose programming language made for developers to write once run anywhere that is compiled Java code can run on all platforms that support Java.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card" data-aos="flip-right">
                            <div class="card-body">
                                 <i class="fa fa-bell" style="font-size:32px"></i>
                                <h2>Best Exaplaination</h2>
                                <p class="justify">Java is a class-based, object-oriented programming language and is designed to have as few implementation dependencies as possible. A general-purpose programming language made for developers to write once run anywhere that is compiled Java code can run on all platforms that support Java.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="#" class="btn btn-success mt-3" data-aos="fade-right">More</a>
                
            </div>
            
        </section>
        <!--services section end-->
        
        <!--downloding section start-->
        <section class="download py-5">
            <div class="container text-center">
                <h1>You Can Download Free !!</h1>
                <p>Find All The Information You Need On Tech. Search Info Now. If You Have Questions About Anything Tech, We Can Help. Find Great Results & Info. Great Tech Resources. Find More Information. Explore Tech Information. Search Info Today.</p>
                <a href="#" class="btn btn-primary starts" data-aos="fade-right">Download</a>
            </div>
        </section>
        <!--downloding section end-->
        
        <!--Contact section start-->
        <section class="contact py-5" id="contact">
            <div class="container text-center" data-aos="flip-down">
                <h1>Contact Us</h1>
                <p>
                    Name- Sant Kumar<br>
                  Contact No. -8340422551<br>
                  Email id- santkumar11032000@gmail.com<br>
                  - 210160307012.sant@gdgu.org<br>
                                Gurugram,Haryana 122001
                                <br>
                                
                            
                              
                             <i class="fa-regular fa-envelope" style="font-size:32px"></i>
                                 <i class="fas fa-map-marker-alt" style='font-size:32px'></i>
                                  <i class="fa fa-phone" style="font-size:32px"></i>
                </p>
            </div>
        </section>
         <!--Contact section end-->
         
         
         <!--footer section- start--> 
      
         <footer class="footer">
             <div class="container text-center text-white" data-aos="flip-up">
                <p>Copyright@ by technical santji </p>
            </div></footer>
         <!--footer section- end-> 
        
        <!--coding area-->
        
        <!--  JavaScript -->
        <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>
  AOS.init();
  
</script>
</body>

</html>
