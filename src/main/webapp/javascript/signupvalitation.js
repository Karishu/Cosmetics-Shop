console.log("test");
     var LoginForm = document.getElementById("LoginForm");
     var RegForm = document.getElementById("RegForm");
     var Indicator = document.getElementById("Indicator");

   function register(){
       RegForm.style.transform = "translateX(0px)";
       LoginForm.style.transform = "translateX(0px)";
       Indicator.style.transform = "translateX(100px)";
   }

   function login(){
       RegForm.style.transform = "translateX(300px)";
       LoginForm.style.transform = "translateX(300px)";
       Indicator.style.transform = "translateX(0px)";
   }
   
   
 //valitation
 //name valitation
	var patternAlpha = new RegExp("^[a-zA-Z]+$");
	var nameText = document.getElementById("name");
	
if(nameText)
{
	nameText.addEventListener("input", function(){
		var nameValue = document.getElementById("name").value;
		if(!patternAlpha.test(nameValue))
			{
				nameText.setCustomValidity("Alphabet characters only allowed");
				nameText.reportValidity();``
				return;
			}
		else
		{
			nameText.setCustomValidity("");
			nameText.reportValidity();
			return;
		}
	});
	
}


//password valitation
   	var patternSmall = new RegExp("(?=.*[a-z])");
	var patternCab = new RegExp("(?=.*[A-Z])");
	var patternSpecial = new RegExp("(?=.*[!@#$%^&*])");
	var patternNumber = new RegExp("(?=.*[0-9])");
	
	var pass = document.getElementById("password1");
if(pass)
	
	pass.addEventListener("input",function()
	{
		pass.setCustomValidity("");
		//pass.reportValidity();
		var password =document.getElementById("password1").value;
		console.log(password);
		
	if(!patternSmall.test(password))
	 {
		pass.setCustomValidity("Password must contain atleast one small character");
		pass.reportValidity();
		return;
	 }
	 else
	 {
		if(!patternCab.test(password))
		 {
			pass.setCustomValidity("Password must contain atleast one capital character");
		 	pass.reportValidity();
		 	return;
		 }
		 else
		 {
			if(!patternSpecial.test(password))
	 			{
				pass.setCustomValidity("Password must contain atleast one special character");
				pass.reportValidity();
				return;
				}
				else
				{
					if(!patternNumber.test(password))
	 					{
							pass.setCustomValidity("Password must contain atleast one number");
							pass.reportValidity();
							return;
						}
						else
						{
							
								pass.setCustomValidity("");
								pass.reportValidity();
								return;
						}
				}
		}
	}
	});

//password match
	var pass2 = document.getElementById("password2");
if(pass2)
{
	pass2.addEventListener("input", function(){
    var passwordOne = document.getElementById("password1").value;
	var passwordTwo = document.getElementById("password2").value;
	
	if(passwordOne == passwordTwo)
	{
		pass2.setCustomValidity("");
		pass2.reportValidity();
		return;
	}
	else
	{
		pass2.setCustomValidity("Password mismatch");
		pass2.reportValidity();
		return;
	}
	});
}
	



//phoneNumber valitation
	var patternPNO = new RegExp("^[6-9]+[0-9]+$");
	var phone = document.getElementById("phoneNumber");
if(phone)
{
	
	phone.addEventListener("input",function()
	{
		var phoneNumber = document.getElementById("phoneNumber").value;
		if(!patternPNO.test(phoneNumber))
			{
				phone.setCustomValidity("Enter a valid phone number");
				phone.reportValidity();
				return;
			}
		else
		{
			phone.setCustomValidity("");
			phone.reportValidity();
			return;
		}
	});
}
	
	