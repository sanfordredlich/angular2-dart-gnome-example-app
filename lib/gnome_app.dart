library gnome_app;

import 'package:angular2/angular2.dart';
import 'package:angular2_gnome_example_app/components/gnome_conscious/gnome_conscious.dart';
import 'package:angular2_gnome_example_app/utilities/math/math.dart';
import 'package:angular2_gnome_example_app/services/data_service.dart';

@Component(
    selector: 'gnome-app'
    )
@View(
    template: '''
      <!-- react to custom events #ReactingToComponentEvents -->
      <gnome-conscious (awoke)="showFriends()" (slept)="hideFriends()"></gnome-conscious>

      <p/>

      <!--test the Elvis operator from Alpha 26: https://github.com/angular/angular/issues/791, #ElvisOperator-->
      <span>Favorite online book: {{ googleBook.data?.items?.elementAt(0)?.volumeInfo?.title }}</span>
      <p>

      <!--conditionally display a variable, #DisplayingVarsInHtml, #ShowHideDomBasedOnState-->
      <b *ng-if="moreData?.isShowFriends">The gnome is awake, let's have a party with {{moreData.count}} guests!</b>
    ''',
    directives: const [GnomeConscious, NgIf] // #NestedComponents
    )
class GnomeApp {
  DataService googleBook;
  MoreData moreData;

  GnomeApp(){
    googleBook = new DataService();
    moreData = new MoreData();
  }

  bumpGuestCount() => moreData.count += Math.doubleIt(moreData.count);

  void showFriends() {
    moreData.isShowFriends = true;
    bumpGuestCount();
  }

  void hideFriends() {
    moreData.isShowFriends = false;
  }
}

class MoreData {
  bool isShowFriends = true;
  int count = 2;
}