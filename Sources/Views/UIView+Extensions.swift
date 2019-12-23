//
// Created by Ruben Samsonyan on 21.12.19.
// Copyright (c) 2019 Ruben Samsonyan. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {

    convenience init(builder: (UIView) -> Void) {
        self.init()
        builder(self)
    }

}