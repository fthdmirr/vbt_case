extension AssetsExtension on String {
  String get toPng => 'assets/images/$this.png';
  String get toJpg => 'assets/images/$this.jpg';
  String get toIcon => 'assets/icon/$this.png';
}
