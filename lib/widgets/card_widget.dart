import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/card_text_widget.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 246, 243, 235),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const Text(
            '\$ 4,273.94',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          Text(
            'Mainwallet',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blue.shade100),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CardAndTextWidget(
                  iconData: Icons.vpn_key,
                  title: 'Send',
                  height: 5,
                ),
                CardAndTextWidget(
                  iconData: Icons.arrow_downward,
                  title: 'Recive',
                  height: 5,
                ),
                CardAndTextWidget(
                  iconData: Icons.shopping_bag,
                  title: 'Buy',
                  height: 5,
                ),
                CardAndTextWidget(
                  iconData: Icons.vpn_key,
                  title: 'Swap',
                  height: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
