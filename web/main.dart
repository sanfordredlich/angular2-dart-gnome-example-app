import 'package:angular2/angular2.dart';
import 'package:angular2/src/reflection/reflection.dart' show reflector;
import 'package:angular2/src/reflection/reflection_capabilities.dart' show ReflectionCapabilities;
import 'package:gnome_tutorial/sleepy/sleepy.dart';
import 'package:gnome_tutorial/gnome_app.dart';

void main() {
  new Sleepy().wake();

  // this won't be needed in a later version of Angular
  reflector.reflectionCapabilities = new ReflectionCapabilities();

  // boostrap Angular
  bootstrap(GnomeApp);
}