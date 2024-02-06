<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
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
        <form name="abc" action="Payment" method="post">
        <div class="container">
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    
            <div class="container-fluid">
                 <div class="div2">
            <br><h1> Payment</h1><br>
        </div>
                <div class="div1">
           
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Card No. </label>
               
                    <input type="text" class="form-control" maxlength="16" name="Cno" onkeypress="javascript:return isNumber(event)"  >
                </div>
                <div class="col-sm-1"></div>
            </div>
                    <br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Card Holder Name </label>
                
                    <input type="text" class="form-control"name="CHN" onkeypress="javascript:return isString(event)">
                </div>
                  <div class="col-sm-1"></div>
            </div>
                    <br>
                    
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>CVV</label>
                    </div>
                <div class="col-sm-4">
                  
                </div>
                
            </div>
                   
                    
                     <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="cvv" maxlength="03"  onkeypress="javascript:return isNumber(event)">
                     
                </div>
                </div><br>
            
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <label>Expiry Date</label>
                
                    <input type="date" class="form-control" style="border: 1px solid #3399ff;" name="Expdate">
                </div>
                 <div class="col-sm-1"></div>
            </div>
                    <br>
         
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    
                    <input type="submit" name="sub" class="btn btn-success"  class="form-control" value="Pay" >
                    <input type="submit" name="sub" class="btn btn-danger"  class="form-control" value="Cancle" >
                                    
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
