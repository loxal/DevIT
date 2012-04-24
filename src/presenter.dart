#library('loxal:devit');
#import('dart:html');

Element playground;
Element playgroundList;

    void changePlayground() {
    print(playground.src);
    print(playgroundList.value);
        playground.src = playgroundList.value;
    }
void main() {
         playground = document.body.query("#playground");
        playgroundList = document.body.query("#playgroundList");
    playgroundList.on.change.add((e) => changePlayground());
}