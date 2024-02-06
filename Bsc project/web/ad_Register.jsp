<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Register </title>
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
        <form name="ad_register" action="ad_register" method="post">
        <div class="container">
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    
            <div class="container-fluid">
                 <div class="div2">
            <br><h1>Admin Register</h1><br>
        </div>
                <div class="div1">
           
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Full Name</label>
               
                    <input type="text" class="form-control" name="Fname" onkeypress="javascript:return isString(event)"  >
                </div>
                <div class="col-sm-1"></div>
            </div>
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Address</label>
                
                    <textarea class="form-control" name="Add"style="border:1px solid #3399ff;" onkeypress="javascript:return isAlphanumric(event)"> </textarea>
                </div>
                  <div class="col-sm-1"></div>
            </div>
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Email </label>
               
                    <input type="text" class="form-control"name="eid">
                </div>
                 <div class="col-sm-1"></div>
            </div>
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Contact </label>
               
                    <input type="text" class="form-control" maxlength="10" name="cno" onkeypress="javascript:return isNumber(event)">
                </div>
                 <div class="col-sm-1"></div>
            </div>
                    <br>
               <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Gender</label>
                
                     <select class="form-control"style="border:1px solid #3399ff;" name="gen">

                      <option disabled hidden selected>Select Gender</option>
                      <option value="1">Male</option>
                      <option value="2">Female</option>
                      <option value="3">Other</option>
                    </select>
                </div>
                 <div class="col-sm-1"></div>
            </div>
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>User Name</label>
                
                    <input type="text" class="form-control"name="uname">
                </div>
                 <div class="col-sm-1"></div>
            </div>
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Password </label>
                
                    <input type="password" class="form-control"name="pass">
                   </div>
                 <div class="col-sm-1"></div>
            </div>
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Confirm Password</label>
                
                    <input type="password" class="form-control"name="Cpass">
                </div>
                 <div class="col-sm-1"></div>
            </div>
            <br>
                                 
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <input type="submit" class="form-control btn btn-success" value="Register here" name="sub">
                 
                </div>
                 <div class="col-sm-1"></div>
            </div>
        </div>
            </div>
                    </div>
                <div class="col-sm-3"></div>
            </div>
        </div>
           </form> 
        
    </body>
</html>
