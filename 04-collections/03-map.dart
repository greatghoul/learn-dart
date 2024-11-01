void main() {
  Map<String, String> countryCapital = {'China': 'Beijing', 'America': 'Washington D.C.', 'Australia': 'Canberra'};

  print('The capital of China is ${countryCapital['China']}');
  print('all keys of map: ${countryCapital.keys}');
  print('all keys of map to list: ${countryCapital.keys.toList()}');
  print('all values of map: ${countryCapital.values}');
  print('all values of map to list: ${countryCapital.values.toList()}');
  print('is map empty: ${countryCapital.isEmpty}');
  print('is map not empty: ${countryCapital.isNotEmpty}');
  print('length of the map: ${countryCapital.length}');

  countryCapital['Japan'] = 'Tokyo';
  print('after add: $countryCapital');

  countryCapital['America'] = 'Nothing';
  print('after update: $countryCapital');

  print('contains key Japan: ${countryCapital.containsKey('Japan')}');
  print('contains key Russia: ${countryCapital.containsKey('Russia')}');
  print('contains value Washington D.C.: ${countryCapital.containsValue('Washington D.C.')}');
  print('contains value Nothing: ${countryCapital.containsValue('Nothing')}');

  print('remove America returns: ${countryCapital.remove('America')}');
  print('after remove: $countryCapital');

  countryCapital.removeWhere((key, value) => key.contains('China'));
  print('after removeWhere: $countryCapital');

  print('interate using for loop');
  for (MapEntry country in countryCapital.entries) {
    print('key: ${country.key}, value: ${country.value}');
  }

  print('iterate using forEach');
  countryCapital.forEach((key, value) {
    print('key: $key, value: $value');
  });
}
