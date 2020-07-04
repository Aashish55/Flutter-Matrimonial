import 'dart:async';
import 'dart:convert';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meta/meta.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;

final FirebaseAuth _auth = FirebaseAuth.instance;

class UserRepository {
  Future<void> deleteToken() async {
    _auth.signOut();
    GoogleSignIn().signOut();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('token');
    return;
  }

  Future<String> hasToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('token');
    if (token != null) {
      return (token != null) ? token : null;
    }
  }

  Future<dynamic> getToken({String idToken}) async {
    try {
      Map<String, dynamic> data = {'access_token': idToken};

      http.Response response;

      response = await http.post(
        'https://24b2b0cac49b.ngrok.io/accounts/api/auth-token/',
        body: json.encode(data),
        headers: {'Content-Type': 'application/json'},
      );
      final Map<String, dynamic> responseData = json.decode(response.body);
      print(responseData['token']);
      if (responseData.containsKey('token')) {
        final SharedPreferences prefs = await SharedPreferences.getInstance();

        prefs.setString('token', responseData['token']);

        return responseData['token'];
      } else {
        throw responseData['non_field_errors'];
      }
    } catch (e) {
      throw e.toString();
    }
  }

  Future<dynamic> signUp({String email, String password}) async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .catchError((onError) => throw onError.code);
    } catch (e) {
      throw (e.toString());
    }
  }
}
