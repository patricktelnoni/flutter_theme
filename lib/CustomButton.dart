import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  final String textData;
  const CustomButton(
    {
      super.key,
      required this.textData,
    });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () => {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(textData),
                    duration: Duration(seconds: 1),
                  ),
                )
              },
              child: Text(textData),
              style: Theme.of(context).textButtonTheme.style,
          )
        ],
      ),
    );
  }

}