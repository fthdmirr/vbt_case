import '../../presentation/game/model/user_model.dart';
import '../extensions/assets_extensions.dart';

class DummyUsers {
  static DummyUsers? _instance;
  static DummyUsers get instance=>_instance ?? DummyUsers._init();

   DummyUsers._init();

   final user1 = User('Fatih', 'user1'.toJpg, 75);
   final user2 = User('Demir', 'user2'.toJpg, 50);

}
