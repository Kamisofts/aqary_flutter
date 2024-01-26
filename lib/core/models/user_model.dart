
class User {
  String firstName;
  String lastName;
  String email;

  User({required this.firstName, required this.lastName, required this.email});
}

class UserInfoBuilder {
  String? firstName;
  String? lastName;
  String? email;

  UserInfoBuilder setFirstName(String name) {
    firstName = name;
    return this;
  }

  UserInfoBuilder setLastName(String name) {
    lastName = name;
    return this;
  }

  UserInfoBuilder setEmail(String userEmail) {
    email = userEmail;
    return this;
  }

  User build() {
    return User(
      firstName: firstName ?? '',
      lastName: lastName ?? '',
      email: email ?? '',
    );
  }
}