# django islands 开发模式

* django输出静态模版和内容
* htmx和服务器沟通请求islands组建
* alpinejs，以及svelte等可以用来实现islands组建
* hyperscript用来修饰客户端
* pyscript用于生成图表
* unpoly提供更多客户端功能（例如图层、动画）

htmx 是我向大多数 Web 应用程序推荐的主要技术：您使用基于 HTML 的属性驱动服务器交互，并保持在 HTML 模型中。非常简单，您可以完成很多工作（请参阅 https://htmx.org/examples ）

hyperscript 是一个用于进行纯前端脚本的更具推测性的项目。它是面向事件的，因此与 htmx （具有广泛的事件模型： https ://htmx.org/reference/#events ）配合得非常好，当我想做纯粹客户端的事情时，我会使用它。如果您愿意，可以将其视为 jQuery 的现代替代品。

我不会用超脚本构建整个应用程序，而是会用它来用轻量级前端代码修饰现有应用程序。

https://gdevops.gitlab.io/tuto_htmx/faqs/faqs.html

islands

https://fresh.deno.dev/docs/concepts/architechture

https://www.patterns.dev/posts/islands-architecture/
