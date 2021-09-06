# ZPPRouter

![絕件C.png](https://upload-images.jianshu.io/upload_images/11285123-eea1e90a109092d5.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


*注*： SPM 每一个组件最终生成的都是 framwork库 意味着组件存在命名空间（优点）


## 目标：
 
#### 1. 解耦

ZPPRouterCenter：
引用所有组件 


ZPPRouterService
定义组件对外协议
定义获取组件方法

#### 2. 面向组件协议
ZPPRouter 通过协议获取组件


## 使用示例：
1. 定义 xxxProtocol
```
public protocol xxxProtocol: UIViewController {
    
}

```

2. 实现获取方法
```
extension JLRouteProtocol where Self == ZPPRouter<xxxProtocol> {
    
    @discardableResult
    public static func makeDestination(config: ((xxxProtocol) -> Void)) -> xxxProtocol {
        let item = makeDestination()
        config(item)
        return item
    }
    
    @discardableResult
    public static func makeDestination() -> xxxProtocol {
        
        return UIViewController()
    }
}
extension UIViewController: xxxProtocol {}

```

3. 获取 UIViewController 
```
let vc = ZPPRouter<xxxProtocol>.makeDestination()
```

### 推荐实践

![mbb工程结构图.png](https://upload-images.jianshu.io/upload_images/11285123-3f32a36f92bf5b2c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![Zppr.png](https://upload-images.jianshu.io/upload_images/11285123-02522ac78d4192b8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![创建组件.png](https://upload-images.jianshu.io/upload_images/11285123-2497a738f1a3bf59.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![D32801F4-A7BE-4A58-AE64-3135FD99ABE9.png](https://upload-images.jianshu.io/upload_images/11285123-c9682d2d16a53d96.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![F345C78F-8FCF-46A1-9C8B-17ED3987E6F1.png](https://upload-images.jianshu.io/upload_images/11285123-3ac1004484b04861.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![3D2484F9-1395-4EC8-B57E-D9024E602354.png](https://upload-images.jianshu.io/upload_images/11285123-ea2c4d3e1b7cbf44.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![Crented by adnin on 2021728..png](https://upload-images.jianshu.io/upload_images/11285123-ff057450f14e7c58.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![dditionalsetup afterloadingtho TOw. tvpicall.png](https://upload-images.jianshu.io/upload_images/11285123-4ed0137e003e11d8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
