//
//  File.swift
//  
//
//  Created by admin on 2021/9/6.
//

import UIKit
import ZPPRouter
import JLRouterService
extension JLRouteProtocol where Self == JLRouter<View1Protocol> {
    
    @discardableResult
    public static func makeDestination(config: ((View1Protocol) -> Void)) -> View1Protocol {
        let item = makeDestination()
        config(item)
        return item
    }
    
    @discardableResult
    public static func makeDestination() -> View1Protocol {
        
        return View1()
    }
}
extension View1: View1Protocol {}
