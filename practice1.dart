import 'dart:math';

void main() {
  late String address;
  address = "USA";
  print("Address: $address");

  int? age = null;
  print("Age: $age");

  int handleNullInt(int? value) {
    return value ?? 0;
  }

  print("handleNullInt(null): ${handleNullInt(null)}");
  print("handleNullInt(5): ${handleNullInt(5)}");

  int? generateRandom() {
    Random random = Random();
    return random.nextBool() ? 100 : null;
  }

  int status = generateRandom() ?? 0;
  print("Status: $status");
}
