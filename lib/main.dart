import 'package:emp_attendence/screens/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load();

  String supabaseUrl = dotenv.env['SUPABASE_URL'] ?? "";
  String supabaseKey = dotenv.env['SUPABASE_KEY'] ?? "";
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);

  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Employee Attendence",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Login(),
    );
  }
}
