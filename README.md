* django
- https://www.djangoproject.com/
- https://www.django-rest-framework.org/

* fastapi
- https://github.com/tiangolo/fastapi
- https://github.com/tortoise/tortoise-orm
- https://github.com/frankie567/fastapi-users

* tailwindcss & getskeleton
- https://tailwindcss.com/
- http://getskeleton.com/

Docs & static site

- https://www.divio.com/blog/what-nobody-tells-you-about-documentation/
- https://squidfunk.github.io/mkdocs-material/
- https://gohugo.io/documentation/
- https://github.com/wowthemesnet/mundana-theme-jekyll

Postgres

- https://axiomq.com/blog/backup-and-restore-a-postgresql-database/
- https://www.postgresql.org/docs/9.1/app-pgdump.html

favicon

- https://favicon.io/favicon-generator/
- https://fonts.google.com/

icons

- https://github.com/refactoringui/heroicons
- https://feathericons.com/
- https://github.com/astrit/css.gg

sapper & svelte

- https://svelte.dev
- https://sapper.svelte.dev/
- https://www.creativebloq.com/how-to/svelte-and-sapper

flutter

- https://flutter.dev/docs
- https://thinkdiff.net/flutter-and-dart/flutter-form-tutorial/  (form)
- https://app.quicktype.io/
- https://honesdev.com/flutter-authentication-with-bloc-architecture/
- https://medium.com/@gaspard.merten/a-simple-guide-about-flutter-dart-and-asynchronous-programming-a96d9930136c
- https://github.com/felangel/fresh
- https://www.digitalocean.com/community/tutorials/flutter-futures-and-streams-dart

NS

- https://docs.nativescript.org/core-concepts/technical-overview

PPT

- https://github.com/hakimel/reveal.js

AI

- https://uber.github.io/ludwig/

Presentations

- https://github.com/hakimel/reveal.js

frontend design

- https://tabler.io/
- http://tachyons.io
- https://tocas-ui.com/
- https://github.com/philipwalton/solved-by-flexbox

frontend framework

- https://nextjs.org/

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

lmdb

- https://symas.com/lmdb/
- https://docs.meilisearch.com/resources/about_storage.html#lmdb
- https://www.basicml.com/performance/2019/05/18/efficiently-storing-and-retrieving-image-datasets.html

english speak

- https://engfluent.com/

bitcoin exchange

- https://medium.com/huddlofficial/how-to-take-profits-before-the-next-bitcoin-recession-d04eb7cf3dd3
- https://medium.com/huddlofficial/how-to-buy-bitcoin-at-deep-discounts-599492ba5556

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
