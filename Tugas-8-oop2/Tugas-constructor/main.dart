import 'employee.dart';

main(List<String> args) {
  var employee01 = new employee.id("12");
  var employee02 = new employee.name("Fedrick Sulaiman");
  var employee03 = new employee.department("Technology");

  print(employee01.id);
  print(employee02.name);
  print(employee03.department);
}
