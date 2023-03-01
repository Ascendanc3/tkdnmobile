import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TKDNTestFirebaseUser {
  TKDNTestFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

TKDNTestFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TKDNTestFirebaseUser> tKDNTestFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TKDNTestFirebaseUser>(
      (user) {
        currentUser = TKDNTestFirebaseUser(user);
        return currentUser!;
      },
    );
