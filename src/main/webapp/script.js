// Js for Header/Navbar

const currentLocation = window.location.href; // getting current url
const navLinks = document.querySelectorAll("header a"); // getting url for all anchor under header
for(let i=0;i<navLinks.length;i++) {
	if(navLinks[i].href === currentLocation) {
		navLinks[i].classList.add("active");
	}
}

// Js for Suggestion Form Inside homepage
function validateSuggestionForm() {
        let x = document.forms["suggestion-form"]["suggestion"].value;
        if (x == "" || x.trim().length === 0) {
			alert("Suggestion Form is required to Fill Out");
            return false;
        }
        return true;
}

// Js for Contact form Inside Contact Us page
function validateContactForm() {
		let name = document.forms["contact-form"]["name"].value;
        let email = document.forms["contact-form"]["email"].value;
        let message = document.forms["contact-form"]["message"].value;

        if (name.trim() === "" || email.trim() === "" || message.trim() === "") {
            alert('Please fill in all fields.');
            return false;
        }

        let emailPattern = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
        if (!emailPattern.test(email)) {
            alert('Please enter a valid email address.');
            return false;
        }

        return true;
}

// JS for appy loan form validation
function validateApplyLoanForm() {
        let form = document.forms["applyLoanForm"];
        let ltype = form["ltype"].value;
        let amount = form["amount"].value;
        let confirmAmount = form["confirmAmount"].value;
        if (ltype.trim() === '' || amount.trim() === '' || confirmAmount.trim() === '') {
            alert("All fields must be filled out");
            return false;
        }
        if(parseFloat(amount) < 0) {
			alert("Amount is required to be Positive");
			return false;
		}
        if (amount !== confirmAmount) {
            alert("Amounts do not match");
            return false;
        }
        return true; 
}

function validateDepositForm() {
        let form = document.forms["depositForm"];
        let amount = form["amount"].value;
        let confirmAmount = form["password"].value;
        if (amount.trim() === '' || confirmAmount.trim() === '') {
            alert("All fields must be filled out");
            return false;
        }
        if(parseFloat(amount) < 0) {
			alert("Amount is required to be Positive");
			return false;
		}
        if (amount !== confirmAmount) {
            alert("Amounts do not match");
            return false;
        }
        return true;
}

function validateCustomerSigninForm() {
        let form = document.forms["loginForm"];
        let accountNo = form["accountNo"].value;
        let password = form["pass"].value;
        if (accountNo.trim() === '' || password.trim() === '') {
            alert("Please enter both Account Number and Password");
            return false;
        }
        if (password.length < 7) {
            alert("Password must be at least 7 characters long");
            return false;
        }
        return true;
}

function validateSignupForm() {
        let form = document.forms["signupForm"];
        let password = form["password"].value;
        let confirmPassword = form["confirmpassword"].value;
        if (password.length < 7) {
            alert("Password must be at least 7 characters long");
            return false;
        }
        if (password !== confirmPassword) {
            alert("Passwords do not match");
            return false;
        }
        return true;
}

function validateTransferForm() {
        let form = document.forms["transferForm"];
        let receiverAcNo = form["acno"].value;
        let amount = form["amount"].value;
        let confirmAmount = form["confirmAmount"].value;
        if (receiverAcNo.trim() === '' || amount.trim() === '' || confirmAmount.trim() === '') {
            alert("All fields must be filled out");
            return false;
        }
        if(parseFloat(amount) < 0) {
			alert("Amount is required to be Positive");
			return false;
		}
        if (receiverAcNo.length !== 7 || parseInt(receiverAcNo) <= 6000000) {
            alert("Account number must be 7 digits long and greater than 6000000");
            return false;
        }
        if (amount !== confirmAmount) {
            alert("Amounts do not match");
            return false;
        }
        return true; 
}

function validateUpdateDetailsForm() {
        let form = document.forms["updateDetailsForm"];
        let name = form["name"].value;
        let email = form["email"].value;
        let phone = form["phone"].value;
        let pincode = form["pincode"].value;
        let password = form["password"].value;
        let confirmPassword = form["confirmpassword"].value;

		//email format validation using inbuilt function
        let emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            alert("Please enter a valid email address");
            return false;
        }
        if (name.trim() === '' || phone.trim() === '' || pincode.trim() === '' || password.trim() === '' || confirmPassword.trim() === '') {
            alert("All fields must be filled out");
            return false;
        }
        if (password.length < 7) {
            alert("Password must be at least 7 characters long");
            return false;
        }
        if (password !== confirmPassword) {
            alert("Passwords do not match");
            return false;
        }
        return true;
}

function validateWithdrawForm() {
        let form = document.forms["withdrawForm"];
        let amount = form["amount"].value;
        let confirmAmount = form["password"].value;
        if (amount.trim() === '' || confirmAmount.trim() === '') {
            alert("Please fill in both fields");
            return false;
        }
        if(parseFloat(amount) < 0) {
			alert("Amount is required to be Positive");
			return false;
		}
        if (amount !== confirmAmount) {
            alert("Amounts do not match");
            return false;
        }
        return true; 
}

function validateManagerLoginForm() {
        let form = document.forms["mLoginForm"];
        let password = form["pass"].value;
        if (password.length < 7) {
            alert("Password must be at least 7 characters long");
            return false;
        }
        return true; 
}

function validateEnquiryForm() {
        let accountNumber = document.forms["enquiryForm"]["ac-number"].value;
        if (accountNumber.length < 7) {
            alert("Account number must be at least 7 characters long");
            return false;
        }
        return true;
}