import 'package:firebase_messaging/firebase_messaging.dart';

class FireNotif{
  final fireNotif = FirebaseMessaging.instance;

  Future<void> initNotifs() async {
    await fireNotif.requestPermission();

    final fcmToken = await fireNotif.getToken();
    print(fcmToken.toString());
  }
}