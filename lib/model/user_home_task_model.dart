class UserHomeTaskModel{
  String? email;
  String? password;

  UserHomeTaskModel({this.email,this.password});

  UserHomeTaskModel.from({this.email,this.password});

  UserHomeTaskModel.fromJson(Map<String,dynamic> json):
        email = json['email'],
        password = json['password'];

  Map<String,dynamic> toJson() => {
    'email' : email,
    'password' : password,
  };
}