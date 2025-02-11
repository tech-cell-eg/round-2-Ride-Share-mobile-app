class TipsModel {
  final String title;
  bool isSelected;

  TipsModel({
    required this.title,
    this.isSelected = false,
  });
}

List<TipsModel> tips = [
  TipsModel(
    title: r'$1',
  ),
  TipsModel(
    title: r'$2',
  ),
  TipsModel(
    title: r'$3',
  ),
  TipsModel(
    title: r'$4',
  ),
  TipsModel(
    title: r'$5',
  ),
];
