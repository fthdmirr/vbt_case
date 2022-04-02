part of '../game_view.dart';

class InfoIconButtonWidget extends StatelessWidget {
  const InfoIconButtonWidget({Key? key, required this.content})
      : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => showDialog(
          context: context,
          builder: (context) =>
              CustomAlertDialog(title: 'Info', content: content)),
      icon: const Icon(Icons.info),
      iconSize: context.dynamicHeight(3.25),
    );
  }
}
