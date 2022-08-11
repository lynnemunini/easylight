//This model defines the fields that can be extracted from the table in the database.
class User {
  int id;
  String phoneNumber;
  String email;
  String meterNumber;
  String password;

  User(this.id, this.phoneNumber, this.email, this.meterNumber, this.password);

  User.fromMap(Map<String, dynamic> item)
      : id = item["id"],
        phoneNumber = item["phoneNumber"],
        email = item["email"],
        meterNumber = item["meterNumber"],
        password = item["password"];

  Map<String, Object> toMap() {
    return {
      'id': id,
      'phoneNumber': phoneNumber,
      'email': email,
      'meterNumber': meterNumber,
      'password': password
    };
  }
}
