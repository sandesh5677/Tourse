<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking </title>
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
        <form name="uregister" action="Booking" method="post">
        <div class="container">
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    
            <div class="container-fluid">
                 <div class="div2">
            <br><h1>Booking</h1><br>
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
                    <label>Email Id</label>
                
                    <input type="text" class="form-control"name="eid">
                </div>
                  <div class="col-sm-1"></div>
            </div>
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Mobile NO</label>
               
                    <input type="text" class="form-control" maxlength="10" name="mno" onkeypress="javascript:return isContactno(event)">
                </div>
                 <div class="col-sm-1"></div>
            </div>
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Aadhar card no</label>
               
                    <input type="text" class="form-control" maxlength="12" name="ano" onkeypress="javascript:return isNumber(event)">
                </div>
                 <div class="col-sm-1"></div>
            </div>
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Package Name</label>
                
                    <input type="text" class="form-control"name="Pname" onkeypress="javascript:return isString(event)">
                </div>
                 <div class="col-sm-1"></div>
            </div>
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Packge Type:</label>
                
                    <select class="form-control" style="border:1px solid #3399ff;" name="Ptype" >
>
                      <option disabled hidden selected>Select Tourse</option>
                      <option value="1">FAMILY TOURSE</option>
                      <option value="2">GROUP TOURSE</option>
                      <option value="3">SPECIALITY TOURSE</option>
                    </select>
                   </div>
                 <div class="col-sm-1"></div>
            </div>
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Price</label>
                
                    <input type="text" class="form-control"name="price"onkeypress="javascript:return isNumber(event)">
                </div>
                 <div class="col-sm-1"></div>
            </div>
            <br>
            
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Date Of Travel</label>
               
                    <input type="date" class="form-control"style="border:1px solid #3399ff;" name="date">
                </div>
                 <div class="col-sm-1"></div>
            </div>
            <br>
          
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <input type="submit" class="form-control btn btn-success" value="Book Your Tour" name="sub">
                 
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
