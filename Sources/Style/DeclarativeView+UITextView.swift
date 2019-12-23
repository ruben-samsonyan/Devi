//
// Created by Ruben Samsonyan on 21.12.19.
// Copyright (c) 2019 Ruben Samsonyan. All rights reserved.
//

import Foundation
import UIKit

public extension DeclarativeView where Self: UITextView {

    @discardableResult
    func delegate(_ delegate: UITextViewDelegate) -> Self {
        self.delegate = delegate
        return self
    }

    @discardableResult
    func text(_ text: String) -> Self {
        self.text = text
        return self
    }

    @discardableResult
    func font(_ font: UIFont) -> Self {
        self.font = font
        return self
    }

    @discardableResult
    func textColor(_ textColor: UIColor) -> Self {
        self.textColor = textColor
        return self
    }

    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.textAlignment = textAlignment
        return self
    }

    @discardableResult
    func selectedRange(_ selectedRange: NSRange) -> Self {
        self.selectedRange = selectedRange
        return self
    }

    @discardableResult
    func isEditable(_ isEditable: Bool) -> Self {
        self.isEditable = isEditable
        return self
    }

    @discardableResult
    func isSelectable(_ isSelectable: Bool) -> Self {
        self.isSelectable = isSelectable
        return self
    }

    @discardableResult
    func dataDetectorTypes(_ dataDetectorTypes: UIDataDetectorTypes) -> Self {
        self.dataDetectorTypes = dataDetectorTypes
        return self
    }

    @discardableResult
    func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> Self {
        self.allowsEditingTextAttributes = allowsEditingTextAttributes
        return self
    }

    @discardableResult
    func attributedText(_ attributedText: NSAttributedString) -> Self {
        self.attributedText = attributedText
        return self
    }

    @discardableResult
    func typingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]) -> Self {
        self.typingAttributes = typingAttributes
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

    @discardableResult
    func textContainerInset(_ textContainerInset: UIEdgeInsets) -> Self {
        self.textContainerInset = textContainerInset
        return self
    }

    @discardableResult
    func linkTextAttributes(_ linkTextAttributes: [NSAttributedString.Key : Any]) -> Self {
        self.linkTextAttributes = linkTextAttributes
        return self
    }
    
    @discardableResult
    @available(iOS 13.0, *)
    func usesStandardTextScaling(_ usesStandardTextScaling: Bool) -> Self {
        self.usesStandardTextScaling = usesStandardTextScaling
        return self
    }

}
