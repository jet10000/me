django

- https://www.djangoproject.com/
- https://www.django-rest-framework.org/

fastapi

- https://github.com/tiangolo/fastapi
- https://github.com/tortoise/tortoise-orm
- https://github.com/frankie567/fastapi-users

postgresql jsonb

- https://github.com/kayak/pypika/blob/8bbea6d33421e372f6909a6f157be851f8a40468/pypika/tests/dialects/test_postgresql.py
- https://pgcasts.com/episodes/generating-json-from-sql
- https://www.postgresqltutorial.com/

tailwindcss & getskeleton

- https://tailwindcss.com/
- http://getskeleton.com/
- https://www.coltborg.com/style-a-blockquote-using-tailwind-css/
- https://javisperez.github.io/tailwindcolorshades/

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
- https://medium.com/@greg.perry/statefulwidgets-key-state-8ad83ac2e54f

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

140 colors

- https://htmlcolorcodes.com/color-names/

editor

- https://github.com/PierBover/svelte-prosemirror-example
- https://github.com/PierBover/prosemirror-cookbook
- https://prosemirror.net/docs/guide/
- https://gitlab.coko.foundation/wax/wax-prosemirror/commit/a3908026da4fdbb4669d533ff00cca83f745b127 (keymap)
- https://github.com/christianheine/prosemirror-svelte/blob/3e44e200d84ceb1c3fd3d76c74985cb7a4b275b1/examples/src/components/RIchTextEditor_104.svelte  (handlePaste)

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
