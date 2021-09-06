//
//  File.swift
//
//
//  Created by ZPP on 2021/9/5.
//

import Foundation

/// 路由服务协议
public protocol ZPPRouteProtocol {
    
    associatedtype Item
    
    @discardableResult
    static func makeDestination() -> Item
    
    @discardableResult
    static func makeDestination(config: ((_ config: Item)-> Void)) -> Item

}
public extension ZPPRouteProtocol {
    
    static func makeDestination() -> Optional<Any> {
        fatalError("extension ZPPRouteProtocol where Self == ZPPRouter<xxx> is not exist static func makeDestination() -> xxx")
    }
    
    static func makeDestination(config: ((_ config: Optional<Any>)->())) -> Optional<Any>{
        fatalError("extension ZPPRouteProtocol where Self == ZPPRouter<xxx> is not exist static func makeDestination(config: ((xxx) -> ())) -> xxx")
    }

}
