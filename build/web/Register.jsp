<%-- 
    Document   : Register
    Created on : Jun 13, 2022, 3:30:57 PM
    Author     : SANT JI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
        <link href="css/style.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>

        <%@include  file="N_navbar.jsp" %>
        <div class="container-fluid">
            <div class="row align-items-center">

                <div class="col-lg-4 offset-md-4"> 
                    <div class="card m-5 gradiant-colors-1 border-success shadow " style="box-shadow:1px 4px 4px 4px #9a9c99">
                        <div class="card-body mx-auto text-center">
                            <!--form start-->

                            <form action="Register" method="post" id="reform">
                                <i class="fa-solid fa-user-plus" style="color:white;font-size:32px"></i>
                                <h4 class="cti mt-3">Create A New Registration</h4>
                                <p>This form is allow only for you</p>
                                <a href="#" class="btn btn-block btn-danger"><i class="fa fa-google mr-1" style="font-size:18px"></i>Login vai Google</a>
                                <a href="#" class="btn btn-block btn-primary"><i class="fa fa-facebook mr-1" style="font-size:20px"></i>Login vai Facebook</a>
                                <p class="divider" >
                                    <span >OR</span>
                                </p>



                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1"><i class="fa-solid fa-user"></i></span>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Enter the Name " name="uname" aria-label="Username" aria-describedby="basic-addon1" required>
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1"><i class="fa-regular fa-envelope"></i></span>
                                    </div>
                                    <input type="email" class="form-control" placeholder="Enter the Email" name="uemail" aria-label="email" aria-describedby="basic-addon1" required>
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1"><i class="fa-solid fa-phone"></i></span>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Enter the Phone Number" name="uphone" aria-label="Username" aria-describedby="basic-addon1" required>
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1"><i class="fa-solid fa-users"></i></span>
                                    </div>
                                    <select class="form-control form-select" name="utype" required>
                                        <option>---Select Type--- </option>
                                        <option>Student</option>
                                        <option>Teacher</option>
                                        <option>Admin</option>
                                    </select>
                                </div>
                                <div class="form-group mb-3" style="font-size:20px;color:white">
                                    <label>Gender </label>
                                    <input type="radio"  name="ugender" value="Male" required=""/>Male
                                    <input type="radio"  name="ugender" value="Female" required=""/>Female
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1"><i class="fa-solid fa-key"></i></span>
                                    </div>
                                    <input type="password" class="form-control" placeholder="Enter the Password" name="upassword" aria-label="Username" aria-describedby="basic-addon1" required="">
                                </div>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1"><i class="fa-solid fa-key"></i></span>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Enter Confirm Password" name="ucpassword" aria-label="Username" aria-describedby="basic-addon1" required="">
                                </div>
                                
                                

                                <div class="form-check mb-2 mr-sm-2">
                                    <input class="form-check-input" name="check" type="checkbox" id="inlineFormCheck">
                                    <label class="form-check-label" for="inlineFormCheck">
                                        Term and Condition 
                                    </label>
                                </div>
                                <div id="loader" class="container" style="display:none">

                                    <i class="fa fa-spinner fa-spin fa-4x" aria-hidden="true"></i>
                                    <h3>please wait.....</h3>
                                </div>
                                <input href="#" id="btn-sum" class="btn btn-block btn-success btnmy" type="submit" value="Registration Now"/>
                                <input href="#" class="btn btn-block btn-danger" type="reset" value="Reset" />
                                <p>Have In Account ? <a href="Login.jsp" style="color:white">Login</p>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <script>
        $(document).ready(function () {
            console.log("loaded")
            $('#reform').on('submit', function (event) {
                event.preventDefault();

                let form = new FormData(this);
                $("#btn-sum").hide();
                $("#loader").show();
                $.ajax({
                    url: "Register",
                    type: 'post',
                    data: form,
                    success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        $("#btn-sum").show();
                        $("#loader").hide();
                        if(data.trim()==='done')
                        {
                        swal("Register Successfully")
                                .then((value) => {
                                    window.location="Login.jsp";
                                });
                            }else{
                                swal(data);
                            }
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        $("#btn-sum").show();
                        $("#loader").hide();
                       swal("Something went Wrong.. Please Try again");
                    },
                    processData: false,
                    contentType: false
                });

            });
        });
    </script>
</body>
</html>

