
// import 'package:flutter/material.dart';

// import '../controller/login_controller.dart';
// import '../model/login_model.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController userController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   bool _isHidden = true;

 
//   final AuthController _authController = AuthController();

//   Future<void> _login() async {
//     if (_formKey.currentState!.validate()) {
//       final loginModel = LoginModel(
//         username: userController.text,
//         password: passwordController.text,
//       );
//       final token = await _authController.login(loginModel);

//       if (token != null) {
//         context.read<TokenProvider>().token = token;
//         context.read<UserDataProvider>().userName = userController.text;
//         await storage.write(key: 'token', value: token);
//         Navigator.pushReplacement(
//           // ignore: use_build_context_synchronously
//           context,
//           MaterialPageRoute(builder: (context) => const BottomScreen()),
//         );
//       } else {
//         // ignore: use_build_context_synchronously
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Login failed. Please try again.')),
//         );
//       }
//       clearTextField();
//     }
//   }

//   void _togglePasswordView() {
//     setState(() {
//       _isHidden = !_isHidden;
//     });
//   }

//   void clearTextField() {
//     userController.clear();
//     passwordController.clear();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue[200],
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const SizedBox(height: 80),
//                 Image.asset(
//                   'assets/images/aveslogo.png',
//                   width: 200,
//                   height: 200,
//                 ),
//                 const SizedBox(height: 20),
//                 TextFormField(
//                   controller: userController,
//                   decoration: const InputDecoration(
//                     labelText: 'User Name',
//                     prefixIcon: Icon(Icons.person),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(20)),
//                     ),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your username';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 20),
//                 TextFormField(
//                   controller: passwordController,
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     prefixIcon: const Icon(Icons.lock),
//                     border: const OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(20)),
//                     ),
//                     suffixIcon: InkWell(
//                       onTap: _togglePasswordView,
//                       child: Icon(
//                         _isHidden ? Icons.visibility_off : Icons.visibility,
//                       ),
//                     ),
//                   ),
//                   obscureText: _isHidden,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your password';
//                     }
//                     return null;
//                   },
//                 ),
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: TextButton(
//                     onPressed: () {
//                       // Forgot password functionality
//                     },
//                     child: const Text(
//                       'Forgot Password',
//                       style: TextStyle(
//                         color: Colors.black45,
//                         decoration: TextDecoration.underline,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.blue,
//                     ),
//                     onPressed: _login,
//                     child: const Text(
//                       'LOGIN',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text("Does not have an account?"),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const CreateAccountScreen(),
//                           ),
//                         );
//                       },
//                       child: const Text(
//                         'Sign Up',
//                         style: TextStyle(
//                           color: Colors.blueGrey,
//                           fontSize: 15,
//                           decoration: TextDecoration.underline,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
