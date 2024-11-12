class FormValidator {
  //  final email = _emailController.text;
  //   final password = _passwordController.text;

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "You must enter your email";
    } else if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(value)) {
      return "You must enter vaild email";
    }
    return null;
  }
  
  static String? validatePass(String? value) {
    if (value == null || value.isEmpty) {
      return "You must enter your pass";
    } else if (value.length < 8) {
      return "You must enter at least 8 char";
    } else if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]+$')
        .hasMatch(value)) {
      return "a password that must contain both letters and numbers";
    }
    return null;
  }

    static String? validateUserName(String? value) {
    if (value == null || value.isEmpty) {
      return "You must enter your User Name ";
    } 
    return null;
  }

   static String? checkConfirming(String? password, String? confirmPassword) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return "You must confirm your password";
    } else if (password != confirmPassword) {
      return "Passwords do not match";
    }
    return null;
  }
}
