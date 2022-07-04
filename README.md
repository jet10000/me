香港药物

https://www.healthymatters.com.hk/zh/medicines-and-supplements/

中药方剂

https://www.healthymatters.com.hk/zh/chinese-medicines/

默沙东大众版

https://www.msdmanuals.cn/home

Blog

https://www.crunchydata.com/blog

Google find source

```
mac site:upload-4ever.com
```

英语学习

```
pythcarm安装插件Translation，学习英语的好工具，可读可译，而且沉侵感好
```

Mac find

```
mdfind -name typora
mdfind 'kMDItemTextContent=="*duxiu*"' -onlyin ~
```

图片颜色反转

```bash
vips invert in.jpg out.jpg # vips -l | grep invert
convert input.png -channel RGB -negate output.png # imagemagick
```

arxiv 学术

https://arxiv.org/

meilisearch

```
curl -X POST 'http://127.0.0.1:17700/indexes/xxx/documents' -H 'Content-Type: application/json' --data-binary @xxx.json

curl -X DELETE 'http://127.0.0.1:17700/indexes/xxx'
```

new!

* https://emailengine.app/
* https://umami.is/

pdf - 最重要的一步是以正确的顺序依次选择要合并的文件。然后右键 Quick Action -> Create PDF

```
/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py -o ./output1.pdf 1.pdf 2.pdf 3.pdf
```

youtube-dl 字幕

```
youtube-dl -v --embed-subs --write-auto-sub https://www.youtube.com/watch?v=ufbOHl1mmYk
```

fastapi htmx sse redis

https://github.com/vlcinsky/fastapi-sse-htmx

https://gist.github.com/lbatteau/1bc7ae630d5b7844d58f038085590f97

https://braid.org/

https://news.ycombinator.com/item?id=26265999

mac charge

```
sudo killall -STOP -c usbd
# If you want to resume the process for any reason use the following command
sudo killall -CONT usbd
```

audio

```
ffmpeg -i input.m4a -ac 1 -ab 64000 -ar 22050 output.mp3
ffmpeg -i input.m4a output.ogg
```

https://github.com/jiaaro/pydub/

elastic

```
http://127.0.0.1:5601/app/management/kibana/settings
Maximum table cell height
```

make class

https://www.attrs.org/en/stable/

Kap仅录制mac内部播放声音

https://www.youtube.com/watch?v=prUVS0HF2gU

https://github.com/ExistentialAudio/BlackHole

* 安装Kap，安装BlackHole
* Audio MIDI Setup创建一个新的Aggregate Device，仅勾选BlackHole，(或者不创建也可以，Kap直接使用BlackHole作为input）
* 再创建一个Multi-Output Device，勾选Built-in Ouput和BlackHole。接下来System Preferneces->Sound将Output设置为Multi-Output Device。还原的话，就将Multi-Output Device设置回Built-in。
* 用kap录制，设置输入音源为Aggregate Device(没有新建Aggregate Device的话，Kap直接使用BlackHole作为input）

tailwind

- https://tailwind-elements.com/

手写字

- https://www.cncc7.com/

lines to json

- http://static.decontextualize.com/lines-to-json/

Google font To SVG

https://danmarshall.github.io/google-font-to-svg-path/

Gmail api

https://smtpproto.readthedocs.io/en/latest/userguide.html#sending-mail-via-gmail

kanpo

https://www.ikanpo.jp/checkup/form/

async tasks

https://github.com/Intsights/sergeant

coin

https://github.com/Chia-Network/chia-blockchain

jmespath
```
@.*.*[]|[?contains(@, '能食') && !contains(@, '不能食') ]
```

```
打开终端并运行“ sudo pmset -a disablesleep 1”。要还原，请运行“ sudo pmset -a disablesleep 0”
```

meilisearch
```
curl -X POST 'http://127.0.0.1:7700/indexes' --data '{"uid" : "yians"}'
curl -X POST 'http://127.0.0.1:7700/indexes/yians/documents' --data @yians.json
```

本地文件夹下文本文件内容的查找和替换，使用pycharm，并且将目录设置为exclue（避免反复索引），然后ctri+alt+r进行批量跟心或者+f进行查找。不用textpipe或者python编程去处理，比较麻烦。

ffmpeg

https://github.com/kkroening/ffmpeg-python

svg editor

https://boxy-svg.com/

captcha

https://github.com/mewebstudio/captcha

数据采集

https://github.com/rushter/selectolax

https://www.python-httpx.org/

https://github.com/Tinche/aiofiles

netdata

```
brew install netdata
netdata -D
http://localhost:19999/
```

django
- https://medium.com/@kjmczk/django-manytomany-51854ad30b5e  Post-tags
- https://www.djangoproject.com/
- https://github.com/strawberry-graphql/strawberry
- https://django-ninja.rest-framework.com/
- https://github.com/jordaneremieff/djantic
- https://next-auth.js.org/tutorials/creating-a-database-adapter

fastapi

- https://github.com/tiangolo/fastapi
- https://github.com/tortoise/tortoise-orm
- https://github.com/frankie567/fastapi-users

postgresql jsonb

- https://github.com/kayak/pypika/blob/8bbea6d33421e372f6909a6f157be851f8a40468/pypika/tests/dialects/test_postgresql.py
- https://pgcasts.com/episodes/generating-json-from-sql
- https://www.postgresqltutorial.com/
- https://rudra.dev/posts/generate-beautiful-json-from-postgresql/

tailwindcss & getskeleton

- https://tailwindcss.com/
- http://getskeleton.com/
- https://github.com/picturepan2/spectre
- https://www.coltborg.com/style-a-blockquote-using-tailwind-css/
- https://javisperez.github.io/tailwindcolorshades/
- https://codechips.me/sapper-with-postcss-and-tailwind/

Docs & static site

- https://www.divio.com/blog/what-nobody-tells-you-about-documentation/
- https://squidfunk.github.io/mkdocs-material/
- https://gohugo.io/documentation/
- https://github.com/wowthemesnet/mundana-theme-jekyll

Postgres

- https://axiomq.com/blog/backup-and-restore-a-postgresql-database/
- https://www.postgresql.org/docs/9.1/app-pgdump.html

javascript

- https://medium.com/poka-techblog/simplify-your-javascript-use-map-reduce-and-filter-bd02c593cc2d

favicon

- https://favicon.io/favicon-generator/    font: Josefin Sans
- https://fonts.google.com/

monaco

- https://github.com/vanillawc/wc-monaco-editor

icons

- https://github.com/refactoringui/heroicons
- https://feathericons.com/
- https://github.com/astrit/css.gg
- https://materialdesignicons.com

sapper & svelte

- https://svelte.dev
- https://sapper.svelte.dev/
- https://www.creativebloq.com/how-to/svelte-and-sapper
- https://www.digitalocean.com/community/tutorials?q=svelte
- https://codechips.me/sapper-with-postcss-and-tailwind/

rest api

- https://kentcdodds.com/blog/replace-axios-with-a-simple-custom-fetch-wrapper

flutter

- https://flutter.dev/docs
- https://thinkdiff.net/flutter-and-dart/flutter-form-tutorial/  (form)
- https://app.quicktype.io/
- https://honesdev.com/flutter-authentication-with-bloc-architecture/
- https://medium.com/@gaspard.merten/a-simple-guide-about-flutter-dart-and-asynchronous-programming-a96d9930136c
- https://github.com/felangel/fresh
- https://www.digitalocean.com/community/tutorials/flutter-futures-and-streams-dart
- https://medium.com/@greg.perry/statefulwidgets-key-state-8ad83ac2e54f
- https://www.melvinvivas.com/flutter-listview-example-using-data-from-a-rest-api/
- https://medium.com/flutter-community/making-sense-all-of-those-flutter-providers-e842e18f45dd
- https://medium.com/teamarimac/working-with-list-of-json-objects-flutter-json-serializable-db1b6e1805aa

flutter provider state manage

- https://www.digitalocean.com/community/tutorials/flutter-state-management
- https://www.reddit.com/r/FlutterDev/comments/bmrvey/so_is_provider_recommended_over_bloc_just_watched/
- https://www.freecodecamp.org/news/provider-pattern-in-flutter/
- https://medium.com/swlh/flutter-provider-and-didchangedependencies-15678f502262
- https://medium.com/@sid.310/flutter-box-constraints-nested-column-s-row-s-3dfacada7361  nested columns

dart

- https://github.com/smartherd/DartTutorial
- https://www.digitalocean.com/community/tutorials/dart-mixins

Tendermint

- https://medium.com/aventus/tendermint-building-a-blockchain-app-from-scratch-78e3250abd0a
- https://medium.com/coinmonks/how-to-write-tendermint-applications-using-python-d8dde304e339
- https://github.com/Aventus-Network-Services/tendermint-exp

Image

- https://github.com/GoogleChromeLabs/squoosh
- https://docs.wand-py.org/

Color

- https://htmlcolorcodes.com/color-names/

NS

- https://docs.nativescript.org/core-concepts/technical-overview

PPT

- https://github.com/hakimel/reveal.js

AI

- https://hub.docker.com/r/heartexlabs/label-studio
- https://uber.github.io/ludwig/
- https://github.com/BrainJS/brain.js
- https://github.com/NaturalNode/natural

NLP

- https://python.plainenglish.io/textblob-a-package-every-python-programmer-should-know-da1f42bf4b5e

Clipboard

https://github.com/sindresorhus/copy-text-to-clipboard

Presentations

- https://github.com/hakimel/reveal.js

frontend design

- https://tabler.io/
- http://tachyons.io
- https://tocas-ui.com/
- https://github.com/philipwalton/solved-by-flexbox
- https://github.com/Spiderpig86/Cirrus
https://csslayout.io/
- https://primer.style/
- https://github.com/themesberg/volt-bootstrap-5-dashboard

frontend stuff

- https://nextjs.org/
- https://github.com/pqina/filepond 

140 colors

- https://htmlcolorcodes.com/color-names/

editor

- https://github.com/PierBover/svelte-prosemirror-example
- https://github.com/PierBover/prosemirror-cookbook
- https://prosemirror.net/docs/guide/
- https://gitlab.coko.foundation/wax/wax-prosemirror/commit/a3908026da4fdbb4669d533ff00cca83f745b127 (keymap)
- https://github.com/christianheine/prosemirror-svelte/blob/3e44e200d84ceb1c3fd3d76c74985cb7a4b275b1/examples/src/components/RIchTextEditor_104.svelte  (handlePaste)

proxy

- https://docs.proxyman.io/

tongji

- https://github.com/mikecao/umami

kubernetes

- https://kubernetes.io/docs/concepts/
- https://microk8s.io/

docker & docker-compose

- https://docs.docker.com/
- https://docs.docker.com/compose/
- https://www.saltycrane.com/blog/2019/01/how-run-postgresql-docker-mac-local-development/

yaml

- https://github.com/nodeca/js-yaml

TCM

- https://pharmacy.wikia.org/zh-tw/wiki/Traditional_Chinese_medicine%E4%B8%AD%E9%86%ABTCM
- http://cnwm.nricm.edu.tw/

Mail (SPF/DKIM)

- https://github.com/aio-libs/aiosmtpd
- https://github.com/cole/aiosmtplib
- https://russell.ballestrini.net/quickstart-to-dkim-sign-email-with-python/
- https://rspamd.com/doc/tutorials/scanning_outbound.html

hft

- https://alpaca.markets/docs/api-documentation/api-v2/
- https://medium.com/automation-generation/hft-like-trading-algorithm-in-300-lines-of-code-you-can-run-now-983bede4f13a

bitcoin

- https://stackoverflow.com/questions/13112062/which-are-the-order-matching-algorithms-most-commonly-used-by-electronic-financi
- https://medium.com/hackernoon/how-i-created-a-bitcoin-trading-algorithm-with-a-29-return-rate-using-sentiment-analysis-b0db0e777f4

typing

- https://typingchamp.com/

CryptoJS AES Encryption/Decryption

- https://cryptojs.gitbook.io/docs/
- https://qiita.com/haoyu_ma/items/3de99f59dd82e94231a9
- https://medium.com/@chingsuehok/cryptojs-aes-encryption-decryption-for-flutter-dart-7ca123bd7464

lmdb

- https://symas.com/lmdb/
- https://docs.meilisearch.com/resources/about_storage.html#lmdb
- https://www.basicml.com/performance/2019/05/18/efficiently-storing-and-retrieving-image-datasets.html

english speak

- https://engfluent.com/

bitcoin exchange

- https://medium.com/huddlofficial/how-to-take-profits-before-the-next-bitcoin-recession-d04eb7cf3dd3
- https://medium.com/huddlofficial/how-to-buy-bitcoin-at-deep-discounts-599492ba5556

puppeteer

- https://github.com/puppeteer/puppeteer
- https://www.dolthub.com/blog/2020-03-16-scraping-javascript-websites/
- https://github.com/checkly/puppeteer-examples

local cloud

- https://github.com/technomada/cloud-from-scratch

```
[ EDGE NODE VPS ]                     |               [ LAN NODE ]
                                      |               
    [Wireguard] <---------------------+-------------- [Wireguard]
         ^                            |                   ^
         |                            |                   |
         v                            |                   v
    [Caddy Reverse Proxy]             |         +----------------------------------+
                                      |         | DOCKER                           |
                                      |         |				   |
				      |		+----------------------------------+
				      |		.				   .
                                      |         .    [ ------ Caddy ---------]     .
                                      |         .        |       |        |        . 
                                      |         .        v       |        v        .
                                      |         .       [APP]    |      [APP]      . 
                                      |         .                v                 . 
                                      |         .              [APP]               . 
                                      |         .                                  . 
                                                +. . . . . . . . . . . . . . . . . +
                                               
 
         *
         * Internet  **                               ** Home Network Cloud **
```

imagemagick

```
brew install imagemmagick
mogrify -format jpg *.webp
brew install rename
rename -s .jpg.jpg .jpg *.jpg.jpg  # Replace .jpg.jpg with .jpg.png in *.jpg.jpg
```

dart smtp

```
main() async {
  var server = await SmtpServer.bind('127.0.0.1', 0);

  await for (var mailObject in server.mailObjects) {
    print(mailObject.envelope.originatorAddress);
    print(mailObject.envelope.headers.cc);
    mailObject.close(statusCode: 221, reasonPhrase: 'Bye!');
  }
}
```


```
select cuid() as id,
       name,
from dxbooks
where fenlei like '16%';
```

body backgound color

```
body {
	background: radial-gradient(17.8% 45.68% at 61.59% 7.16%,
			rgba(221, 250, 240, 0.675) 0%,
			rgba(221, 250, 240, 0) 100%), radial-gradient(27.78% 81.17% at 68.06% 67.73%,
			rgba(255, 247, 217, 0.9) 0%,
			rgba(255, 247, 217, 0) 100%), radial-gradient(33.64% 72.69% at 38.37% 95.91%,
			rgba(245, 217, 245, 0.9) 0%,
			rgba(245, 217, 245, 0) 100%), linear-gradient(180deg, #FAFAFA 0%, #FEFAFD 100%)
}
```
