class CategoryData {
  final String name;
  final String icon;

  const CategoryData({
    required this.name,
    required this.icon,
  });
}

final listCategory = [
  const CategoryData(name: 'Flash Deal', icon: 'assets/icons/Flash Icon.svg'),
  const CategoryData(name: 'Bill', icon: 'assets/icons/Bill Icon.svg'),
  const CategoryData(name: 'Game', icon: 'assets/icons/Game Icon.svg'),
  const CategoryData(name: 'Daily Gift', icon: 'assets/icons/Gift Icon.svg'),
  const CategoryData(name: 'More', icon: 'assets/icons/Discover.svg'),
];
