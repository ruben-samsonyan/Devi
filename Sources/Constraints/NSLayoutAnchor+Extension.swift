//
//  NSLayoutAnchor+Extension.swift
//  Devi
//
//  Created by Ruben Samsonyan on 20.12.19.
//  Copyright © 2019 Ruben Samsonyan. All rights reserved.
//
import UIKit

extension NSLayoutAnchor {

    @discardableResult
    @objc func activate(
        constraintTo anchor: NSLayoutAnchor<AnchorType>,
        constant: CGFloat = 0,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required
    ) -> NSLayoutConstraint {

        let newConstraint: NSLayoutConstraint
        switch relation {
        case .lessThanOrEqual:
            newConstraint = constraint(lessThanOrEqualTo: anchor, constant: constant)
        case .equal:
            newConstraint = constraint(equalTo: anchor, constant: constant)
        case .greaterThanOrEqual:
            newConstraint = constraint(greaterThanOrEqualTo: anchor, constant: constant)
        @unknown default:
            fatalError()
        }
        newConstraint.priority = priority
        newConstraint.isActive = true

        return newConstraint
    }

}
