
function validateForm()
{
var x=document.forms["myForm"]["fname"].value;
if (x==null || x=="")
{
alert("First name must be filled out");
return false;
}

var x=document.forms["myForm"]["lastname"].value;
if (x=null || x=="")
{
alert("Last name must be filled out");
return false;
}

var x=document.forms["myForm"]["email"].value;
if (x==null || x=="")
{
alert("Email must be filled out");
return false;
}

var x=document.forms["myForm"]["phonenumber"].value;
	if (isNaN(x) || x < 1)
{
	alert("Phonenumber is invalid");
    return false;
  } 
	  
}



