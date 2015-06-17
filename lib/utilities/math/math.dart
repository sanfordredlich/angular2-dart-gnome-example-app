library math;

import 'package:angular2/di.dart';

@Injectable() // mark so IDE tooling will show this class as available to the dependency injector
class Math {
  // simple code intentions can be simply stated
  static int doubleIt(int i) => 2 * i;
  int quadrupleIt(int i) => 4 * i;
}

