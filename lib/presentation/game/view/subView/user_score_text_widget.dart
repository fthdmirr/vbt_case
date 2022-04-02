part of '../game_view.dart';

class UserScoreTextWidget extends StatelessWidget {
  const UserScoreTextWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Text('${user.score}',
        style: context.textTheme.headline6
            ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600));
  }
}
