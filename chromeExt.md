chrome extension开发

```
var text = document.getSelection().toString();

var range = document.getSelection().getRangeAt(0); //0代表第一个选择，firefox一些浏览器允许多个选择。
var sound = document.createElement('audio');
sound.controls = 'controls'
sound.src = 'https://cloudfile.gd2.qingstor.com/audio/398.mp3';
sound.type = 'audio/mpeg';
range.collapse(false);  //放置到选择文本的末尾
range.insertNode(sound);

https://javascript.plainenglish.io/how-to-work-with-selection-cursor-175dfe7d8be6

https://stackoverflow.com/questions/60181235/how-to-insert-node-at-the-end-of-the-range

https://stackoverflow.com/questions/37735208/create-audio-element-dynamically-in-javascript

https://bytenote.net/article/142957116011839489

https://javascript.plainenglish.io/how-to-send-data-between-chrome-extension-scripts-1182ce67b659
```
