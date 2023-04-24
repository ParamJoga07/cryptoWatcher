import 'dart:async';
import 'dart:convert';
import 'package:cryptowatcher/onboarding/graph/source/coinCard.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'coinModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.transparent),
      home: CoinViewer(),
    );
  }
}

class CoinViewer extends StatefulWidget {
  @override
  _CoinViewerState createState() => _CoinViewerState();
}

class _CoinViewerState extends State<CoinViewer> {
  late Timer _timer;

  Future<List<Coin>> fetchCoin() async {
    coinList = [];
    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false'));

    if (response.statusCode == 200) {
      List<dynamic> values = [];
      values = json.decode(response.body);
      if (values.isNotEmpty) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            coinList.add(Coin.fromJson(map));
          }
        }
        setState(() {
          coinList;
        });
      }
      return coinList;
    } else {
      throw Exception('Failed to load coins');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchCoin();
    _timer =
        Timer.periodic(const Duration(seconds: 20), (timer) => fetchCoin());
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: coinList.length,
          itemBuilder: (context, index) {
            return CoinCard(
              name: coinList[index].name,
              symbol: coinList[index].symbol,
              imageUrl: coinList[index].imageUrl,
              price: coinList[index].price.toDouble(),
              change: coinList[index].change.toDouble(),
              changePercentage: coinList[index].changePercentage.toDouble(),
            );
          },
        ),
      ),
    );
  }
}
