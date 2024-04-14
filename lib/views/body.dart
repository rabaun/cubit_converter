import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';
import '../cubit/user_cubit.dart';
import '../data/models/model.dart';

class CurrencyBody extends StatefulWidget {
  const CurrencyBody({Key? key, required this.model}) : super(key: key);
  final MyModel? model;

  @override
  State<CurrencyBody> createState() => _CurrencyBodyState();
}

class _CurrencyBodyState extends State<CurrencyBody> {
  @override
  void initState() {
    super.initState();
    _firstLoadLanguage();
    _secondLoadLanguage();
  }

  String? currency;

  String? firstCurrency = 'RUB';
  String? secondCurrency = 'USD';

  int firstIndex = 0;
  int secondIndex = 0;

  String? firstCodeTo = '';
  String? secondCodeTo = '';

  double? firstRate = 0;
  double? first = 0;

  double? secondRate = 0;
  double? secondRateResult = 0;

  final TextEditingController _firstFromController = TextEditingController();

  Future<void> _firstSetLanguage(String currency) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('firstCurrency', currency);
    setState(() {
      firstCurrency = currency;
    });
  }

  Future<String?> _firstLoadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      firstCurrency = prefs.getString('firstCurrency') ?? 'RUB';
    });
    return firstCurrency;
  }

  Future<String?> _secondLoadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      secondCurrency = prefs.getString('secondCurrency') ?? 'USD';
    });
    return secondCurrency;
  }

  Future<void> _secondSetLanguage(String currency) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('secondCurrency', currency);
    setState(() {
      secondCurrency = currency;
    });
  }

  firstDropdownButtonWidget() {
    var currency = firstCurrency;
    return Container(
        alignment: Alignment.center,
        width: 35,
        height: 40,
        decoration: BoxDecoration(
            color: const Color(0xfff5f5dc),
            border: Border.all(),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: DropdownButton<String>(
          value: currency,
          // icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          underline: Container(),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              List<MapEntry<String, double>>? conversionRatesList =
                  widget.model?.conversionRates!.entries.toList();
              firstCodeTo = conversionRatesList?[firstIndex].key.toString();
              print("это firstCodeTo $firstCodeTo");

              context.read<ItemCubit>().addItem(firstCodeTo);
              currency = value!;
              _firstSetLanguage(value.toString());
              firstIndex = conversionRatesList?.indexWhere((entry) => entry.key == value) ?? 0;
            });
          },
          items: Widgets.currencyList.map<DropdownMenuItem<String>>((String? value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Row(
                children: [
                  Text(value!.toString()),
                ],
              ),
            );
          }).toList(),
        ));
  }

  secondDropdownButtonWidget() {
    currency = secondCurrency;
    return Container(
        alignment: Alignment.center,
        width: 35,
        height: 40,
        decoration: BoxDecoration(
            color: const Color(0xfff5f5dc),
            border: Border.all(),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: DropdownButton<String>(
          underline: Container(),
          value: currency,
          // icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              var baseCode = widget.model?.baseCode;
              List<MapEntry<String, double>>? conversionRatesList =
                  widget.model?.conversionRates!.entries.toList();

              currency = value!;
              _secondSetLanguage(value.toString());
              secondIndex = conversionRatesList?.indexWhere((entry) => entry.key == value) ?? 0;
              print("это индекс $secondIndex");

              firstRate = conversionRatesList?[firstIndex].value ?? 0;
              first = (firstRate! / firstRate!) ?? 0;
              print("Это firstRate ${firstRate}");

              secondRate = conversionRatesList![secondIndex].value;

              double firstValue = double.parse(_firstFromController.text);
              secondRateResult = conversionRatesList[secondIndex].value * firstValue;
              print("Это secondRate ${secondRateResult}");

              secondCodeTo = conversionRatesList[secondIndex].key.toString();
            });
          },
          items: Widgets.currencyList.map<DropdownMenuItem<String>>((String? value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Row(
                children: [
                  Text(value!.toString()),
                ],
              ),
            );
          }).toList(),
        ));
  }

  firstRowWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.fromLTRB(8, 5, 0, 5),
              child: Text('Хочу обменять'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Container(
                    width: 65,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color(0xfff5f5dc),
                        border: Border.all(),
                        borderRadius: const BorderRadius.all(Radius.circular(10))),
                    child: TextField(
                      maxLines: 1,
                      controller: _firstFromController,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(30))),
                        fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                        contentPadding: EdgeInsets.zero,
                        hintText: 'Введите сумму',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                flex: 3,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                    child: firstDropdownButtonWidget()),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  secondRowWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.fromLTRB(8, 5, 0, 5),
              child: Text('Вы получите'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Container(
                    alignment: Alignment.center,
                    width: 65,
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color(0xfff5f5dc),
                        border: Border.all(),
                        borderRadius: const BorderRadius.all(Radius.circular(10))),
                    child: Text(
                      '${secondRateResult?.toStringAsFixed(4) ?? 0}',
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                flex: 3,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                    child: secondDropdownButtonWidget()),
              ),
            ]),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 5, 0, 5),
              child: (secondRate != null)
                  ? Text(
                      'Это валюта ${first ?? 0} ${firstCurrency ?? 'Нет валюты'} = это моя ${secondRate?.toStringAsFixed(4) ?? 0}${secondCurrency.toString() ?? ''}')
                  : const Text(''),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white60,
      body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 550,
              width: 450,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const Expanded(
                    flex: 1,
                    child: Text(
                      'Конвертер валют',
                      style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color(0xffD8ECFF),
                              border: Border.all(color: Colors.transparent),
                              borderRadius: const BorderRadius.all(Radius.circular(10))),
                          child: firstRowWidget()),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color(0xffF6DEFE),
                              border: Border.all(color: Colors.transparent),
                              borderRadius: const BorderRadius.all(Radius.circular(10))),
                          child: secondRowWidget()),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
