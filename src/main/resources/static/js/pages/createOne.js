function displayAge(e) {
    var dob = new Date(e.target.value);
    var age = new Date().getFullYear() - dob.getFullYear();

    document.getElementById("age").innerText = age;

    setTimeout(function() {
        Swal.fire({
            icon: 'info',
            title: 'Age',
            text: 'Your age is ' + age,
            timer: 2000, // Auto close after 2 seconds
            showConfirmButton: false
        });
    }, 3000); // Display age after 3 seconds
}


//dob less then 2006 does'nt print
document.addEventListener("DOMContentLoaded", function () {
   var maxDate = new Date();
maxDate.setFullYear(maxDate.getFullYear() - 18);
        
var minDate = new Date();
minDate.setFullYear(minDate.getFullYear() + 60);

var formattedMaxDate = maxDate.toISOString().split('T')[0];
let formattedMinDate = minDate.toISOString().split('T')[0];
let dob = document.getElementById("dob");
dob.setAttribute("max", formattedMaxDate);
        //dob.setAttribute("min", formattedMinDate)
    });
    

function verifyPassword(password) {
    var pattern = /^(?=.*[a-z])(?=.*[0-9])(?=.*[@#$%^&+=])(?=\S+$).{8,}$/;

    if (pattern.test(password)) {
        return true;
    } else {
        return false;
    }
}

function checkPasswords() {
    var password1 = document.getElementById("password1").value;
    var password2 = document.getElementById("password2").value;

    if (password1 !== password2) {
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Passwords do not match!'
        });
        return false;
    }

    if (!verifyPassword(password1)) {
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Password must start with lowercase letters, followed by numbers and special characters, and be at least 8 characters long! example: exampele@123'
        });
        return false;
    }
    
    Swal.fire({
        icon: 'success',
        title: 'Success!',
        text: 'Passwords matched and meet criteria. Proceed with form submission!',
           showCancelButton: true,
           confirmButtonText: 'Yes, proceed',
    });
    return true;
}