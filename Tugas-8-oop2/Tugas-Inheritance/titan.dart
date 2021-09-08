class Titan {
  late int _powerPoint;
  int get powerPoint => _powerPoint;

  set powerPoint(int value) =>
      value > 5 ? _powerPoint = value : _powerPoint = 5;
}
