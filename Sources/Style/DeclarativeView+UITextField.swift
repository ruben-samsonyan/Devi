//
// Created by Ruben Samsonyan on 21.12.19.
// Copyright (c) 2019 Ruben Samsonyan. All rights reserved.
//

import Foundation
import UIKit

public extension DeclarativeView where Self: UITextField {

    @discardableResult
    func attributedText(_ attributedText: NSAttributedString) -> Self {
        self.attributedText = attributedText
        return self
    }

    @discardableResult
    func textColor(_ textColor: UIColor) -> Self {
        self.textColor = textColor
        return self
    }

    @discardableResult
    func font(_ font: UIFont) -> Self {
        self.font = font
        return self
    }

    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.textAlignment = textAlignment
        return self
    }

    @discardableResult
    func borderStyle(_ borderStyle: UITextField.BorderStyle) -> Self {
        self.borderStyle = borderStyle
        return self
    }

    @discardableResult
    func defaultTextAttributes(_ defaultTextAttributes: [NSAttributedString.Key : Any]) -> Self {
        self.defaultTextAttributes = defaultTextAttributes
        return self
    }

    @discardableResult
    func placeholder(_ placeholder: String) -> Self {
        self.placeholder = placeholder
        return self
    }

    @discardableResult
    func attributedPlaceholder(_ attributedPlaceholder: NSAttributedString) -> Self {
        self.attributedPlaceholder = attributedPlaceholder
        return self
    }

    @discardableResult
    func clearsOnBeginEditing(_ clearsOnBeginEditing: Bool) -> Self {
        self.clearsOnBeginEditing = clearsOnBeginEditing
        return self
    }

    @discardableResult
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }

    @discardableResult
    func minimumFontSize(_ minimumFontSize: CGFloat) -> Self {
        self.minimumFontSize = minimumFontSize
        return self
    }

    @discardableResult
    func delegate(_ delegate: UITextFieldDelegate) -> Self {
        self.delegate = delegate
        return self
    }

    @discardableResult
    func background(_ background: UIImage) -> Self {
        self.background = background
        return self
    }

    @discardableResult
    func disabledBackground(_ disabledBackground: UIImage) -> Self {
        self.disabledBackground = disabledBackground
        return self
    }

    @discardableResult
    func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> Self {
        self.allowsEditingTextAttributes = allowsEditingTextAttributes
        return self
    }

    @discardableResult
    func typingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]) -> Self {
        self.typingAttributes = typingAttributes
        return self
    }

    @discardableResult
    func clearButtonMode(_ clearButtonMode: UITextField.ViewMode) -> Self {
        self.clearButtonMode = clearButtonMode
        return self
    }

    @discardableResult
    func leftView(_ leftView: UIView) -> Self {
        self.leftView = leftView
        return self
    }

    @discardableResult
    func leftViewMode(_ leftViewMode: UITextField.ViewMode) -> Self {
        self.leftViewMode = leftViewMode
        return self
    }

    @discardableResult
    func rightView(_ rightView: UIView) -> Self {
        self.rightView = rightView
        return self
    }

    @discardableResult
    func rightViewMode(_ rightViewMode: UITextField.ViewMode) -> Self {
        self.rightViewMode = rightViewMode
        return self
    }

    @discardableResult
    func inputView(_ inputView: UIView) -> Self {
        self.inputView = inputView
        return self
    }

    @discardableResult
    func inputAccessoryView(_ inputAccessoryView: UIView) -> Self {
        self.inputAccessoryView = inputAccessoryView
        return self
    }

    @discardableResult
    func clearsOnInsertion(_ clearsOnInsertion: Bool) -> Self {
        self.clearsOnInsertion = clearsOnInsertion
        return self
    }


}
