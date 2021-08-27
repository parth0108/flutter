// import 'package:flutter/material.dart';
//
// import 'package:firebase_database/ui/firebase_animated_list.dart';
//
// import 'message.dart';
//
// class FireBaseExmple extends StatefulWidget {
//   @override
//   _FireBaseExmpleState createState() => _FireBaseExmpleState();
// }
//
// class _FireBaseExmpleState extends State<FireBaseExmple> {
//   final messageDao = MessageDao();
//   void _sendMessage() {
//     if (_canSendMessage()) {
//       final message = Message(_messageController.text, DateTime.now());
//       widget.messageDao.saveMessage(message);
//       _messageController.clear();
//       setState(() {});
//     }
//   }
//   Widget _getMessageList() {
//     return Expanded(
//       child: FirebaseAnimatedList(
//         controller: _scrollController,
//         query: widget.messageDao.getMessageQuery(),
//         itemBuilder: (context, snapshot, animation, index) {
//           final json = snapshot.value as Map<dynamic, dynamic>;
//           final message = Message.fromJson(json);
//           return MessageWidget(message.text, message.date);
//         },
//       ),
//     );
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Column(
//         children: [
//           TextField(
//             decoration: InputDecoration(
//               hintText: ' Enter Here ',
//             ),
//           ),
//           ElevatedButton(onPressed: () {}, child: Text('Send Data'))
//         ],
//       )),
//     );
//   }
// }
