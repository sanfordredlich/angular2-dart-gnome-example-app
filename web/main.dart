import 'package:angular2/angular2.dart';
import 'package:angular2/di.dart';
import 'package:angular2_gnome_example_app/utilities/math/math.dart';
import 'package:angular2/src/reflection/reflection.dart' show reflector;
import 'package:angular2/src/reflection/reflection_capabilities.dart' show ReflectionCapabilities;
import 'package:angular2_gnome_example_app/gnome_app.dart';

void main() {
  // this won't be needed in a later version of Angular
  reflector.reflectionCapabilities = new ReflectionCapabilities();

  // configure the dependency injector
  Injector.resolveAndCreate([Math]);

  // boostrap Angular
  bootstrap(GnomeApp);
}