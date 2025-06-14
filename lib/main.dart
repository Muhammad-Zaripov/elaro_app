import 'package:eloro_app_for_home_work/core/di/di.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'core/app/main_app.dart';
import 'features/cart/data/models/cart_item_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpService();
  await Hive.initFlutter();
  Hive.registerAdapter(CartItemModelAdapter());
  await Hive.openBox<CartItemModel>('cartBox');
  runApp(const MainApp());
}
