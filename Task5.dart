void main() {
  print(country);
  country['Argentina'] = 'Buenos Aires';
  print(country);
  country.remove('United States');
  print(country);
  if (country.containsKey('Japan')) {
    print("capital of japan is ${country['Japan']}");
  }
  print("Number of countries is ${country.length}");
}

Map country = {
  'Egypt': 'Cairo',
  'United States': 'Washington',
  'Japan': 'Tokyo',
  'France': 'Paris',
  'Germany': 'Berlin',
  'United Kingdom': 'London',
  'Italy': 'Rome',
  'Spain': 'Madrid',
  'Russia': 'Moscow',
};
