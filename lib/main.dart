import 'package:app_theme/core/app_bloc/app_bloc.dart';
import 'package:app_theme/core/app_themes.dart';
import 'package:app_theme/core/storage_helper/storage_helper.dart';
import 'package:app_theme/feature/main/presentation/home/home.dart';
import 'package:app_theme/main_page.dart';
import 'package:app_theme/widget_example.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String theme = prefs.getString('theme') ?? "light";
  runApp(MultiBlocProvider(providers: [
    BlocProvider<AppBloc>(
      create: (context) => AppBloc(theme),
    )
  ], child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AppBloc? appBloc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    appBloc = context.read<AppBloc>();
    appBloc!.add(InitEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Flutter Ui',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode:
              appBloc!.theme == "light" ? ThemeMode.light : ThemeMode.dark,
          home: MainPage(),
        );
      },
    );
  }
}
