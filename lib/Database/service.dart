import 'package:travellar/Database/model.dart';
import 'package:travellar/Database/repository.dart';

class UserService {
  late repositoy? _repository;

  UserService() {
    _repository = repositoy();
  }

  saveUser(UserModel? _usermodel) async {
    return await _repository?.insertdata('Test', _usermodel!.UserMap());
  }

  readuser() async {
    return await _repository?.getdata('Test');
  }

  Updatedata(UserModel? _usermodel) async {
    return await _repository?.updatedata('Test', _usermodel!.UserMap());
  }

  deletdata(UserModel? _usermodel) async {
    return await _repository?.deletdata('Test');
  }
}
