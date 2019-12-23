//
// Created by Ruben Samsonyan on 21.12.19.
// Copyright (c) 2019 Ruben Samsonyan. All rights reserved.
//

import Foundation
import UIKit

public extension DeclarativeView where Self: UIStackView {

    @discardableResult
    func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.axis = axis
        return self
    }

    @discardableResult
    func distribution(_ distribution: UIStackView.Distribution) -> Self {
        self.distribution = distribution
        return self
    }

    @discardableResult
    func alignment(_ alignment: UIStackView.Alignment) -> Self {
        self.alignment = alignment
        return self
    }

    @discardableResult
    func spacing(_ spacing: CGFloat) -> Self {
        self.spacing = spacing
        return self
    }

    @discardableResult
    @available(iOS 11.0, *)
    func customSpacing(_ customSpacing: CGFloat, after: UIView) -> Self {
        self.setCustomSpacing(customSpacing, after: after)
        return self
    }

    @discardableResult
    func addArrangedSubview(_ view: UIView) -> Self {
        addArrangedSubview(view)
        return self
    }

    @discardableResult
    func addArrangedSubview(_ views: UIView...) -> Self {
        views.forEach(addArrangedSubview)
        return self
    }

}
