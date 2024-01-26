
class User {
  final String firstName;
  final String lastName;
  final String email;

  User({required this.firstName, required this.lastName, required this.email});
}

class UserBuilder {
  String? firstName;
  String? lastName;
  String? email;

  UserBuilder withFirstName(String name) {
    firstName = name;
    return this;
  }

  UserBuilder withLastName(String name) {
    lastName = name;
    return this;
  }

  UserBuilder withEmail(String userEmail) {
    email = userEmail;
    return this;
  }

  User build() {
    if (firstName == null || lastName == null || email == null) {
      throw Exception("User information is incomplete");
    }
    return User(firstName: firstName!, lastName: lastName!, email: email!);
  }
}


