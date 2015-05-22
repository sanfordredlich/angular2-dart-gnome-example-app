library gnome_app;

import 'package:angular2/angular2.dart';
import 'package:gnome_tutorial/sleepy/sleepy.dart';

@Component(
  selector: 'gnome-app'
  )
@View(
  template: '<button (click)="sleepy.sleep()">Sleep</button>'
  )
class GnomeApp {
  var sleepy = new Sleepy();
}