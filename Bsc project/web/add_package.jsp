<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add_Package </title>
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
        <form name="abc" action="Add_package" method="post">
        <div class="container">
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    
            <div class="container-fluid">
                 <div class="div2">
            <br><h1>Add Package</h1><br>
        </div>
                <div class="div1">
           
                    <br>
                    
                    <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>package id</label>
               
                    <input type="text" class="form-control" name="pid" onkeypress="javascript:return isNumber(event)"  >
                </div>
                <div class="col-sm-1"></div>
            </div>
                    <br>
                    
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Name</label>
               
                    <input type="text" class="form-control" name="name" onkeypress="javascript:return isAlphanumric(event)"  >
                </div>
                <div class="col-sm-1"></div>
            </div>
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Tour Type</label>
                    <select class="form-control"style="border:1px solid #3399ff;" name="Ttype">
                    <option disabled hidden selected>Select Tour type</option>
                    <option>GROUP TOUR</option>
                    <option>FAMILY TOUR</option>
                    <option>SPECIALITY TOUR</option>
                                        
                </select>
                </div>
                  <div class="col-sm-1"></div>
            </div>
                    <br>
                <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>price</label>
               
                    <input type="text" class="form-control" name="price" onkeypress="javascript:return isContactno(event)"  >
                </div>
                <div class="col-sm-1"></div>
            </div>
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Details </label>
                
                    <textarea class="form-control" name="det"style="border:1px solid #3399ff;" onkeypress="javascript :return isString(event)"></textarea>
                </div>
                 <div class="col-sm-1"></div>
            </div>
                    <br>
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Duration</label>
               
                    <input type="text" class="form-control" name="Duration" onkeypress="javascript:return isAlphanumric(event)"  >
                </div>
                <div class="col-sm-1"></div>
            </div>
                    <br>
             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Location</label>
                    </div>
                <div class="col-sm-4">
                  
                </div>
                
            </div>
                    <br>
                    
                     <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-4">
                     <input type="text" class="form-control" name="L_from" placeholder="from" onkeypress="javascript:return isString(event)">
                     
                </div>
                <div class="col-sm-4">
                     <input type="text" class="form-control" name="L_to" placeholder="To"  onkeypress="javascript:return isString(event)">
                </div>
                 <div class="col-sm-1"></div>
            </div><br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Choose your pic</label>
                    <input type="file" class="form-control" style="border:1px solid #3399ff;"name="Cfile">
                </div>
                 <div class="col-sm-1"></div>
            </div>
                    <br>
         
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="submit" name="sub" class="btn btn-primary" class="form-control" value="Insert">&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="submit" name="sub" class="btn btn-danger" class="form-control" value="Delete" >&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="submit" name="sub" class="btn btn-info"  class="form-control" value="Search" >&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="submit" name="sub" class="btn btn-success"  class="form-control" value="Update" >
                                    
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
