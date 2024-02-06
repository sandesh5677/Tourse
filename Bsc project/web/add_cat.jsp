<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add_Category </title>
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
    
    <body style="background-image: url(Image/main.jpg)">
        <form name="" action="Ad_cat" method="post">
        <div class="container">
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    
            <div class="container-fluid">
                 <div class="div2">
            <br><h1>Add Category</h1><br>
        </div>
                <div class="div1">
           
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Category id</label>
               
                    <input type="text" class="form-control" name="Cid" onkeypress="javascript:return isAlphanumric(event)"  >
                </div>
                <div class="col-sm-1"></div>
            </div>
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Name </label>
                
                    <input type="text" class="form-control"name="Name" value="<%=request.getAttribute("name")%>"onkeypress="javascript:return isString(event)">
                </div>
                  <div class="col-sm-1"></div>
            </div>
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Discription </label>
                
                    <textarea class="form-control" name="disc"style="border:1px solid #3399ff;" onkeypress="javascript :return isString(event)"><%=request.getAttribute("des")%> </textarea>
                </div>
                 <div class="col-sm-1"></div>
            </div>
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Choose your pic</label>
                    <input type="file" class="form-control" style="border:1px solid #3399ff;"name="file">
                </div>
                 <div class="col-sm-1"></div>
            </div>
                    <br>
         
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="submit" name="sub" class="btn btn-primary" class="form-control" value="Insert" >&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="submit" name="sub" class="btn btn-danger" class="form-control" value="Delete" >&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="submit" name="sub" class="btn btn-info"  class="form-control" value="search"  >&nbsp;&nbsp;&nbsp;&nbsp;
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
