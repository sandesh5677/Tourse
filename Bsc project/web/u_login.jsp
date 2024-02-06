<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>u_login </title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <style>
            .div1{
                background-color: white;
                border-bottom-left-radius: 50px;
            }
            .div2{
                background-color: #b30086;
                color:white;
                border-top-right-radius: 50px;
            }
            
           
            input[type=text]
            {
                
               border:1px solid #3399ff;
            }
            .div1{
                padding: 20px;
            }
            h1{
                text-align: center;
            }
            .container-fluid
            {
                margin-top: 50px;
                margin-bottom: 50px;
            }
           
                      
           
        </style>
        
    </head>
    
    <body style="background-image: url(Image/main.jpg)" >
        <form name="abc" action="userlogin" method="post">
        <div class="container">
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    
            <div class="container-fluid">
                 <div class="div2">
            <br><h1> Login</h1><br>
        </div>
                <div class="div1">
           
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label> Username</label>
               
                    <input type="text" class="form-control" name="uname" onkeypress="javascript:return isAlphanumric(event)"  >
                </div>
                <div class="col-sm-1"></div>
            </div>
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label> Password</label>
                
                    <input type="Password" class="form-control" name="passw">
                </div>
                  <div class="col-sm-1"></div>
            </div>
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <input type="submit" class="form-control btn btn-success" value="Login" name="sub"> 
                 
                </div>
                 <div class="col-sm-1"></div>
            </div>
                    <br>
                    <div class="row">
            <div class="col-sm-8"></div>
            <a href="u_register.jsp">Create account?</a>
                    
        </div>
            </div>
                    </div>
                <div class="col-sm-3"></div>
            </div>
        </div>
        </div>
        </form>
    </body>
</html>
