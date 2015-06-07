# Angular2 Dart Gnome Example App

## My Angular2 API cheatsheet
[Angular2 Dart cheatsheet (google doc)](https://docs.google.com/document/d/1FYyA-b9rc2UtlYyQXjW7lx4Y08MSpuWcbbuqVCxHga0/edit#heading=h.34sus6g4zss3)

## What this app demonstrates in Angular2
 - nested components (search for #NestedComponents)
 - passing data to a nested component (search for #PassingDataToSubComponents)
 - receiving DOM events from a nested component (search for #ReactingToComponentDomEvents)
 - receiving custom events from a nested component (search for #ReactingToComponentEvents)
 - displaying variables in HTML (search for #DisplayingVarsInHtml)
 - showing/hiding DOM elements based on state (search for #ShowHideDomBasedOnState)
 - testing asynchronous behavior using 
     - expectAsync (search for #TestAsyncWithExpectAsync)
     - async/await (search for #TestAsyncWithAsyncAwait)
 - from Alpha 26
     - [Elvis operator](https://github.com/angular/angular/issues/791) (search for #ElvisOperator)

## How to run the app with Dartium or any browser
 - cd to the application directory
 - pub get
 - pub serve
 - go to the url specified in the output

## How to run the tests
 - pub run test  # runs the non-browser tests
 - pub run test -p dartium  # runs all the tests using Dartium (assuming it's configured)
 
## Roadmap, stuff to add
 - testing a component with a custom HTML testbed
 - add examples of using features added in alpha 26
  - [using pipes in List of properties (no longer a map))](https://github.com/angular/angular/issues/2013); [new syntax](https://github.com/angular/angular/commit/d7df853bde30ffe97045eff649240284ae6ffdf8)
  - testing a component using TestComponentBuilder, [like this](https://github.com/angular/angular/blob/0db88f34b8ee20c5b6f926d2c92481de74d3f030/modules/angular2/test/test_lib/test_component_builder_spec.ts)
  - for Forms,
    - add a Form example using [status classes](https://github.com/angular/angular/commit/3baf815d): ["ng-binding", "ng-untouched", "ng-pristine", "ng-invalid"]
    - use ".touched" property
    - use [(ng-model)]="foo"
    - use nested find in the form '.find("nested/two").value' and '.find(["nested"], ["two"]).value'
 - per-component CSS
 - testing elements in the shadow dom
 - router integration
 - service layer using JSON
