<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Feedback</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    .box{
    display:none;
    }
    </style>
</head>
<body>
<div class="container-fluid" style="padding-left:0px;padding-right:0px"> 
		<img src="images/banner_photo.png" width="100%">
		<div class="col-md-8 col-xs-12 col-sm-12 col-md-offset-2">
			<center><h2>Feedback</h2></center>
			<form method="POST" action="SimpleServlet">
				<div class="form-group">
									<br/>
									
									<b><span style="color:#FF0000">*</span>Location:</b>
									<div class="btn-group" data-toggle="buttons" required>
									<label class="btn btn-default">
									<input name="loc" value="Pune" type="radio" required>Pune</label>
									<label class="btn btn-default">
									<input name="loc" value="Delhi" type="radio">Delhi</label>
									</div>
									<br/>
									<br/>
									<b><span style="color:#FF0000">*</span>Name:</b>
									<input type="text" class="form-control input-sm"
										id="name" name="name" placeholder="Please enter your full name"
										 required>
									<br/>
									
									<b><span style="color:#FF0000">*</span>Email ID:</b>
									<input type="email" class="form-control input-sm"
										id="emailid" name="emailid" placeholder="Please enter valid email id"
										 required>
									<br/>
									
									<b><span style="color:#FF0000"></span>Mobile Number:</b>
									<input type="text" class="form-control input-sm"
										id="mobile" name="mobile" placeholder="Please enter your mobile number">
									<br/>
									<b><span style="color:#FF0000"></span>Organization:</b>
									<input type="text" class="form-control input-sm"
										id="org" name="org" placeholder="Please enter your Organization name">
										 
									<br/>
									
      								<b><span style="color:#FF0000">*</span>How would you rate the overall session?</b>
      									<span class="starRating" style="background-color:#33cccc">
        								<input id="rating5" type="radio" name="rating" value="5">
        								<label for="rating5">5</label>
        								<input id="rating4" type="radio" name="rating" value="4">
        								<label for="rating4">4</label>
								        <input id="rating3" type="radio" name="rating" value="3" >
								        <label for="rating3">3</label>
								        <input id="rating2" type="radio" name="rating" value="2">
								        <label for="rating2">2</label>
								        <input id="rating1" type="radio" name="rating" value="1">
								        <label for="rating1">1</label>
									      </span>
									<br/>
									<br/>
									
									<b><span style="color:#FF0000">*</span>What did you like in the session?</b>
									<textarea type="text" class="form-control input-sm"
										id="likesession" name="likesession" placeholder="Please enter what you liked in the session" required></textarea>
									<br/>
									<b><span style="color:#FF0000"></span>Any additional support required from IBM team?</b>
									<textarea type="text" class="form-control input-sm"
										id="addnsupport" name="addnsupport" placeholder="Please enter if you require any additional support required"></textarea>
									<br/>
									<b><span style="color:#FF0000"></span>Comments:</b>
									<textarea type="text" class="form-control input-sm"
										id="comments" name="comments" placeholder="Any comments?"></textarea>
									<br/>
									<div class="checkbox">
    								<label>
      								<input type="checkbox" name="interested" value="Yes" checked>&nbsp;Will you like to receive future communication on IBM Developer Events and Activities? 
   									 </label>
 									 </div>
									</div>
									<br/>
									<div class="col-md-6 col-md-offset-3">
									<input type="submit" class="btn btn-primary btn-lg btn-block"
										 value="Submit">
									<br/>
								</div>	
							
			</form>
		</div>
		
	</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>