@TestOn("browser") // only run this test in a browser, otherwise ignore it
@Timeout(const Duration(seconds: 2)) // timeout async tests after only two seconds rather than the 30sec default

import 'dart:async';

import 'package:test/test.dart';
import 'package:angular2/angular2.dart';
import 'package:angular2_gnome_example_app/components/gnome_conscious/gnome_conscious.dart';

import 'package:angular2/src/facade/collection.dart' show StringMapWrapper;
//import 'package:angular2/src/reflection/reflection.dart' show reflector;
//import 'package:angular2/src/reflection/reflection_capabilities.dart' show ReflectionCapabilities;
//import 'package:angular2/test_lib.dart' hide expect;
//import 'package:angular2/src/di/injector.dart' show Injector;
//import 'package:angular2/src/test_lib/test_injector.dart';
//import 'package:angular2/di.dart' show Inject, Injector, Injectable, InjectLazy, InjectPromise;

main() {
  GnomeConscious gnomeConscious;
  //Injector injector;

  // this won't be needed in a later version of Angular
  //reflector.reflectionCapabilities = new ReflectionCapabilities();

  setUp(() {
    gnomeConscious = new GnomeConscious();
    //injector = Injector.resolveAndCreate([TestComponentBuilder]);
  });

  group('test of the model, no need for a browser', () {

    // test model updates
    test('wake should set isSleeping false', () {
      gnomeConscious.wake();
      expect(gnomeConscious.isSleeping, equals(false));
    });

    test('sleep should set isSleeping true', () {
      gnomeConscious.sleep();
      expect(gnomeConscious.isSleeping, equals(true));
    });
  });

  //#TestAsyncWithExpectAsync
  group('test the component events using expectAsync, needs a browser', () {

    // use expectAsync to test that events are emitted by the component
    test('wake should emit an "awoke" Event', () {
      gnomeConscious.awoke.listen(expectAsync((event) {
        expect(event.type, equals('awoke'));
      }, count: 1));

      gnomeConscious.wake();
    });

    test('sleep should emit a null event on the "slept" Stream', () {
      gnomeConscious.sleptEmitter.listen(expectAsync((event) {
        expect(event, equals(null));
      }, count: 1));

      gnomeConscious.sleep();
    });
  });

  //#TestAsyncWithAsyncAwait
  group('test asynchronous events using async/await', () {

    // uses async/await to test asynchronous events
    test('snore() should return multiple z', () async {
      Stream snore = gnomeConscious.snoring(6);
      var concat = await snore.join();
      expect(concat, equals("zzzzzz"));
    });
  });

  //#TestComponentBuilder
//  group('test component dom changes using TestComponentBuilder', () {
//
//    // watch for changes to the DOM
//    test('sleeping gnome shows wake button', () {
//          print('YOYOYOYO2');
//          inject([TestComponentBuilder], (TestComponentBuilder testBed) async {
//            var childTestEls = (await testBed.createAsync(GnomeConscious)).queryAll(By.css('.sleep'));
//            expect(childTestEls[0].text, equals('Sleeprr'));
//            //expect(true, equals(false));
//          }).execute(injector);
//    });
//  });
}