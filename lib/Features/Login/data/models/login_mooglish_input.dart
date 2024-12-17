class LoginMooglishInput {
  final String email;
  final String password;

  LoginMooglishInput({required this.email, required this.password});

  tojson() => {
        'email': email,
        'password': password,
      };
}
