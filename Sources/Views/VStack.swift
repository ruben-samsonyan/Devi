//
// Created by Ruben Samsonyan on 21.12.19.
// Copyright (c) 2019 Ruben Samsonyan. All rights reserved.
//

import Foundation
import UIKit

public final class VStack: UIStackView {

    public convenience init(_ views: UIView...) {
        self.init(frame: .zero)
        super.axis = .vertical
        views.forEach(addArrangedSubview)
    }

    @available(*, unavailable)
    override public var axis: NSLayoutConstraint.Axis {
        didSet {}
    }
    
}
