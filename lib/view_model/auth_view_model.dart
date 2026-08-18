import 'package:flutter/material.dart';
import 'package:stepper/model/user.dart';
import 'package:stepper/service/auth_api.dart';


class AuthViewModel extends ChangeNotifier{
  late final AuthApi _authApi;
  User ? user;
  String? errorMessage;
  bool isLoading = false;

  AuthViewModel({AuthApi? authApi}){
    _authApi =authApi ?? AuthApi();
  }

  Future<bool> login(String username, String password) async{
    isLoading= true;
    notifyListeners();
    var successful= false;
    try{
      final result= await _authApi.login(username, password); 
      user=result.user;
      successful= true;
    }on AuthException catch(e){
      successful= false;
      errorMessage=e.message;
    }catch (e){
      successful= false;
      errorMessage=e.toString();
    }finally{
      notifyListeners();
    }
    isLoading = false;
    return successful;
  }
}
