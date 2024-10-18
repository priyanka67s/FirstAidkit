// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import '../model/login_model.dart';

// class AuthController {
//   final String apiUrl = "http://api.avessecurity.com:6378/api/users/login";

//   // Function to log in a user by sending a POST request to the API
//   Future<String?> login(LoginModel loginModel) async {
//     final response = await http.post(
//       Uri.parse(apiUrl),
//       headers: {
//         'Content-Type': 'application/json',
//       },
//       body: loginModel.toJson(),
//     );

//     print(response.body);

//     if (response.statusCode == 200) {
//       // Assuming the token is returned in the response body as a JSON field "token"
//       final responseData = json.decode(response.body);

//       return responseData['token'];
//     } else {
//       // Handle errors, e.g., invalid login credentials
//       return null;
//     }
//   }
// }
