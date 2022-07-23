import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TestTrackerAppFirebaseUser {
  TestTrackerAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

TestTrackerAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TestTrackerAppFirebaseUser> testTrackerAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TestTrackerAppFirebaseUser>(
            (user) => currentUser = TestTrackerAppFirebaseUser(user));
