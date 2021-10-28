import '../models/user_model.dart';
import '../models/message_model.dart';

class MockData {
  static List<MessageModel> getMockMessages(UserModel currentUser) {
    List<MessageModel> messages = [];
    var user = UserModel(name: 'Tarso');
    for (var i = 0; i < 20; i++) {
      messages.add(MessageModel(
          user: i % 2 == 0 ? currentUser : user,
          text:
              'Oi, sou o usuário $i e estou voltando para a igreja e comendo pastel com meu irmão na esquina do motel'));
    }
    return messages;
  }
}
