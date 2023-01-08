<html>
  <head>
    <meta charset="utf-8">
    <title>Form</title>
    <%@ include file="./base.jsp" %>
    <style>
   
    body{
  background: url(http://wrbbradio.org/wp-content/uploads/2016/10/grey-background-07.jpg) no-repeat center fixed;
  background-size: cover;
}

.container{
background: #2d3e3f;
width: 350px;
height: 400px;
padding-bottom: 20px;
position: absolute;
top:50%;
left: 50%;
transform: translate(-50%, -50%);
margin: auto;
  padding: 70px 50px 20px 50px;
}


.fl{
float: left;
  width: 110px;
  line-height: 35px;
}

.fontLabel{
  color: white;
}

.fr{
float: right;
}

.clr{
clear: both;
}

.box{
width: 360px;
height: 35px;
margin-top: 10px;
font-family: verdana;
font-size: 12px;
   
}

.textBox{
height: 35px;
width: 190px;
border: none;
  padding-left: 20px;
}

.new{
  float: left;
}

.iconBox{
height: 35px;
width: 40px;
line-height: 38px;
text-align: center;
  background: #ff6600;
}

.radio{
color: white;
background: #2d3e3f;
line-height: 38px;
}

.terms{
line-height: 35px;
text-align: center;
background: #2d3e3f;
color: white;
}

.submit{
float: right;
border: none;
color: white;
width: 110px;
height: 35px;
background: #ff6600;
text-transform: uppercase;
  cursor: pointer;
}

.test{
float: right;
border: none;
color: white;
width: 110px;
height: 35px;
background: #ff6600;
text-transform: uppercase;
margin-right: 14px
  cursor: pointer;
}

::-webkit-input-placeholder { /* Chrome/Opera/Safari */

}
    </style>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body>
    <!-- Body of Form starts -->
  <div class="container">
  <div><h1 class ="text-center mb-3">Fill the Product details</h1></div>
      <form method="post" autocomplete="on" action="handle-product">
        <!--First name-->
    <div class="box">
          <label for="firstName" class="fl fontLabel"> Product Name: </label>
    <div class="new iconBox">
            <i class="fa fa-user" aria-hidden="true"></i>
          </div>
    <div class="fr">
    <input type="text" id="name" name="name" placeholder="Product Name"
              class="textBox" autofocus="on" required>
    </div>
    <div class="clr"></div>
    </div>
    <!--First name-->

        <!--Second name-->
    <div class="box">
          <label for="secondName" class="fl fontLabel"> Product Details: </label>
    <div class="fl iconBox"><i class="fa fa-user" aria-hidden="true"></i></div>
    <div class="fr">
    <textarea required name="description" name="description"
              placeholder="Enter the product description" class="textBox"></textarea>
    </div>
    <div class="clr"></div>
    </div>
    <!--Second name-->

    <!---Phone No.------>
    <div class="box">
          <label for="phone" class="fl fontLabel"> Product Price: </label>
    <div class="fl iconBox"><i class="fa-duotone fa-indian-rupee-sign"></i></div>
    <div class="fr">
    <input type="text" id="price" name="price" required  maxlength="10" placeholder="Enter Product Price" class="textBox">
    </div>
    <div class="clr"></div>
    </div>
    <!---Phone No.---->
    <!---Submit Button------>
    <div class="box" style="background: #2d3e3f">
    <input type="Submit" name="Submit" class="submit" value="SUBMIT">
    <a href="${pageContext.request.contextPath }/home" class=test>Back</a>
       </div>
      </form>
  </div>
  <!--Body of Form ends--->
  </body>
</html>