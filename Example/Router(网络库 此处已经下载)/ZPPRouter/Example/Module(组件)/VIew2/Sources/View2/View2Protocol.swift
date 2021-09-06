//
//  File.swift
//  
//
//  Created by admin on 2021/9/6.
//

import UIKit
import ZPPRouter
import JLRouterService

extension JLRouteProtocol where Self == JLRouter<View2Protocol> {
    
    @discardableResult
    public static func makeDestination(config: ((View2Protocol) -> Void)) -> View2Protocol {
        let item = makeDestination()
        config(item)
        return item
    }
    
    @discardableResult
    public static func makeDestination() -> View2Protocol {
        
        return View2()
    }
}
extension View2: View2Protocol {}
