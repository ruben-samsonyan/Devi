//
// Created by Ruben Samsonyan on 20.12.19.
// Copyright (c) 2019 Ruben Samsonyan. All rights reserved.
//

import Foundation
import UIKit

public extension DeclarativeView where Self: UIView {

    @discardableResult
    func leading(
        _ constant: CGFloat = 0,
        toLeadingOf view: HasAnchors? = nil,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required,
        completion: (NSLayoutConstraint) -> Void = { _ in }
    ) -> Self {

        disableConstraintsTranslation()
        let constraint = leadingAnchor.activate(constraintTo: (view ?? getSuperView()).leadingAnchor,
                                                constant: constant,
                                                relatedBy: relation,
                                                priority: priority)
        completion(constraint)

        return self
    }

    @discardableResult
    func top(
        _ constant: CGFloat = 0,
        toTopOf view: HasAnchors? = nil,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required,
        completion: (NSLayoutConstraint) -> Void = { _ in }
    ) -> Self {

        disableConstraintsTranslation()
        let constraint = topAnchor.activate(constraintTo: (view ?? getSuperView()).topAnchor,
                                    constant: constant,
                                    relatedBy: relation,
                                    priority: priority)
        completion(constraint)

        return self
    }

    @discardableResult
    func trailing(
        _ constant: CGFloat = 0,
        toTrailingOf view: HasAnchors? = nil,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required,
        completion: (NSLayoutConstraint) -> Void = { _ in }
    ) -> Self {

        disableConstraintsTranslation()
        let constraint = trailingAnchor.activate(constraintTo: (view ?? getSuperView()).trailingAnchor,
                                            constant: -constant,
                                            relatedBy: relation,
                                            priority: priority)
        completion(constraint)

        return self
    }

    @discardableResult
    func bottom(
        _ constant: CGFloat = 0,
        toBottomOf view: HasAnchors? = nil,
        relatedBy relation: NSLayoutConstraint.Relation = .equal,
        priority: UILayoutPriority = .required,
        completion: (NSLayoutConstraint) -> Void = { _ in }
    ) -> Self {

        disableConstraintsTranslation()
        let constraint = bottomAnchor.activate(constraintTo: (view ?? getSuperView()).bottomAnchor,
                                                 constant: -constant,
                                                 relatedBy: relation,
                                                 priority: priority)
        completion(constraint)

        return self
    }

    // MARK: - Boundary constraints

    @discardableResult
    func padding(_ insets: EdgeInsets = .zero, useSafeArea: Bool = false) -> Self {

        topPadding(insets.top, useSafeArea: useSafeArea)
            .trailingPadding(insets.trailing, useSafeArea: useSafeArea)
            .bottomPadding(insets.bottom, useSafeArea: useSafeArea)
            .leadingPadding(insets.leading, useSafeArea: useSafeArea)
    }

    @discardableResult
    func padding(top: CGFloat? = nil, leading: CGFloat? = nil, bottom: CGFloat? = nil, trailing: CGFloat? = nil, useSafeArea: Bool = false) -> Self {
        padding(.make(top: top, leading: leading, bottom: bottom, trailing: trailing), useSafeArea: useSafeArea)
    }

    private func topPadding(_ constant: CGFloat?, useSafeArea: Bool = false) -> Self {
        constant.map { top($0, toTopOf: getAnchorHolder(useSafeArea: useSafeArea)) } ?? self
    }

    private func trailingPadding(_ constant: CGFloat?, useSafeArea: Bool = false) -> Self {
        constant.map { trailing($0, toTrailingOf: getAnchorHolder(useSafeArea: useSafeArea)) } ?? self
    }

    private func bottomPadding(_ constant: CGFloat?, useSafeArea: Bool = false) -> Self {
        constant.map { bottom($0, toBottomOf: getAnchorHolder(useSafeArea: useSafeArea)) } ?? self
    }

    private func leadingPadding(_ constant: CGFloat?, useSafeArea: Bool = false) -> Self {
        constant.map { leading($0, toLeadingOf: getAnchorHolder(useSafeArea: useSafeArea)) } ?? self
    }

    private func getAnchorHolder(useSafeArea: Bool) -> HasAnchors {
        let superview = getSuperView()
        if #available(iOS 11, *) {
            return useSafeArea ? superview.safeAreaLayoutGuide : superview
        } else {
            return superview
        }
    }

}
