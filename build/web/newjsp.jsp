<%-- 
    Document   : newjsp
    Created on : Jul 9, 2022, 11:32:10 PM
    Author     : SANT JI
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="sant.entity.category"%>
<%@page import="com.dao.PostDao"%>
<%@page import="sant.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
                        <a class="nav-link" href="" data-toggle="modal" data-target="posta"> <i class="fa fa-bell" style="font-size:20px"></i>Do Post</a>
                   
       <div class="modal fade" id="posta" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">post Details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <select class="form-control">
                                    <option  selected disabled >---select Category---</option>
                                   
                                </select>
                            </div>
                            <div class="form-group" >
                                 <label>Title</label>
                                <input type="text" class="form-control" placeholder="Enter the Title" />
                            </div>
                            <div class="form-group">
                                 <label> Post Content</label>
                                <textarea class="form-control" placeholder=" Enter the content" rows="6">
                                     
                                </textarea>
                            </div>
                             <div class="form-group">
                                 <label>Programming code</label>
                                <textarea class="form-control" placeholder=" Enter the content" rows="6">
                                     
                                </textarea>
                            </div>
                            <div class="form-group" >
                                <label>Photo Upload</label>
                                <input type="file" class="form-control"/>
                            </div>
                        </form>
                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>             
                                
    </body>
</html>
