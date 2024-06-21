import 'package:slash_homepage/features/data/data_source.dart';

String toCamelCase (String sectionName) {
  String camelCaseSectionName ;
  List<String> words = sectionName.split(' ');
  camelCaseSectionName = words.first.toLowerCase();
  for (int i = 1; i < words.length; i++) {
    if (words[i].isNotEmpty) {
      String capitalizedWord = words[i][0].toUpperCase() + words[i].substring(1).toLowerCase();
      camelCaseSectionName += capitalizedWord;
    }
  }
  return camelCaseSectionName;
}

 Future <List<Map<String,dynamic>>> getItemsList (String sectionName) async {
  sectionName = toCamelCase(sectionName);
  Map<String, dynamic> data = await parseItemsFromFile();
  List<dynamic> sectionListDyanmic = data[sectionName];
  List<Map<String,dynamic>> sectionList = sectionListDyanmic.map((item) {return item as Map<String, dynamic>;}).toList();
  return sectionList; 
}