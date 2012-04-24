#library('dp:uitest');
#import('dart:html');

class TestSuite {
  ButtonElement run;

  void attachMainButton() {
      final DivElement root = document.body.query('#uiTest');
      run = new Element.html('<button style="position: absolute; top: 1em; right: 1em;">Run UI Tests</button>');
      document.body.nodes.add(run);
      run.on.click.add((e) => testFirst());
  }

  TestSuite() {
    attachMainButton();
  }
}

testFirst() {
  print(document.body.query('#gwt-uid-13').value);
  document.body.query('input.gwt-TextBox').value = 'test VALUE';
  final ButtonElement button = document.body.query('button.gwt-Button');
  button.click();
}

main() {
  final TestSuite testSuite = new TestSuite();
}