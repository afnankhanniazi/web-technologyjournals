function actionMethod() {
    let isValid = true;
  
    // Get form inputs
    const name = document.getElementById("name").value.trim();
    const email = document.getElementById("email").value.trim();
    const password = document.getElementById("password").value.trim();
    const phone = document.getElementById("phone").value.trim();
  
    // Get error spans
    const nameError = document.getElementById("nameError");
    const emailError = document.getElementById("emailError");
    const passwordError = document.getElementById("passwordError");
    const phoneError = document.getElementById("phoneError");
  
    // Clear previous errors
    nameError.textContent = "";
    emailError.textContent = "";
    passwordError.textContent = "";
    phoneError.textContent = "";
  
    // Validate Name
    if (name === "") {
      nameError.textContent = "Name is required.";
      isValid = false;
    }
  
    // Validate Email
    if (!email.endsWith("@bahria.edu.pk")) {
      emailError.textContent = "Email must end with @bahria.edu.pk.";
      isValid = false;
    }
  
    // Validate Password
    if (password.length < 6) {
      passwordError.textContent = "Password must be at least 6 characters.";
      isValid = false;
    }
  
    // Validate Phone
    if (!/^\d{10}$/.test(phone)) {
      phoneError.textContent = "Phone must be 10 digits.";
      isValid = false;
    }
  
    return isValid; // Prevent form submission if invalid
  }