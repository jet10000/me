**Define a Controller** for your data model:

为你的模型定义一个控制器，所以控制器是为操作模型而生的。这样来理解Controller，更好了，让我理解了Controller，以前一直不理解，一直是django的MTV思考模式，这在django中叫做model的Manager。

starlite这种model和controller的视角，对我的启示蛮大的，学习其他任何东西也是一样。过去看一本书，叫从数据操纵到计算理论。这里，应该是从模型操作操纵。这样更加稳固。因为是以model为中心的。不像fastapi，没有中心。这个starlite跟django一样，先确定模型为中心，然后围绕模型建立controlllers。然后开放给世界通过controller来操纵模型，模版和视图提供了操纵界面，api提供了操纵接口。有了model这个中心，这个目标，衍生的各种对模型的操纵，但模型本身是相对稳定的。如果不以数据模型为中心进行操纵，那么就感到无所适从。也体现了Python oop世界观的强大。

最后，Python OOP非常强大且用途广泛。在仍然允许基于函数的端点的同时，Starlite 试图通过将基于类的控制器置于其核心来构建它。

https://starlite-api.github.io/starlite/#minimal-example

