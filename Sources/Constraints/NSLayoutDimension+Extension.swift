//
// Created by Ruben Samsonyan on 20.12.19.
// Copyright (c) 2019 Ruben Samsonyan. All rights reserved.
//

import Foundation
import UIKit

extension NSLayoutDimension {

    @discardableResult
    @objc func activate(
        constraintTo anchor: NSLayoutDimension,
        constant: CGFloat = 0,
        multiplier: CGFloat = 1,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required
    ) -> NSLayoutConstraint {

        let newConstraint: NSLayoutConstraint
        switch relation {
        case .lessThanOrEqual:
            newConstraint = constraint(lessThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        case .equal:
            newConstraint = constraint(equalTo: anchor, multiplier: multiplier, constant: constant)
        case .greaterThanOrEqual:
            newConstraint = constraint(greaterThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        @unknown default:
            fatalError()
        }
        newConstraint.priority = priority
        newConstraint.isActive = true

        return newConstraint
    }

    @discardableResult
    @objc func activate(
        constant: CGFloat = 0,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required
    ) -> NSLayoutConstraint {

        let newConstraint: NSLayoutConstraint
        switch relation {
        case .lessThanOrEqual:
            newConstraint = constraint(lessThanOrEqualToConstant: constant)
        case .equal:
            newConstraint = constraint(equalToConstant: constant)
        case .greaterThanOrEqual:
            newConstraint = constraint(greaterThanOrEqualToConstant: constant)
        @unknown default:
            fatalError()
        }
        newConstraint.priority = priority
        newConstraint.isActive = true

        return newConstraint
    }

}
