void main() {
  // Count how many vowels are in a given string.
  String input = "hello world";
  Set<String> vowels = {'a', 'e', 'i', 'o', 'u'};
  var x = input.split('').where((x) => vowels.contains(x));
  print(x.length);
  print('------------------------');
  //////////////////////////////////////////////
  // Given a list of numbers, double each value and print the result.
  List<int> nums = [1, 2, 3];
  print(nums.map((e) => e * 2).toList());
  ///////////////////////////////////////////
  // Given a number as string, sum all its digits using reduce.
  String number = "453";
  print(
    "sum of digits = ${number.split('').map((e) => int.parse(e)).reduce((a, b) => a + b)}",
  );
  ////////////////////////////////////////
  // Given a string of words, print the unique words. // بدون تكرار
  String sentence = "apple banana apple mango banana";
  print(sentence.split(' ').toSet().toList());
  ////////////////////////////////////////
  // Count how many times each word appears.
  String s = "hi hello hi bye hello";
  var words = s.split(' ');
  Map wordsMap = {};
  for (var word in words) {
    wordsMap[word] = (wordsMap[word] ?? 0) + 1;
  }
  print(wordsMap);
  ////////////////////////////////////////
  // Given a list, filter even numbers and return their sum.
  // If no even numbers, return 0.
  List<int> numbers = [1, 3, 6, 8, 11];
  var even = numbers.where((e) => e % 2 == 0);
  var sumEvens = even.isNotEmpty ? even.reduce((a, b) => a + b) : 0;
  print(sumEvens);
  ////////////////////////////////////
  // Reverse a string and convert it to uppercase.
  String word = "flutter";
  print(word.toUpperCase().split('').reversed.join());
  /////////////////////////
  // Filter null or empty strings and join with dash.
  List<String?> names = ["Ali", null, "Sara", "", "Omar"];
  print(names.where((e) => e != null && e != '').join(' - '));
}
