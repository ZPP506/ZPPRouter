

import UIKit

class View1: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
}

