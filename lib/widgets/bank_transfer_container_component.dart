import 'package:flutter/material.dart';

class BankTransferContainerComponent extends StatelessWidget {
  const BankTransferContainerComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.all(16),
        // height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
        ),
        // child: Center(
        //   child: Text('Widget 1'),
        // ),
        child: const Row(
          children: [
            Icon(Icons.abc),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('title'),
                  SizedBox(
                    height: 16,
                  ),
                  Text('title'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
