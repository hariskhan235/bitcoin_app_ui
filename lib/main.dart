import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/card_widget.dart';
import 'package:flutter_application_1/widgets/list_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blue,
              child: Icon(Icons.qr_code),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 5,
                  ),
                  child: MyCardWidget(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text('Tokens'),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(Icons.filter),
                        ],
                      ),
                      const CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.black,
                        child: Icon(
                          Icons.add,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: const [
                      ListItem(
                        iconData: Icons.home,
                        title: 'View4View',
                        subTitle: 'VIE',
                        amount: '1,007.567',
                        subAmount: '\$1007.24',
                        color: Colors.amber,
                      ),
                      ListItem(
                        iconData: Icons.home,
                        title: 'Binance Coin',
                        subTitle: 'BNB',
                        amount: '0.567',
                        subAmount: '\$107.24',
                        color: Colors.orange,
                      ),
                      ListItem(
                        iconData: Icons.home,
                        title: 'Bitcoin',
                        subTitle: 'BTC',
                        amount: '1,007.567',
                        subAmount: '\$1007.24',
                        color: Colors.yellow,
                      ),
                      ListItem(
                        iconData: Icons.home,
                        title: 'Etherum',
                        subTitle: 'ETH',
                        amount: '1,007.567',
                        subAmount: '\$1007.24',
                        color: Colors.black,
                      ),
                      ListItem(
                        iconData: Icons.home,
                        title: 'Litecoin',
                        subTitle: 'LTC',
                        amount: '1,007.567',
                        subAmount: '\$1007.24',
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        elevation: 2.0,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notification_add,
                color: Colors.blue,
              ),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
                color: Colors.blue,
              ),
              label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.blue,
              ),
              label: 'Settings')
        ],
      ),
    );
  }
}
