//
// Created by Ruben Samsonyan on 20.12.19.
// Copyright (c) 2019 Ruben Samsonyan. All rights reserved.
//

import Foundation
import UIKit

public extension DeclarativeView where Self: UIView {

    @discardableResult
    func width(
        equalTo view: UIView,
        constant: CGFloat = 0,
        multiplier: CGFloat = 1,
        priority: UILayoutPriority = .required,
        completion: (NSLayoutConstraint) -> Void = { _ in }
    ) -> Self {

        disableConstraintsTranslation()
        let contraint = widthAnchor.activate(constraintTo: view.widthAnchor,
                                             constant: constant,
                                             multiplier: multiplier,
                                             relatedBy: .equal,
                                             priority: priority)
        completion(contraint)

        return self
    }

    @discardableResult
    func width(

        _ constant: CGFloat,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required,
        completion: (NSLayoutConstraint) -> Void = { _ in }
    ) -> Self {
        disableConstraintsTranslation()
        let constraint = widthAnchor.activate(constant: constant,
                                              relatedBy: relation,
                                              priority: priority)
        completion(constraint)

        return self
    }

    @discardableResult
    func height(
        equalTo view: UIView,
        constant: CGFloat = 0,
        multiplier: CGFloat = 1,
        priority: UILayoutPriority = .required,
        completion: (NSLayoutConstraint) -> Void = { _ in }
    ) -> Self {

        disableConstraintsTranslation()
        let constraint = heightAnchor.activate(constraintTo: view.heightAnchor,
                                               constant: constant,
                                               multiplier: multiplier,
                                               relatedBy: .equal,
                                               priority: priority)
        completion(constraint)

        return self
    }

    @discardableResult
    func height(
        _ constant: CGFloat,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required,
        completion: (NSLayoutConstraint) -> Void = { _ in }
    ) -> Self {

        disableConstraintsTranslation()
        let constraint = heightAnchor.activate(constant: constant,
                                               relatedBy: relation,
                                               priority: priority)
        completion(constraint)

        return self
    }

    @discardableResult
    func aspectRatio(
        _ constant: CGFloat = 1.0/1.0, // height / width
        priority: UILayoutPriority = .required,
        completion: (NSLayoutConstraint) -> Void = { _ in }
    ) -> Self {

        disableConstraintsTranslation()
        let constraint = heightAnchor.activate(constraintTo: widthAnchor,
                                               multiplier: constant,
                                               priority: priority)
        completion(constraint)

        return self
    }

}