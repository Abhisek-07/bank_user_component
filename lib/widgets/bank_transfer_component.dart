import 'package:bank_user_component/widgets/bank_transfer_container_component.dart';
import 'package:flutter/material.dart';

class BankTransferComponent extends StatelessWidget {
  const BankTransferComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          // Flexible(
          //   child: Container(
          //     padding: const EdgeInsets.all(16),
          //     // height: 100,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(16),
          //       border: Border.all(
          //         color: Colors.black,
          //         width: 1.0,
          //       ),
          //     ),
          //     // child: Center(
          //     //   child: Text('Widget 1'),
          //     // ),
          //     child: const Row(
          //       children: [
          //         Icon(Icons.abc),
          //         SizedBox(
          //           width: 16,
          //         ),
          //         Expanded(
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             mainAxisAlignment: MainAxisAlignment.start,
          //             mainAxisSize: MainAxisSize.min,
          //             children: [
          //               Text('title'),
          //               SizedBox(
          //                 height: 16,
          //               ),
          //               Text('title'),
          //             ],
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          BankTransferContainerComponent(),
          SizedBox(width: 16.0), // Adjust the spacing as needed
          Container(
            width: 20,
            color: Colors.grey, // Adjust the color of the divider as needed
            height: 1, // Adjust the height of the divider as needed
          ),
          SizedBox(width: 16.0), // Adjust the spacing as needed
          BankTransferContainerComponent(),
        ],
      ),
    );
  }
}
