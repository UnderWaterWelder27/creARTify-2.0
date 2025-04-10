import 'package:creartify/core/theme/theme_light.dart';
import 'package:creartify/di/storage_injector.dart';
import 'package:creartify/generated/l10n.dart';
import 'package:creartify/presentation/main_nav_page/children/home_page/bloc/home_page_cubit.dart';
import 'package:creartify/presentation/main_nav_page/children/profile_page/bloc/profile_cubit.dart';
import 'package:creartify/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configurePresentationStorages();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static BuildContext get globalContext => navigatorKey.currentState!.context;

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => HomePageCubit()),
        BlocProvider(create: (_) => ProfileCubit()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        theme: ThemeLight.light,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
