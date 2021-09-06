# ZPPRouter


分层：
>https://www.processon.com/view/link/61349476e401fd1fb6a8e880

路由设计：
![絕件C.png](https://upload-images.jianshu.io/upload_images/11285123-eea1e90a109092d5.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

注： SPM 每一个组件最终生成的都是 framwork库（可以是静态或者动态）


## 目标：
 
#### 1. 解耦

ZPPRouterCenter：
 引用所有组件 
实现ZPPRouterServiceProtocol协议


ZPPRouterService
定义组件对外协议
定义获取组件方法协议ZPPRouterServiceProtocol

#### 2. 面向组件协议
ZPPRouter 通过协议获取组件
```
public protocol JLRouteProtocol {
    
    associatedtype Item
    
    @discardableResult
    static func makeDestination() -> Item
    
    @discardableResult
    static func makeDestination(config: ((_ config: Item)-> Void)) -> Item

}

```
```
public class ZPPRouter<T>{}

extension ZPPRouter: JLRouteProtocol {}
```

## 使用示例：
1. 定义 HomeInput
```
public protocol HomeInput: UIViewController {
    
}

```

2. 实现获取方法
```
extension JLRouteProtocol where Self == ZPPRouter<HomeInput> {
    
    @discardableResult
    public static func makeDestination(config: ((HomeInput) -> Void)) -> HomeInput {
        let item = makeDestination()
        config(item)
        return item
    }
    
    @discardableResult
    public static func makeDestination() -> HomeInput {
        
        return HomeViewController()
    }
}
extension HomeViewController: HomeInput {}

```

3. 获取 HomeViewController 
```
let vc = ZPPRouter<HomeInput>.makeDestination()
```

### 推荐实践
![Zppr.png](https://upload-images.jianshu.io/upload_images/11285123-02522ac78d4192b8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![创建组件.png](https://upload-images.jianshu.io/upload_images/11285123-2497a738f1a3bf59.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![D32801F4-A7BE-4A58-AE64-3135FD99ABE9.png](https://upload-images.jianshu.io/upload_images/11285123-c9682d2d16a53d96.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![F345C78F-8FCF-46A1-9C8B-17ED3987E6F1.png](https://upload-images.jianshu.io/upload_images/11285123-3ac1004484b04861.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![3D2484F9-1395-4EC8-B57E-D9024E602354.png](https://upload-images.jianshu.io/upload_images/11285123-ea2c4d3e1b7cbf44.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![Crented by adnin on 2021728..png](https://upload-images.jianshu.io/upload_images/11285123-ff057450f14e7c58.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![dditionalsetup afterloadingtho TOw. tvpicall.png](https://upload-images.jianshu.io/upload_images/11285123-4ed0137e003e11d8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
