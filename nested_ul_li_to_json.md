由gpt生成

因为要把markdown写的*即ul/li转成json对象，然后导入到django的tree。

先用markdown整理
```markdown
* 123
  * 1212
    * dasffasdf
      * dafsfasdf
  * 1212
  * asdfasfd
    * dsfasfd
* 456
```

再 https://markdowntohtml.com/ 生成html

然后由html生成json对象，最后将json对象导入django生成tree



```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<script>
    function parseNode(node) {
        var result = {};
        if (node.tagName === 'LI') {
            result.text = node.firstChild.nodeValue.trim();
            var childUl = node.querySelector('ul');
            if (childUl) {
                result.children = parseList(childUl);
            }
        }
        return result;
    }

    function parseList(list) {
        var result = [];
        for (var i = 0; i < list.children.length; i++) {
            result.push(parseNode(list.children[i]));
        }
        return result;
    }

    function parseHtml(htmlString) {
        var parser = new DOMParser();
        var htmlDoc = parser.parseFromString(htmlString, 'text/html');
        var rootList = htmlDoc.querySelector('ul');
        return parseList(rootList);
    }

    // 示例HTML内容
    var htmlContent = '<ul><li>Item 1</li><li>Item 2<ul><li>Subitem 1</li><li>Subitem 2<ul><li>Sub-subitem 1</li><li>Sub-subitem 2</li></ul></li></ul></li><li>Item 3</li></ul>';

    // 解析HTML内容并转换成JSON对象
    var jsonObj = parseHtml(htmlContent);

    // 输出JSON对象
    console.log(JSON.stringify(jsonObj));
</script>
</body>
</html>

```
