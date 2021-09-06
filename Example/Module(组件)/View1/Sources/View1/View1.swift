

import UIKit
import ZPPRouterService

class View1: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .green
        let v2 = ZPPRouterService.pp.view2Protocol()
        print(v2)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
}

