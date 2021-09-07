# ZPPRouter

![絕件C.png](https://upload-images.jianshu.io/upload_images/11285123-eea1e90a109092d5.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


*注*： SPM 每一个组件最终生成的都是 framwork库 意味着组件存在命名空间（优点）

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements


## Installation

AprilAlertView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ZPPRouter'
```

### Swift Package Manager

[Swift Package Manager](https://swift.org/package-manager/) is a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

> Xcode 11+ is required to build ZPPRouter using Swift Package Manager.

To integrate ZPPRouter into your Xcode project using Swift Package Manager, add it to the dependencies value of your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/ZPP506/ZPPRouter.git", .upToNextMajor(from: "0.1.1"))
]
```


## ZPPRouter 使用示例：
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

或者

ZPPRouter<xxxProtocol>.makeDestination {
   $0.view.backgroundColor = .red
}

```
Dome: 
https://github.com/ZPP506/ZPPRouter

# 推荐实践

#### ZPPRouterCenter：
1. 引用所有组件 

#### ZPPRouterService:
1. 定义组件对外协议
2. 定义获取组件方法


![mbb工程结构图.png](https://upload-images.jianshu.io/upload_images/11285123-3f32a36f92bf5b2c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
![1.png](https://upload-images.jianshu.io/upload_images/11285123-2bc874d5653589f5.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
![2.png](https://upload-images.jianshu.io/upload_images/11285123-d03fcd1762896a39.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
![3.png](https://upload-images.jianshu.io/upload_images/11285123-a5d2ad82c99deb61.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
![4.png](https://upload-images.jianshu.io/upload_images/11285123-b2d35bec74805639.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
![5.png](https://upload-images.jianshu.io/upload_images/11285123-ec76236f919661e9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
![6.png](https://upload-images.jianshu.io/upload_images/11285123-ccb9703ed21f5dc0.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
![7.png](https://upload-images.jianshu.io/upload_images/11285123-282d7f1d0d31da7d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
