//
//  File.swift
//
//
//  Created by admin on 2021/7/28.
//
import UIKit

public class JLRouterService {
    
    public static var jl: JLRouterServiceProtocol!
    
    public static func bindle(seavice: JLRouterServiceProtocol) {
        JLRouterService.jl = seavice
    }
}
