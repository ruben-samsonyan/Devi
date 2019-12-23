//
// Created by Ruben Samsonyan on 20.12.19.
// Copyright (c) 2019 Ruben Samsonyan. All rights reserved.
//

import Foundation
import UIKit

public struct EdgeInsets: Hashable {

    public var top: CGFloat? // specify amount to inset (positive) for each of the edges. values can be negative to 'outset'. nil will ignore the inset
    public var leading: CGFloat?
    public var bottom: CGFloat?
    public var trailing: CGFloat?

    public init(top: CGFloat?, leading: CGFloat?, bottom: CGFloat?, trailing: CGFloat?) {
        self.top = top
        self.leading = leading
        self.bottom = bottom
        self.trailing = trailing
    }

}

public extension EdgeInsets {

    static var zero: EdgeInsets {
        EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
    }

    static func all(_ value: CGFloat) -> EdgeInsets {
        EdgeInsets(top: value, leading: value, bottom: value, trailing: value)
    }

    static func horizontal(_ value: CGFloat = 0) -> EdgeInsets {
        EdgeInsets(top: nil, leading: value, bottom: nil, trailing: value)
    }

    static func vertical(_ value: CGFloat = 0) -> EdgeInsets {
        EdgeInsets(top: value, leading: nil, bottom: value, trailing: nil)
    }

    static func make(top: CGFloat? = nil, leading: CGFloat? = nil, bottom: CGFloat? = nil, trailing: CGFloat? = nil) -> EdgeInsets {
        EdgeInsets(top: top, leading: leading, bottom: bottom, trailing: trailing)
    }

}
