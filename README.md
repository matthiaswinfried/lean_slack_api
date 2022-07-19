## Lean Slack Messenger
This is a very lean package consistent of only one class to send a SlackMessage via http request to
a webhook url.

## Usage


```dart
/// Sends a message to a channel in Slack.
SlackMessage(message:'new message....',webhookUrl:'YOUR SLACK APP WEBHOOK URL').send();
``