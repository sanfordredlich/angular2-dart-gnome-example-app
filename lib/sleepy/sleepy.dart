library sleepy;

import 'dart:html';
import 'dart:async';

class Sleepy {
  // changes the DOM
  void wake() {
    querySelector("#RipVanWinkle").text = "Wake up, sleepyhead!";
  }

  void sleep() {
    querySelector("#RipVanWinkle").text = "So sleepy...";
  }

  // uses async* to generate a Stream of "z"
  Stream<String> snoring(zCount) async* {
    int i = 0;
    while (i < zCount) {
      i++;
      yield "z";
    }
  }
}
