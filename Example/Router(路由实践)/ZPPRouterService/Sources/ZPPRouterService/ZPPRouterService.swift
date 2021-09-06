//
//  File.swift
//
//
//  Created by admin on 2021/7/28.
//
import UIKit

public class ZPPRouterService {
    
    public static var pp: ZPPRouterServiceProtocol!
    
    public static func bindle(seavice: ZPPRouterServiceProtocol) {
        ZPPRouterService.pp = seavice
    }
}
