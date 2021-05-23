import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class IncubatorFirebaseUser {
  IncubatorFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

IncubatorFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<IncubatorFirebaseUser> incubatorFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<IncubatorFirebaseUser>(
        (user) => currentUser = IncubatorFirebaseUser(user));
