import 'dart:io';
// const version = '1.0.0';
// void main(List<String> arguments) {
//   if (arguments.isEmpty) {
//     print('hello, World!');
//   } else if (arguments.first == 'version') {
//     print('Dartpedia CLI version is $version');
//   }
// }
const version = '0.0.1'; // Add this line

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('dartpedia cli version $version');
  } else if (arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void printUsage() {
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'",
  );
}

void searchWikipedia(List<String>? arguments) {
  print('searchWikipedia received arguments: $arguments');
}
