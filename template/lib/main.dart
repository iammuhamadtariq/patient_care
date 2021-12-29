import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/app/app_bloc_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  BlocOverrides.runZoned(
    () => null,
    blocObserver: AppBlocObserver(),
  );
}
