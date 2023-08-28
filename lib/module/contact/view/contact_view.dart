import 'package:flutter/material.dart';

import '../../../utility/theme/constant.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadiusCircular),
        color: Colors.grey[900],
      ),
    );
  }
}
