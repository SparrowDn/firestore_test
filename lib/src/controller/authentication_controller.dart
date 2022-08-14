import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AuthenticationController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _event();
  }

  void _event(){
    FirebaseAuth.instance.authStateChanges().listen((User? user) async{
      await login(user);
    });
  }

  Future<void> login(User? userAuth) async{
    if(userAuth == null) return;

    
  }
}