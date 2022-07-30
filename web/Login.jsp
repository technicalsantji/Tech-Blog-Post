<%-- 
    Document   : Register
    Created on : Jun 13, 2022, 3:30:57 PM
    Author     : SANT JI
--%>

<%@page import="com.sun.org.apache.xml.internal.serializer.utils.MsgKey"%>
<%@page import="sant.entity.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  errorPage="error_page.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
        <link href="css/style.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
        <style>
            body{
                background:url(css/img.jpg)
            }
        </style>
    
    </head>
    <body class="gradiant-colors-2" style="background-size:cover;">

        <%@include  file="N_navbar.jsp" %>
        <div class="container-fluid">
            <div class="row align-items-center">

                <div class="col-md-4 offset-md-4"> 
                    <div class="card m-5 gradiant-colors-1 border-success rounded-lg" data-aos="fade-right" style="box-shadow:1px 4px 4px 4px #9a9c99">
                        <div class="card-body mx-auto text-center">
                            <!--form start-->
                            <form action="Login" method="post" autocomplete="off">
                                <i class="fa fa-user-plus" aria-hidden="true" style="font-size:32px;color:#ffffff"></i>
                                <h6 class="card-title cti text-white">Login here</h6>
                                <%
                                    Message m =(Message)session.getAttribute("msg");
                                    if(m !=null){

                                %>
                                <div class="alert <%= m.getCssclass() %>" role="alert">
                                    <%= m.getContent() %>
                                </div>
                                <%  
                                    session.removeAttribute("msg");
                                    }
                                %> 
                               

                                <div class="input-group mb-3 mt-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
                                    </div>
                                    <input type="email" name="email" class="form-control" placeholder="Enter the Email " required aria-label="Username" aria-describedby="basic-addon1">
                                </div>


                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1"><i class="fa-solid fa-key"></i></span>
                                    </div>
                                    <input type="password" class="form-control" name="password" required placeholder="Enter the Password" aria-label="Username" aria-describedby="basic-addon1">
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input position-static" required type="checkbox" id="blankCheckbox" value="option1" aria-label="...">
                                    <span class="text-white" >I agree with term and condition</span>
                                </div>
                                <input href="#" class="btn btn-block gradiant-colors-2" type="submit" value="Login"/>
                                <input href="#" class="btn btn-block btn-danger" type="reset" value="Reset"/>
                                <p>Not a member ? <a href="Register.jsp" class="text-white" >Create New Account</a></p>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>
  AOS.init();
</script>
</body>
</html>

