// Author = Matthias Weigt
// Date = 30.05.2022

import 'dart:convert' show utf8;
import 'dart:convert' show json;
import 'package:http/http.dart' as http;

/// You can easily send a message to a Slack-Channel with it.
/// [message] is a String containing the message you wish to send.
/// [webhookUrl] is the url you wish to send the message to.
class SlackMessage {
  final String message;
  final String webhookUrl;
  const SlackMessage({
    required this.message,required this.webhookUrl}
  );
  /// Sends the message to the channel.
  Future<void> send() async {
    final data = {
      'text': message,
    };
    await http.post(Uri.parse(webhookUrl),
        body: utf8.encode(json.encode(data)));
  }
}