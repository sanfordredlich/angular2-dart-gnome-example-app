library gnome_conscious;

import 'dart:async';
import 'dart:html';
import 'package:angular2_gnome_example_app/components/gnome_pics/gnome_pics.dart';
import 'package:angular2/angular2.dart';

@Component(
    selector: 'gnome-conscious',
    // NOTE: events cannot contain upper case; the html listeners will simply fail to respond
    events: const ['awoke', 'sleptEmitter: slept'] // #EmitterNaming
    )
@View(
    template: '''
      <!-- pass the result of an expression into GnomePics, #PassingDataToSubComponents -->
      <gnome-pics [is-sleeping]="isSleeping"></gnome-pics>

      <p>

      <!-- show/hide elements based on state, react to native DOM events, #ReactingToComponentDomEvents -->
      Change the gnome's state:
      <button class="sleep" *ng-if="!isSleeping" (click)="sleep()">Sleep</button>
      <button class="wake" *ng-if="isSleeping" (click)="wake()">Wake</button>
    ''',
    directives: const [GnomePics, NgIf]
    )
class GnomeConscious {
  bool isSleeping = false;
  EventEmitter awoke;
  EventEmitter sleptEmitter;

  GnomeConscious() {
    awoke = new EventEmitter();
    sleptEmitter = new EventEmitter();
  }

  void sleep() {
    isSleeping = true;
    // when just triggering a listener, sending null works, or could send a value
    sleptEmitter.add(null);
  }

  void wake() {
    isSleeping = false;
    // if you need to set cancelable or bubbling, you can send an event
    awoke.add(new Event('awoke'));
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
