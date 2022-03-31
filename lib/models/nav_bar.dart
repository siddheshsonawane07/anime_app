class NavBar {
  final String path;
  final String name;

  const NavBar({required this.name, required this.path});
}

const itemsNavBar = [
  NavBar(name: "Home", path: 'assets/icons/home.svg'),
  NavBar(name: "Search", path: 'assets/icons/search.svg'),
  NavBar(name: "Favourites", path: 'assets/icons/star.svg'),
  NavBar(name: "Profile", path: 'assets/icons/user.svg'),
];
