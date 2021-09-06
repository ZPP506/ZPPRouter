//
//  File.swift
//
//
//  Created by admin on 2021/7/28.
//
import ZPPRouterService
import ZPPRouter
import View1
import View2
public class ZPPRouterCenter {
    public init() {}
}


// MARK: - 获取组件
extension ZPPRouterCenter: ZPPRouterServiceProtocol {
   
    /// 获取View1
    public func view1Protocol() -> View1Protocol {
        ZPPRouter<View1Protocol>.makeDestination()
    }
    
    /// 获取View2
    public func view2Protocol() -> View2Protocol {
        ZPPRouter<View2Protocol>.makeDestination()
    }
    
}
