
   
 //valitation
 //name valitation
var patternAlpha = new RegExp("^[a-zA-Z]+$");
var CardHolderName = document.getElementById("name");
	
if(CardHolderName)
{
	CardHolderName.addEventListener("input", function(){
		var nameValue = document.getElementById("name").value;
		if(!patternAlpha.test(nameValue))
			{
				CardHolderName.setCustomValidity("Alphabet characters only allowed");
				CardHolderName.reportValidity();``
				return;
			}
		else
		{
			CardHolderName.setCustomValidity("");
			CardHolderName.reportValidity();
			return;
		}
	});
	
}

//phoneNumber valitation
var patternPNO = new RegExp("^[0-9]+$");
var CardNum = document.getElementById("cardNumber");
if(CardNum)
{
	
	CardNum.addEventListener("input",function()
	{
		var CardNumber = document.getElementById("cardNumber").value;
		if(!patternPNO.test(CardNumber))
			{
				CardNum.setCustomValidity("Enter a valid phone number");
				CardNum.reportValidity();
				return;
			}
		else
		{
			CardNum.setCustomValidity("");
			CardNum.reportValidity();
			return;
		}
		
	});
}