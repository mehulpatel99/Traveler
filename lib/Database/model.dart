class UserModel {
  int? id;
  String? name;
  String? email;
  String? pass;

  UserMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id ?? null;
    mapping['name'] = name;
    mapping['email'] = email;
    mapping['pass'] = pass;
    return mapping;
  }
}
