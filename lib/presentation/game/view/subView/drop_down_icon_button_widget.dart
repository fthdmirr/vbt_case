part of'../game_view.dart';


class DropDownIconButtonWidget extends StatelessWidget {
  const DropDownIconButtonWidget({Key? key, required this.viewModel})
      : super(key: key);

  final DropDownProvider viewModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<IconData>(
        value: viewModel.iconValue,
        elevation: context.lowValue.toInt(),
        onChanged: (IconData? newIcon) {
          viewModel.changeCurrentIcon(newIcon);
        },
        items: viewModel.iconList
            .map<DropdownMenuItem<IconData>>(
                (IconData iconValue) => DropdownMenuItem<IconData>(
                      value: iconValue,
                      child: Icon(iconValue),
                    ))
            .toList(),
      ),
    );
  }
}