//
//  File.swift
//  
//
//  Created by admin on 2021/7/30.
//

import Foundation

public protocol ZPPRouterServiceProtocol {
    
    /// 获取View1
    func view1Protocol() -> View1Protocol
    
    /// 获取View2
    func view2Protocol() -> View2Protocol
}
