//
// Created by Ruben Samsonyan on 20.12.19.
// Copyright (c) 2019 Ruben Samsonyan. All rights reserved.
//

import Foundation
import UIKit

extension DeclarativeView where Self: UIView {

    @discardableResult
    public func add(into container: UIView) -> Self {
        container.addSubview(self)
        return self
    }

    @discardableResult
    public func disableConstraintsTranslation() -> Self {
        if translatesAutoresizingMaskIntoConstraints {
            translatesAutoresizingMaskIntoConstraints = false
        }
        return self
    }

    @discardableResult
    public func enableConstraintsTranslation() -> Self {
        if !translatesAutoresizingMaskIntoConstraints {
            translatesAutoresizingMaskIntoConstraints = true
        }
        return self
    }

    func getSuperView() -> UIView {
        guard let superview = superview else {
            fatalError("Constraint cannot be applied because view does not have a superview.")
        }
        return superview
    }

}