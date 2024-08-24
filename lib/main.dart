import 'package:flutter/material.dart';
import 'package:interwiew_assignment/provider/data_provider.dart';
import 'package:interwiew_assignment/routes/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => DataProvider())
    ],
    child: MyApp(),
  ));
  // runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    context.read<DataProvider>().loadData();
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(useMaterial3: true,
        dropdownMenuTheme: DropdownMenuThemeData(inputDecorationTheme: InputDecorationTheme(
          enabledBorder: InputBorder.none,floatingLabelBehavior: FloatingLabelBehavior.never,
          border: InputBorder.none,
        )),
        brightness: Brightness.dark,),
      initialRoute: AppRoutes.dashboard,
      routes: AppRoutes.routes,
    );
  }
}

