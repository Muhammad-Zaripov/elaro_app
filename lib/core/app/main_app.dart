import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/cart/presentation/blocs/bloc/cart_bloc.dart';
import '../../features/main/presentation/pages/main_screen.dart';
import '../di/di.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (_) => getIt<CartBloc>(),
      )
    ], child: const MaterialApp(home: MainScreen()));
  }
}
