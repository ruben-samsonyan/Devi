//
// Created by Ruben Samsonyan on 20.12.19.
// Copyright (c) 2019 Ruben Samsonyan. All rights reserved.
//

import Foundation
import UIKit

public extension DeclarativeView where Self: UIView {

    @discardableResult
    func backgroundColor(_ backgroundColor: UIColor) -> Self {
        self.backgroundColor = backgroundColor
        return self
    }

    @discardableResult
    func alpha(_ alpha: CGFloat) -> Self {
        self.alpha = alpha
        return self
    }

    @discardableResult
    func borderColor(_ borderColor: UIColor, width: CGFloat) -> Self {
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = width
        return self
    }

    @discardableResult
    func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        layer.cornerRadius = cornerRadius
        layer.masksToBounds = true
        return self
    }

    @discardableResult
    func tintColor(_ tintColor: UIColor) -> Self {
        self.tintColor = tintColor
        return self
    }

    @discardableResult
    func isHidden(_ isHidden: Bool) -> Self {
        self.isHidden = isHidden
        return self
    }

    @discardableResult
    func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }

    @discardableResult
    func contentMode(_ contentMode: UIView.ContentMode) -> Self {
        self.contentMode = contentMode
        return self
    }

    @discardableResult
    func tag(_ tag: Int) -> Self {
        self.tag = tag
        return self
    }

    @discardableResult
    func assign(to view: inout UIView) -> Self {
        view = self
        return self
    }

}

public extension DeclarativeView where Self: UIView {

    @discardableResult
    func round(withDiameter diameter: CGFloat) -> Self {
        width(diameter).height(diameter).cornerRadius(diameter / 2)
    }

    @discardableResult
    func dim(color: UIColor = .black, alpha: CGFloat = 0.5) -> Self {
        self.backgroundColor = color
        self.alpha = alpha
        return self
    }
    
}

// MARK: - Border

extension DeclarativeView where Self: UIView {
    @discardableResult
    func border(forEdges edges: UIRectEdge, color: UIColor, thickness: CGFloat) -> Self {
        addBorder(edges: edges, color: color, thickness: thickness)
        return self
    }

    private func addBorder(edges: UIRectEdge, color: UIColor, thickness: CGFloat) {
        if edges.contains(.top) || edges.contains(.all) {
            addBorder(frame: CGRect(x: 0, y: 0, width: frame.width, height: thickness),
                      color: color,
                      autoresizingMask: [.flexibleWidth, .flexibleBottomMargin])
        }
        if edges.contains(.right) || edges.contains(.all) {
            addBorder(frame: CGRect(x: frame.width - thickness, y: 0, width: thickness, height: frame.height),
                      color: color,
                      autoresizingMask: [.flexibleHeight, .flexibleLeftMargin])
        }
        if edges.contains(.bottom) || edges.contains(.all) {
            addBorder(frame: CGRect(x: 0, y: frame.height - thickness, width: frame.width, height: thickness),
                      color: color,
                      autoresizingMask: [.flexibleWidth, .flexibleTopMargin])
        }
        if edges.contains(.left) || edges.contains(.all) {
            addBorder(frame: CGRect(x: 0, y: 0, width: thickness, height: frame.height),
                      color: color,
                      autoresizingMask: [.flexibleHeight, .flexibleRightMargin])
        }
    }

    private func addBorder(frame: CGRect, color: UIColor, autoresizingMask: UIView.AutoresizingMask) {
        let border = UIView(frame: frame)
        border.backgroundColor = color
        border.autoresizingMask = autoresizingMask
        addSubview(border)
    }
}

// MARK: - Shadow

public struct Shadow {
    public let color: UIColor
    public let opacity: Float
    public let offset: CGSize
    public let radius: CGFloat

    public init(color: UIColor, opacity: Float, offset: CGSize, radius: CGFloat) {
        self.color = color
        self.opacity = opacity
        self.offset = offset
        self.radius = radius
    }
}

public extension DeclarativeView where Self: UIView {
    @discardableResult
    func style(shadow: Shadow) -> UIView {
        layer.shadowColor = shadow.color.cgColor
        layer.shadowOpacity = shadow.opacity
        layer.shadowOffset = shadow.offset
        layer.shadowRadius = shadow.radius
        return self
    }
}
