//
// Created by Ruben Samsonyan on 20.12.19.
// Copyright (c) 2019 Ruben Samsonyan. All rights reserved.
//

import Foundation
import UIKit

public extension DeclarativeView where Self: UIView {

    @discardableResult
    func verticalHugging(_ priority: UILayoutPriority) -> Self {
        setContentHuggingPriority(priority, for: .vertical)
        return self
    }

    @discardableResult
    func horizontalHugging(_ priority: UILayoutPriority) -> Self {
        setContentHuggingPriority(priority, for: .horizontal)
        return self
    }

    @discardableResult
    func verticalResistance(_ priority: UILayoutPriority) -> Self {
        setContentCompressionResistancePriority(priority, for: .vertical)
        return self
    }

    @discardableResult
    func horizontalResistance(_ priority: UILayoutPriority) -> Self {
        setContentCompressionResistancePriority(priority, for: .horizontal)
        return self
    }

}
