<%-- 
    Document   : Profile
    Created on : Jul 6, 2022, 12:53:21 PM
    Author     : SANT JI
--%>

<%@page import="sant.entity.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="sant.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.dao.PostDao"%>
<%@page import="sant.entity.Message"%>
<%@page import="sant.entity.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  errorPage="error_page.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile </title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/style.css" rel="stylesheet" />
        <script src="js/js1.js"></script>



    </head>
    <body>
        <%
            User user = (User) session.getAttribute("currentuser");
            if (user == null) {
                response.sendRedirect("Login.jsp");
            }
        %>

        <!--navbar start-->
        <nav class="navbar navbar-expand-lg navbar-dark backgroundcolor">
            <a class="navbar-brand" href="#"><i class="fa fa-graduation-cap" aria-hidden="true" class="mr-1" style="font-size:28px;color:red"></i>Technical Santji</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link " href="#"><i class="fa fa-home mr-1" aria-hidden="true" style="font-size:20px;color:white"></i>Home</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#"><i class="fa fa-address-book-o mr-1" aria-hidden="true" style="font-size:20px;color:white"></i>Contact</a>
                    </li>
                    <li class="nav-item dropdown active">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-shopping-bag mr-1" aria-hidden="true" style="font-size:20px;color:white"></i> Categories
                        </a>
                        <div class="dropdown-menu gradiant-colors-1" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item  " href="#">Programing Language</a>
                            <a class="dropdown-item " href="#">project </a>

                            <a class="dropdown-item" href="#">Data Structure </a>
                        </div>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#"><i class="fa fa-picture-o mr-1" aria-hidden="true" style="font-size:20px;color:white"></i>Gallery</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="" data-toggle="modal" data-target="#posta"> <i class="fa fa-bell" style="font-size:20px"></i>Do Post</a>
                    </li>
                </ul>
                <ul class="navbar-nav mr-right">
                    <li class="nav-item">
                        <a href="#!" class="nav-link active" data-toggle="modal" data-target="#profileModel"><span class="mr-1"><img src="pics/<%= user.getProfile()%>" class="img-fluid" style="max-width:23px;border-radius:50%"/></span><%= user.getUname()%></a>
                    </li>
                    <li class="nav-item">
                        <a href="Logout" class="nav-link active" type="submit"><i class="fa fa-sign-out mr-1" aria-hidden="true" style="font-size:20px;color:white"></i>Logout</a>
                    </li>
                </ul>


            </div>
        </nav>
        <%
            Message m = (Message) session.getAttribute("msg");
            if (m != null) {

        %>
        <div class="alert <%= m.getCssclass()%>" role="alert">
            <%= m.getContent()%>
        </div>
        <%
                session.removeAttribute("msg");
            }
        %> 

        <!--navbar end
        
        <!--Main section-->
        <div class="container-fluid">
             
        <div class="row mt-3">
            <div class="col-md-4 ">
                <div class="list-group" id="list-tab" role="tablist">
                    <a href="#" class="list-group-item list-group-item-action active" onclick="getpost(0)"  data-toggle="list" role="tab" aria-controls="home">All Post</a>
                    <!--all category  fetch--> 
                    <%
                        PostDao dao = new PostDao(ConnectionProvider.getConnection());
                        ArrayList<Category> li = dao.getallcategory();
                        for (Category c : li) {
                    %> 
                    <a href="#" class="list-group-item list-group-item-action" onclick="getpost(<%= c.getCid()%>)" data-toggle="list"  role="tab" aria-controls="home"><%= c.getCname()%></a>
                    <%
                        }


                    %>

                </div>
            </div>
            <div class="col-md-8" >
                <div class="container text-center" id =loder>
                    <i class="fa fa-refresh fa-4x fa-spin"></i>
                    <h4>Loding...</h4>

                </div>
                <div class="container-fluid" id="load-post">

                </div>
            </div>
        </div>
        </div>






        <!--model profile section start-->
        <!-- Button trigger modal -->


        <!-- Modal -->
        <div class="modal fade  " id="profileModel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header gradiant-colors-2 text-white text-center">
                        <h5 class="modal-title" id="exampleModalLongTitle">Technical santji</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container text-center">
                            <img src="pics/<%= user.getProfile()%>" class="img-fluid" style="max-width:140px;border-radius:50%"/>
                            <h5 class="modal-title" id="exampleModalLongTitle"><%= user.getUname()%></h5>
                            <div id="Profile_Details">

                                <table class="table">

                                    <tbody>
                                        <tr>
                                            <th scope="row">ID</th>
                                            <td><%= user.getId()%></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Name</th>
                                            <td><%= user.getUname()%></td>
                                        </tr>

                                        <tr>
                                            <th scope="row">Email ID</th>
                                            <td><%= user.getUemail()%></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Phone No.</th>
                                            <td><%= user.getUphone()%></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">User Type</th>
                                            <td><%= user.getUtype()%></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Gender</th>
                                            <td><%= user.getUgender()%></td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                            <div id="Profile_Edit" style="display:none">
                                <h2 class="mt-3">Edit form</h2>
                                <form action="Edit_Profile" method="post" enctype="multipart/form-data">
                                    <table class="table">
                                        <tr>
                                            <th scope="row">ID</th>
                                            <td><%= user.getId()%></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Name</th>
                                            <td> <input type="text" class="form-control" name="name" value=" <%= user.getUname()%>"/></td>
                                        </tr>

                                        <th scope="row">Email</th>
                                        <td><input type="email" class="form-control" name="email" value="<%= user.getUemail()%>"/></td>
                                        </tr>
                                        <tr>

                                        <tr>
                                            <th scope="row">Phone Number</th>
                                            <td> <input type="text" class="form-control" name="phone" value=" <%= user.getUphone()%>"/></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Password</th>
                                            <td> <input type="password" class="form-control" name="password" value=" <%= user.getUpassword()%>"/></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Gender</th>
                                            <td><%= user.getUgender()%></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">New Profile</th>
                                            <td><input class="form-control" type="file" name="file" required=""/> </td>
                                        </tr>
                                    </table>
                                    <div class="container">
                                        <input type="submit" class="btn btn-primary " value="Update" />
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" id="profile-edit-button" class="btn btn-primary">Edit</button>
                    </div>
                </div>
            </div>
        </div>
        <!--profile model end-->

        <!--post model start-->
        <!-- Button trigger modal -->


        <!-- Modal -->
        <form action="PostDetails" id="post-form" method="post">
            <div class="modal fade" id="posta" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header gradiant-colors-2">
                            <h5 class="modal-title" id="exampleModalLabel">Post Details</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">

                            <div class="form-group">
                                <select class="form-control" name="cid">
                                    <option  selected disabled >---select Category---</option>
                                    <%
                                        PostDao ds = new PostDao(ConnectionProvider.getConnection());
                                        ArrayList<Category> list = ds.getallcategory();
                                        for (Category ob : list) {

                                    %>
                                    <option value="<%= ob.getCid()%>"><%= ob.getCname()%></option>
                                    <%
                                        }
                                    %>
                                </select>
                            </div>
                            <div class="form-group" >
                                <label>Title</label>
                                <input type="text" name="title" class="form-control" placeholder="Enter the Title" />
                            </div>
                            <div class="form-group">
                                <label> Post Content</label>
                                <textarea class="form-control" name="content" placeholder=" Enter the content" rows="6">
                                     
                                </textarea>
                            </div>
                            <div class="form-group">
                                <label>Programming code</label>
                                <textarea class="form-control" name="code" placeholder=" Enter the content" rows="6">
                                     
                                </textarea>
                            </div>
                            <div class="form-group" >
                                <label>Photo Upload</label>
                                <input type="file" name="pic" class="form-control"/>
                            </div>
                            <div class="container text-center">
                                <button type="submit" class="btn btn-primary form-control">Post</button>
                            </div>


                        </div>

                    </div>
                </div>
            </div> 
        </form>                     
        <!--post model end-->
        <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>
            $(document).ready(function () {
                let st = false;
                $('#profile-edit-button').click(function () {
//                    alert("button click")

                    if (st == false) {
                        $('#Profile_Details').hide();
                        $('#Profile_Edit').show();
                        $(this).text("Back")
                        st = true;
                    } else {
                        $('#Profile_Details').show();
                        $('#Profile_Edit').hide();
                        $(this).text("Edit")
                        st = false;
                    }
                });
            });
        </script>
        <!--form-javascript code-->
        <script>
            $(document).ready(function () {
                $('#post-form').on('submit', function (event) {
                    console.log("form clicked")
                    event.preventDefault();
                    let form = new FormData(this);
                    $.ajax({
                        url: 'PostDetails',
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {

//                           console.log(data);
                            if (data.trim() == 'done') {
                                swal("Thank You", "Your Post Saved Successfully !", "success");

                            }


                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            swal("Opps Wrong", "Something went wrong..try again !!", "error");

                        },
                        processData: false,
                        contentType: false

                    });
                });

            });
        </script>
        <script>
            function getpost(catid) {
                $.ajax({
                    url: "Load.jsp",
                    type: 'POST',
                    data: {cid:catid},
                    success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        $('#loder').hide();
                        $('#load-post').html(data);
                        
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        
                    }
                });

            };
            $(document).ready(function () {
                getpost(0);
                
            })
        </script>

    </body>
</html>
