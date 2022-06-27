const form = document.getElementById('form')
function printError(elemId, hintMsg) {
    console.log(elemId);
    document.getElementById(elemId).innerHTML = hintMsg;
}

form.addEventListener('submit', validateForm)

function validateForm(e) {
    e.preventDefault()
    var name = document.contactForm.name.value;
    var email = document.contactForm.email.value;
    var mobile = document.contactForm.mobile.value;
    var location = document.contactForm.country.value;
    var persons = document.contactForm.persons.value;
    var bookfor = [];
    var checkboxes = document.getElementsByName("bookfor[]");
    for(var i=0; i < checkboxes.length; i++) {
        if(checkboxes[i].checked) {
            bookforpush(checkboxes[i].value);
        }
    }
    
    var nameErr = emailErr = mobileErr = countryErr = personsErr = true;
    
    if(name == " ") {
        printError("nameErr", "Please enter your name");
    } else {
        var regex = /^[a-zA-Z\s]+$/;                
        if(regex.test(name) === false) {
            printError("nameErr", "Please enter a valid name");
        } else {
            printError("nameErr", " ");
            nameErr = false;
        }
    }
    
    if(email == " ") {
        printError("emailErr", "Please enter your email address");
    } else {
        var regex = /^\S+@\S+\.\S+$/;
        if(regex.test(email) === false) {
            printError("emailErr", "Please enter a valid email address");
        } else{
            printError("emailErr", "");
            emailErr = false;
        }
    }
    
    if(mobile == " ") {
        printError("mobileErr", "Please enter your mobile number");
    } else {
        var regex = /^[1-9]\d{9}$/;
        if(regex.test(mobile) === false) {
            printError("mobileErr", "Please enter a valid 10 digit mobile number");
        } else{
            printError("mobileErr", "");
            mobileErr = false;
        }
    }
    
    if(location == "Select") {
        printError("countryErr", "Please select your location");
    } else {
        printError("countryErr", "");
        locationErr = false;
    }
    
    if(!persons.length) {
        printError("personsErr", "Please select persons");
    } else {
        printError("personsErr", "");
        personsErr = false;
    }
    
    if((nameErr || emailErr || mobileErr || countryErr || personsErr) == true) {
       return false;
    } else {
        var dataPreview = "You've entered the following details: \n" +
                          "Full Name: " + name + "\n" +
                          "Email Address: " + email + "\n" +
                          "Mobile Number: " + mobile + "\n" +
                          "location: " + location + "\n" +
                          "persons: " + persons + "\n";
        if(hobbies.length) {
            dataPreview += "bookfor: " + bookfor.join(", ");
        }
        alert(dataPreview);
  
  
      }
};