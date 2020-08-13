class Validator {
  static dynamic checkEmail(String email) {
    if (email.isEmpty) return "E-mail vazio";
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);

    if (emailValid)
      return true;
    else
      return 'E-mail não validado';
  }
}
