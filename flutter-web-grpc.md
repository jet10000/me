



```
{
	order grpc_web before reverse_proxy
}

localhost:443 {
	grpc_web
	reverse_proxy h2c://127.0.0.1:50055 {
		header_up te "trailers"
		header_down access-control-expose-headers "custom-header-1,grpc-status,grpc-message"
	}
	tls internal
}

```

https://github.com/damondouglas/fs-auth-example/blob/main/frontend/lib/api.dart

GrpcOrGrpcWebClientChannel 和 token认证

https://github.com/vmagamedov/grpclib/tree/master/examples

Mtgs 和 hellworld以及streaming, reflection

https://docs.servicestack.net/grpc-flutter#flutter-protoc-grpc-ssl-example

Websocket django get token django-sesame

https://websockets.readthedocs.io/en/stable/howto/django.html

https://django-sesame.readthedocs.io/en/stable/howto.html



```
localhost:443 {
	reverse_proxy http://127.0.0.1:9000
	tls internal
}
```



flutter必须树立f(state)=ui的思维。也就是PageManager.func(PageControls.state)=PageUI

先写Manger，从定义pagemanger入手，然后再考虑ui的build。类似flet的page.update对状态进行更新。state自然根据build更新ui。这样就可以个_callRPC这中函数从ui中抽离到manger里来。state决定ui，state根据manger的fucntion决定ui，ui根据build生成。面向状态编程，状态由manger管理。

```
aioframework.com

message Table

service TableService:
	rpc CreateTable (Request on return)
	rpc DeleteTable (Request on return)
	rpc FilterTable (Request on return)


table_servcie = TableService()
table_servcie.CreateTable(name='asdfsd', fileds=['fafa'])


```



```
pyhton websockets库启示如何使用django orm（django.setup())
flet启示如何通过page.update更新app state再更新ui。以及启示page是views的容器，以及view是虚拟page。
flet启示可以写桌面app像聊天框。
grpc启示蓝图的设计。
grpc-web可以由web专程grpc请求。
flutter state manager 极简方案启示state管理的manger方式。
caddy和envoy结合可以启示https到grpc的安全。
GrpcOrGrpcWebClientChannel启示客户端和web端请求的client设置，以及envoy的yaml设定让grpc可以token认证，并且如何使用metadata。
buf.build启示对proto文件的管理（暂没使用）
connect.build启示可以有个caddy-connect的方案。
flutter结合grpc可以写ubuntu桌面，写supabase，写prisma，利用protos抽象一切。
postman可以调试grpc，并且可以导入curl，而curl可以由浏览器复制。

go语言 struct 实现func，就如同typsript的class 和impl。以及starlite的model和control

django-sesame的gettoken用于token认证

DebugProfile.entitlements   Release.entitlements 修改这两个文件，添加一下内容，让flutter grpc可以使用网络。

<key>com.apple.security.network.client</key>
  <true/

aiortc用于视频聊天
```

更改字体

https://www.jianshu.com/p/f799724b7a36

Flutter 桌面启动应用程序窗口大小

https://stackoverflow.com/questions/61451163/how-to-set-default-size-of-macos-app-in-flutter


桑木崇秀，分类法，再关联条文和症状
