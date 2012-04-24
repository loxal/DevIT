#library('loxal:uitest');
#import('dart:html');

class TestSuite {
  ButtonElement run;
  ButtonElement exec;

  void attachMainButton() {
      final DivElement root = document.body.query('#uiTest');
      run = new Element.html('<button style="position: absolute; top: 1em; right: 1em;">Run UI Tests</button>');
      exec = new Element.html('<button style="position: absolute;">Exec</button>');
      document.body.nodes.add(run);
      document.body.nodes.add(exec);
      run.on.click.add((e) => testFirst());
      exec.on.click.add((e) => test2());


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

test2() {
    print('second');
    print(document.body.query('#gwt-debug-searchForUser'));
}

main() {
    print('init');
  final TestSuite testSuite = new TestSuite();
}