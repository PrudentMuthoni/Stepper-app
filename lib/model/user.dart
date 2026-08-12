class User {
  final int id;
  final String username;
  final String email;
  final String firstname;
  final String lastname;
  final String gender;
  final String image;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.firstname,
    required this.lastname,
    required this.gender,
    required this.image,
  });
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      firstname: json['firstname'],
      lastname: json['lastname'],
      gender: json['gender'],
      image: json['image'],
    );
  }
}
