class MessageModel {
  final String senderEmail;
  final String senderId;
  final String receiverId;
  final String message;
  final String timeTamp;

  MessageModel(
      {required this.senderEmail,
      required this.senderId,
      required this.receiverId,
      required this.message,
      required this.timeTamp});
      
  Map<String, dynamic> toJson() {
    return {
      'senderEmail': senderEmail,
      'senderId': senderId,
      'receiverId': receiverId,
      'message': message,
      'timeTamp': timeTamp,
    };
  }
}
