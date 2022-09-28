# protobuf and grpc



面向协议编程



https://buf.build/blog



```
brew install buf
brew install protobuf
```

https://github.com/google/protobuf.dart/tree/master/protoc_plugin

```
dart pub global activate protoc_plugin
nano -w .zshrc
export PATH="$PATH":"$HOME/.pub-cache/bin"
```



```
cd buf-tour/start
touch buf.gen.yaml
```



```
version: v1
plugins:
  - name: python
    out: gen/proto/python
  - name: dart
    out: gen/proto/dart
```

```
buf build
```

https://www.velotio.com/engineering-blog/grpc-implementation-using-python

python asyncio grpc

https://github.com/vmagamedov/grpclib

https://github.com/vmagamedov/grpclib/tree/master/examples/helloworld

aiohttp

https://dev.to/caelinsutch/building-a-grpc-server-and-client-in-dart-3ahm

https://gonuclei.com/resources/flutter-with-grpc-made-easy

flutter web grpc

https://stackoverflow.com/questions/59558293/can-grpc-be-integrated-into-flutter-web

envoyproxy

https://blog.envoyproxy.io/envoy-and-grpc-web-a-fresh-new-alternative-to-rest-6504ce7eb880

https://github.com/grpc/grpc-dart

grpc 产生 json api

https://github.com/grpc-ecosystem/grpc-gateway

grpc在flutter中的问题是，flutter编译成web的pwa时，grpc目前只能用grpc-web和envoyprox代理。GrpcWebClientChannel

https://github.com/sigurdm/grpc_web_flutter_example

https://stackoverflow.com/questions/59558293/can-grpc-be-integrated-into-flutter-web



https://github.com/fengsp/django-grpc-framework



flutter websocket例子

https://github.com/HiroshiMiyashita/flutter_websocket_chat_sample



