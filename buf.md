# protobuf and grpc

面向协议编程

发现grpc的起因是，学习flet过程中，发现如果不通过rest json api方式来定义，避免了既要在服务器端又要在fluter客户端定义数据形状，grpc通过直接定义protobuf来生成python和dart的数据形状和服务。这样protobuf就是剧本，而你就是制片人（导演）。这样我使用django和flutter就更简单。研究发现到目前为止flutter-web使用grpc还麻烦点，需要代理，又发现了buf.build。他们在积极开发connect-web和connect-django（未发行）。

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



