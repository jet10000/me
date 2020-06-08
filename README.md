django

- https://www.djangoproject.com/
- https://www.django-rest-framework.org/

fastapi

- https://github.com/tiangolo/fastapi
- https://github.com/tortoise/tortoise-orm
- https://github.com/frankie567/fastapi-users

tailwindcss & getskeleton

- https://tailwindcss.com/
- http://getskeleton.com/

Docs & static site

- https://www.divio.com/blog/what-nobody-tells-you-about-documentation/
- https://squidfunk.github.io/mkdocs-material/
- https://gohugo.io/documentation/
- https://github.com/wowthemesnet/mundana-theme-jekyll

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

NS

- https://docs.nativescript.org/core-concepts/technical-overview

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

flutter

- https://honesdev.com/flutter-authentication-with-bloc-architecture/
- https://medium.com/@gaspard.merten/a-simple-guide-about-flutter-dart-and-asynchronous-programming-a96d9930136c
- https://github.com/felangel/fresh
- https://www.digitalocean.com/community/tutorials/flutter-futures-and-streams-dart

kubernetes

- https://kubernetes.io/docs/concepts/
- https://microk8s.io/

docker & docker-compose

- https://docs.docker.com/
- https://docs.docker.com/compose/

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
