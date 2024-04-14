import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../cubit/user_cubit.dart';
import '../presentation/currency_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _firstLoadLanguage();
  }

  String? firstCurrency = 'RUB';

  Future<String?> _firstLoadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('firstCurrency') ?? 'RUB';
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = ItemCubit('RUB');
        _firstLoadLanguage().then((value) {
          cubit.updateCurrency(value??""); // Обновляем значение currency
        });
        return cubit;
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                // Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
            title: const Text('Currency Converter'),
            centerTitle: true,
          ),
          body: const CurrencyScreen(),
        ),
      ),
    );
  }
}
