import 'package:flutter/material.dart';

import '../../domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final List<Message> messagesList = [
    Message(text: 'Hola', fromWho: FromWho.me),
    Message(text: 'Ya volviste del trabajo?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messagesList.add(newMessage);
    notifyListeners();
  }
}