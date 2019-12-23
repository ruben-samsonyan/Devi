//
// Created by Ruben Samsonyan on 20.12.19.
// Copyright (c) 2019 Ruben Samsonyan. All rights reserved.
//

import Foundation
import UIKit

public extension DeclarativeView where Self: UIView {

    @discardableResult
    func centerHorizontally(
        in container: UIView? = nil,
        constant: CGFloat = 0,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required,
        completion: (NSLayoutConstraint) -> Void = { _ in }
    ) -> Self {

        disableConstraintsTranslation()
        let constraint = centerXAnchor.activate(constraintTo: (container ?? getSuperView()).centerXAnchor,
                                                constant: constant,
                                                relatedBy: relation,
                                                priority: priority)
        completion(constraint)

        return self
    }

    @discardableResult
    func centerX(
        to xAnchor: NSLayoutXAxisAnchor,
        constant: CGFloat = 0,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required,
        completion: (NSLayoutConstraint) -> Void = { _ in }
    ) -> Self {

        disableConstraintsTranslation()
        let constraint = centerXAnchor.activate(constraintTo: xAnchor,
                                                constant: constant,
                                                relatedBy: relation,
                                                priority: priority)
        completion(constraint)

        return self
    }

    @discardableResult
    func centerVertically(
        in container: UIView? = nil,
        constant: CGFloat = 0,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required,
        completion: (NSLayoutConstraint) -> Void = { _ in }
    ) -> Self {

        disableConstraintsTranslation()
        let constraint = centerYAnchor.activate(constraintTo: (container ?? getSuperView()).centerYAnchor,
                                                constant: constant,
                                                relatedBy: relation,
                                                priority: priority)
        completion(constraint)

        return self
    }

    @discardableResult
    func centerY(
        to yAnchor: NSLayoutYAxisAnchor,
        constant: CGFloat = 0,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required,
        completion: (NSLayoutConstraint) -> Void = { _ in }
    ) -> Self {

        disableConstraintsTranslation()
        let constraint = centerYAnchor.activate(constraintTo: yAnchor,
                                                constant: constant,
                                                relatedBy: relation,
                                                priority: priority)
        completion(constraint)

        return self
    }

    @discardableResult
    func center(
        in container: UIView? = nil,
        offset: UIOffset = .zero,
        priority: UILayoutPriority = .required
    ) -> Self {

        centerHorizontally(in: container, constant: offset.horizontal, priority: priority)
            .centerVertically(in: container, constant: offset.vertical, priority: priority)
    }

}
