import 'dart:isolate';

void main(List<String> args) {
  print('main start');

  // 创建Isolate
  Isolate.spawn(calc, 100);

  print('main end');
}

void calc(int count) {
  var total = 0;
  for (var i = 0; i < count; i++) {
    total += i;
  }

  print(total);
}
