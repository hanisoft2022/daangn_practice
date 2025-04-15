import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// A mock authentication service using Riverpod's StateNotifier.
class DaangnAuth extends StateNotifier<bool> {
  DaangnAuth() : super(false);

  /// Whether user has signed in.
  bool get signedIn => state;

  /// Signs out the current user.
  Future<void> signOut() async {
    await Future<void>.delayed(const Duration(milliseconds: 200));
    state = false;
  }

  /// Signs in a user.
  Future<bool> signIn(String username, String password) async {
    await Future<void>.delayed(const Duration(milliseconds: 200));
    state = true;
    return state;
  }

  static String? guard(bool signedIn, GoRouterState state) {
    final bool signingIn = state.matchedLocation == '/signin';

    // Go to /signin if the user is not signed in
    if (!signedIn && !signingIn) {
      return '/signin';
    }
    // Go to /books if the user is signed in and tries to go to /signin.
    else if (signedIn && signingIn) {
      return '/';
    }

    // no redirect
    return null;
  }
}

/// Riverpod provider for BookstoreAuth.
final bookstoreAuthProvider = StateNotifierProvider<DaangnAuth, bool>((ref) => DaangnAuth());
