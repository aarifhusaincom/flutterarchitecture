// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:easy_localization/easy_localization.dart';
//
// import '../../core/app/app_routes.dart';
// import '../../viewmodels/auth_viewmodel.dart';
//
// import '../../core/helpers/validators.dart';
//
//
// class LoginView extends StatefulWidget {
//   const LoginView({super.key});
//
//   @override
//   State<LoginView> createState() => _LoginViewState();
// }
//
// class _LoginViewState extends State<LoginView> {
//   final _formKey = GlobalKey<FormState>();
//   final _email = TextEditingController();
//   final _password = TextEditingController();
//
//   @override
//   void dispose() {
//     _email.dispose();
//     _password.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final authVM = Provider.of<AuthViewModel>(context);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('login'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 controller: _email,
//                 decoration: InputDecoration(labelText: 'email'),
//                 validator: Validators.validateEmail,
//               ),
//               TextFormField(
//                 controller: _password,
//                 obscureText: true,
//                 decoration: InputDecoration(labelText: 'password'),
//                 validator: Validators.validatePassword,
//               ),
//               const SizedBox(height: 24),
//               PrimaryButton(
//                 label: 'login'),
//                 isLoading: authVM.isLoading,
//                 onPressed: () async {
//                   if (!_formKey.currentState!.validate()) return;
//                   final success = await authVM.login(
//                     _email.text.trim(),
//                     _password.text.trim(),
//                   );
//                   if (success && mounted) {
//                     Navigator.pushReplacementNamed(context, AppRoutes.home);
//                   } else if (!success && mounted) {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text(authVM.error ?? 'Error')),
//                     );
//                   }
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
