//
// Created by Ruben Samsonyan on 20.12.19.
// Copyright (c) 2019 Ruben Samsonyan. All rights reserved.
//

import Foundation
import UIKit

public extension DeclarativeView where Self: UIView {

    @discardableResult
    func trailingMargin(
        _ constant: CGFloat = 0,
        from view: UIView,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required,
        completion: (NSLayoutConstraint) -> Void = { _ in }
    ) -> Self {

        disableConstraintsTranslation()
        let constraint = trailingAnchor.activate(constraintTo: view.leadingAnchor,
                                                constant: constant,
                                                relatedBy: relation,
                                                priority: priority)
        completion(constraint)

        return self
    }

    @discardableResult
    func leadingMargin(
        _ constant: CGFloat = 0,
        from view: UIView,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required,
        completion: (NSLayoutConstraint) -> Void = { _ in }
    ) -> Self {

        disableConstraintsTranslation()
        let constraint = leadingAnchor.activate(constraintTo: view.trailingAnchor,
                                                constant: constant,
                                                relatedBy: relation,
                                                priority: priority)
        completion(constraint)

        return self
    }

    @discardableResult
    func topMargin(
        _ constant: CGFloat = 0,
        from view: UIView,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required,
        completion: (NSLayoutConstraint) -> Void = { _ in }
    ) -> Self {

        disableConstraintsTranslation()
        let constraint = topAnchor.activate(constraintTo: view.bottomAnchor,
                                                constant: constant,
                                                relatedBy: relation,
                                                priority: priority)
        completion(constraint)

        return self
    }

    @discardableResult
    func bottomMargin(
        _ constant: CGFloat = 0,
        from view: UIView,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required,
        completion: (NSLayoutConstraint) -> Void = { _ in }
    ) -> Self {

        disableConstraintsTranslation()
        let constraint = bottomAnchor.activate(constraintTo: view.topAnchor,
                                                constant: constant,
                                                relatedBy: relation,
                                                priority: priority)
        completion(constraint)

        return self
    }

}