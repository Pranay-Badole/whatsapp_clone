class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatar;

  ChatModel(this.name, this.time, this.message, this.avatar);
}

List<ChatModel> dummyData = [
  ChatModel(
      "Robin",
      "11:23 AM",
      "I can't do that because Facebook.",
      "https://picsum.photos/id/237/200"),
  ChatModel(
      "Heya",
      "01:30 PM",
      "I can't do that because next is empty.",
      "https://picsum.photos/id/203/200"),
  ChatModel(
      "Binchu",
      "11:23 AM",
      "I can't do that because Monday worst thing ever and my trouser leg is obsolete.",
      "https://picsum.photos/id/222/200"),
  ChatModel(
      "ktal",
      "11:23 AM",
      "I can't do that because this is a gift from God and my desk is empty.",
      "https://picsum.photos/id/340/200"),
  ChatModel(
      "katie",
      "11:23 AM",
      "You want to know about your life.",
      "https://picsum.photos/id/260/200"),
];
