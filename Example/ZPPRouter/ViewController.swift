//
//  ViewController.swift
//  ZPPRouter
//
//  Created by ZPP506 on 09/06/2021.
//  Copyright (c) 2021 ZPP506. All rights reserved.
//

import UIKit
import ZPPRouterService

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let v2 = ZPPRouterService.pp.view2Protocol()
        v2.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        view.addSubview(v2)
        
        
        let v1 = ZPPRouterService.pp.view1Protocol()
        v1.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        view.addSubview(v1)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

