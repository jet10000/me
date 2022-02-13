var nodeArray = Array.from(document.querySelectorAll('a[class="bnt_book leftF"]'))
nodeArray.forEach((x, i)=>{
  var v = x.href.split('/')[1].split("'")[0]
  console.log(v)
  x.href = 'http://xxx.xxx/' + v;
  x.target = "_blank";
})
