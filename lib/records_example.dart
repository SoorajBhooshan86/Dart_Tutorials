

void recordExample(){

({int a, int b}) recordAB = (a: 1, b: 2);
({int x, int y}) recordXY = (x: 3, y: 4);
// recordAB = recordXY; //! invalid

(int a, int b) recordBC = (1, 2);
(int x, int y) recordYZ = (3, 4);

recordBC = recordYZ; //? valid.

print(recordBC);

print('------------------------');

var record = ('first', a: 2, b: true, 'last');

print(record.$1); // Prints 'first'
print(record.a); // Prints 2
print(record.b); // Prints true
print(record.$2); // Prints 'last'


print('------------------------');

(int x, int y, int z) point = (1, 2, 3);
(int r, int g, int b) color = (1, 2, 3);

print(point == color); // Prints 'true'.
({int x, int y, int z}) newPoint = (x: 1, y: 2, z: 3);
({int r, int g, int b}) newColor = (r: 1, g: 2, b: 3);

print(newPoint == newColor); // Prints 'false'. Lint: Equals on unrelated types.


print('------------------------');
}

// Returns multiple values in a record:
(String, int) userInfo(Map<String, dynamic> json) {
  return (json['name'] as String, json['age'] as int);
}

final json = <String, dynamic>{
  'name': 'Dash',
  'age': 10,
  'color': 'blue',
};

void getRecordData(){
// Destructures using a record pattern:
(String, int) user = userInfo(json);
print(user.$1);
print(user.$2);
/* Equivalent to:
  var info = userInfo(json);
  var name = info.$1;
  var age  = info.$2;
*/
}

