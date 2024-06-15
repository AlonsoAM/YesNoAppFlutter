import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.5),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: const Text(
            'que tal?',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        _ImageBubble(),
        const SizedBox(height: 10)
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
        child: Image.network(
            'https://yesno.wtf/assets/yes/9-6403270cf95723ae4664274db51f1fd4.gif',
        width: size.width * 0.7,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            height: 150,
            width: size.width * 0.7,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
        height: 150,));
  }
}
