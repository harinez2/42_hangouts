import 'package:contacts/components/chat_message.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Flexible(
            child: ListView(
          padding: const EdgeInsets.all(8),
          reverse: true,
          children: const [
            ChatMessage(text: 'test1'),
            ChatMessage(text: 'test2'),
          ],
        )),
        const Divider(
          height: 1,
        ),
        Container(
          decoration: BoxDecoration(color: Theme.of(context).highlightColor),
          child: _buildTextInput(),
        )
      ],
    ));
  }

  final TextEditingController _textController = TextEditingController();

  void _handleSubmitted(String text) {
    _textController.clear();
    // メッセージを送信する処理をここに追加します
  }

  Widget _buildTextInput() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).highlightColor),
      child: Container(
        margin: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration: const InputDecoration.collapsed(
                  hintText: 'Send a message',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: const Icon(Icons.send),
                onPressed: () => _handleSubmitted(_textController.text),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
