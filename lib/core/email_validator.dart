bool isEmailValid(String email) {
  // Define a regular expression for a simple email pattern
  final RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

  // Check if the provided email matches the regex pattern
  return emailRegex.hasMatch(email);
}